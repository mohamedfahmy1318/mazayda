import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/entities/payment_entities.dart';
import '../../domain/entities/payment_rejection.dart';
import '../../domain/usecases/payments_usecases.dart';

part 'payment_flow_cubit.freezed.dart';

/// حالات flow الدفع — sealed union واضح لكل مرحلة.
@freezed
sealed class PaymentFlowState with _$PaymentFlowState {
  const factory PaymentFlowState.idle() = PaymentIdle;
  const factory PaymentFlowState.preparing() = PaymentPreparing;
  // افتح هذا الـ url في WebView ثم نادِ confirmAfterGateway(ref)
  const factory PaymentFlowState.openGateway(String url, String ref) =
      PaymentOpenGateway;
  const factory PaymentFlowState.polling() = PaymentPolling;

  /// دفعة اكتملت فعلًا.
  const factory PaymentFlowState.confirmed() = PaymentConfirmed;

  /// مفيش حاجة تتدفع — المستخدم مسجّل بالفعل. **مش** نفس [PaymentConfirmed]:
  /// ما ينفعش ندّعي إن دفعة تمّت وإحنا معملناش أي دفع.
  const factory PaymentFlowState.alreadySettled() = PaymentAlreadySettled;

  /// فشل جاي **من السيرفر** — الرسالة مترجمة من الباك، بنعرضها زي ما هي.
  const factory PaymentFlowState.failed(String message) = PaymentFailed;

  /// توقّف من جانب العميل — الواجهة هي اللي بتترجم [issue].
  const factory PaymentFlowState.issue(PaymentFlowIssue issue) = PaymentIssue;
}

/// أسباب التوقّف اللي بيولّدها العميل نفسه (مش السيرفر).
/// بنمرّرها كرمز مش كنص عشان الطبقة دي ما تعرفش لغة العرض.
enum PaymentFlowIssue {
  /// انتهى الاستطلاع من غير تأكيد شراء الكراسة.
  bookNotConfirmed,

  /// انتهى الاستطلاع من غير تأكيد الدفع.
  paymentNotConfirmed,

  /// المستخدم قفل بوابة الدفع.
  cancelled,
}

/// الخطوة الحالية داخل الـ flow — نتتبّعها عشان بعد رجوع كل WebView
/// نعرف نكمّل للبوابة اللي بعدها أو نأكّد النهاية.
enum _FlowStep { buyBook, register, finalPayment }

/// نتيجة محاولة فتح بوابة.
enum _StepOutcome {
  /// اتفتحت بوابة دفع — الـ WebView هيكمّل.
  opened,

  /// السيرفر رفض لأن الخطوة **متعمّلة بالفعل** — نكمّل للي بعدها.
  alreadyDone,

  /// رفض حقيقي — اتعرضت رسالة الفشل.
  failed,
}

@injectable
class PaymentFlowCubit extends Cubit<PaymentFlowState> {
  final BuyBook _buyBook;
  final RegisterInAuction _register;
  final StartFinalPayment _finalPayment;
  final GetPaymentStatus _status;

  PaymentFlowCubit(
    this._buyBook,
    this._register,
    this._finalPayment,
    this._status,
  ) : super(const PaymentFlowState.idle());

  String _auctionId = '';
  _FlowStep _step = _FlowStep.register;

  /// flow التسجيل في مزاد (قد يمرّ ببوابتين متتاليتين):
  /// - [hasBookAccess] == false: بوابة شراء كراس الشروط أولًا، وبعد تأكيد دفعها
  ///   ننتقل تلقائيًا لبوابة التسجيل.
  /// - [hasBookAccess] == true: بوابة التسجيل مباشرة.
  Future<void> startRegistration(String auctionId, bool hasBookAccess) async {
    _auctionId = auctionId;
    emit(const PaymentFlowState.preparing());

    if (!hasBookAccess) {
      _step = _FlowStep.buyBook;
      final outcome = await _openGatewayFor(_buyBook(auctionId));
      // البوابة اتفتحت → الـ WebView هو اللي هيكمّل، أو فشل حقيقي → وقفنا.
      if (outcome != _StepOutcome.alreadyDone) return;
      // الكراسة متملوكة بالفعل → نعدّي للتسجيل من غير ما نوقف المستخدم.
    }

    await _openRegistrationGateway();
  }

  /// يفتح بوابة التسجيل، ولو المستخدم مسجّل بالفعل بيعتبرها اكتمال.
  Future<void> _openRegistrationGateway() async {
    _step = _FlowStep.register;
    final outcome = await _openGatewayFor(_register(_auctionId));
    if (outcome == _StepOutcome.alreadyDone && !isClosed) {
      // مسجّل بالفعل — مفيش دفع اتعمل، فما نقولش «تم الدفع».
      emit(const PaymentFlowState.alreadySettled());
    }
  }

  /// flow الدفع النهائي للفائز — بوابة واحدة.
  Future<void> startFinalPayment(String auctionId) async {
    _auctionId = auctionId;
    _step = _FlowStep.finalPayment;
    emit(const PaymentFlowState.preparing());
    await _openGatewayFor(_finalPayment(auctionId));
  }

  /// بعد رجوع الـ WebView: أكّد الخطوة الحالية ثم انتقل للي بعدها أو أنهِ.
  ///
  /// كل الخطوات بتتأكد بـ `payments/{ref}/status` — اتحقّق من ردّ حقيقي إن
  /// buy-book بيرجّع `ref` (معرّف checkout بتاع البوابة) وإنه بيتخزّن كـ
  /// `gateway_ref` اللي الـ status بيطابق عليه.
  ///
  /// ⚠️ مبنعتمدش على `has_book_access` من المزاد للتأكيد: مسارات المزادات
  /// عامة ومش بتحلّ التوكن، فالحقل بيرجع false دايمًا للموبايل (طلب BE-15)
  /// وكان هيخلّي خطوة الكراس تفشل حتى بعد دفع ناجح.
  Future<void> confirmAfterGateway(String ref) async {
    emit(const PaymentFlowState.polling());

    if (_step == _FlowStep.buyBook) {
      final bought = await _pollConfirmed(ref);
      if (isClosed) return;
      if (!bought) {
        emit(
          const PaymentFlowState.issue(PaymentFlowIssue.bookNotConfirmed),
        );
        return;
      }
      // اتأكّد شراء الكراس — ننتقل تلقائيًا لبوابة التسجيل.
      emit(const PaymentFlowState.preparing());
      await _openRegistrationGateway();
      return;
    }

    final paid = await _pollConfirmed(ref);
    if (isClosed) return;
    if (!paid) {
      emit(
        const PaymentFlowState.issue(PaymentFlowIssue.paymentNotConfirmed),
      );
      return;
    }
    emit(const PaymentFlowState.confirmed());
  }

  /// المستخدم أغلق الـ WebView بدون إتمام الدفع.
  void cancel() {
    if (!isClosed) {
      emit(const PaymentFlowState.issue(PaymentFlowIssue.cancelled));
    }
  }

  /// ينفّذ usecase يرجّع PaymentInit ويصدر openGateway، أو يبلّغ إن الخطوة
  /// متعمّلة بالفعل، أو يفشل.
  Future<_StepOutcome> _openGatewayFor(
    Future<Either<Failure, PaymentInit>> operation,
  ) async {
    final res = await operation;
    if (isClosed) return _StepOutcome.failed;

    return res.fold(
      (f) {
        // رفض معناه «الخطوة دي متعمّلة خلاص» — مش عطل، بنكمّل.
        final code = f is ServerFailure ? f.code : null;
        final satisfied = _step == _FlowStep.buyBook
            ? PaymentRejection.isBookStepSatisfied(f.message, code: code)
            : PaymentRejection.isRegistrationSatisfied(f.message, code: code);
        if (satisfied) return _StepOutcome.alreadyDone;

        emit(PaymentFlowState.failed(_msg(f)));
        return _StepOutcome.failed;
      },
      (init) {
        emit(PaymentFlowState.openGateway(init.redirectUrl, init.ref));
        return _StepOutcome.opened;
      },
    );
  }

  /// استطلاع الحالة حتى 5 مرات بفاصل ثانيتين — يرجّع true لو تأكّد الدفع.
  /// لو رجعت حالة FAILED نوقف فورًا بدل ما نستنى باقي المحاولات.
  Future<bool> _pollConfirmed(String ref) async {
    for (var attempt = 0; attempt < 5; attempt++) {
      final res = await _status(ref);
      final result = res.fold((_) => null, (r) => r);
      if (result != null) {
        if (result.allConfirmed) return true;
        if (result.hasFailed) return false;
      }
      await Future.delayed(const Duration(seconds: 2));
    }
    return false;
  }

  String _msg(Failure f) => switch (f) {
    ServerFailure(:final message) => message,
    NetworkFailure(:final message) => message,
    UnauthorizedFailure(:final message) => message,
    UnexpectedFailure(:final message) => message,
  };
}
