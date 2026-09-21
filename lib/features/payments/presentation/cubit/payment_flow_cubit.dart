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
  ///
  /// [stale] معناه إن الرفض نفسه بيقول إن حالة المزاد على السيرفر بقت غير
  /// اللي الشاشة شايفاه (`book_sales_closed`: الوقت خلص والشاشة لسه فاتحة،
  /// `staff_not_allowed`: الدور اتغيّر). الشاشة لازم تعيد التحميل بعدها،
  /// وإلا الزرار اللي اترفض هيفضل مكانه ويترفض تاني.
  const factory PaymentFlowState.failed(
    String message, {
    @Default(false) bool stale,
  }) = PaymentFailed;

  /// السيرفر رفض لسبب المستخدم يقدر يحلّه بنفسه في شاشة تانية (BE-16):
  /// `not_eligible` → التوثيق، `commerce_register_required` → السجل التجاري.
  /// [message] رسالة الباك المترجمة، و[target] الشاشة اللي نوديه لها.
  const factory PaymentFlowState.needsAction(
    PaymentRedirect target,
    String message,
  ) = PaymentNeedsAction;

  /// توقّف من جانب العميل — الواجهة هي اللي بتترجم [issue].
  const factory PaymentFlowState.issue(PaymentFlowIssue issue) = PaymentIssue;
}

/// الشاشة اللي المستخدم محتاج يعدّي عليها قبل ما يقدر يدفع.
enum PaymentRedirect { kyc, commercialRegister }

/// أسباب التوقّف اللي بيولّدها العميل نفسه (مش السيرفر).
/// بنمرّرها كرمز مش كنص عشان الطبقة دي ما تعرفش لغة العرض.
enum PaymentFlowIssue {
  /// انتهى الاستطلاع من غير تأكيد شراء دفتر الشروط.
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

  /// السيرفر قال إن دفتر الشروط لازم يتشترى الأول (`must_purchase_book`) —
  /// نرجع خطوة لورا بدل ما نوقف المستخدم على رسالة.
  needsBookFirst,

  /// رفض حقيقي — اتعرضت رسالة الفشل أو حالة needsAction.
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

  /// رجعنا لخطوة دفتر الشروط مرة واحدة بعد `must_purchase_book` — حرس ضد
  /// تنطيط لا نهائي بين الخطوتين لو الباك فضل يرفض الاتنين.
  bool _bookStepRetried = false;

  /// flow التسجيل في مزاد (قد يمرّ ببوابتين متتاليتين):
  /// - [hasBookAccess] == false: بوابة شراء دفتر الشروط أولًا، وبعد تأكيد دفعها
  ///   ننتقل تلقائيًا لبوابة التسجيل.
  /// - [hasBookAccess] == true: بوابة التسجيل مباشرة.
  Future<void> startRegistration(String auctionId, bool hasBookAccess) async {
    _auctionId = auctionId;
    emit(const PaymentFlowState.preparing());

    if (!hasBookAccess) {
      final outcome = await _openBookGateway();
      // البوابة اتفتحت → الـ WebView هو اللي هيكمّل، أو فشل حقيقي → وقفنا.
      if (outcome != _StepOutcome.alreadyDone) return;
      // دفتر الشروط متملوك بالفعل → نعدّي للتسجيل من غير ما نوقف المستخدم.
    }

    await _openRegistrationGateway();
  }

  /// يفتح بوابة شراء دفتر الشروط.
  Future<_StepOutcome> _openBookGateway() async {
    _step = _FlowStep.buyBook;
    return _openGatewayFor(_buyBook(_auctionId));
  }

  /// يفتح بوابة التسجيل، ولو المستخدم مسجّل بالفعل بيعتبرها اكتمال.
  Future<void> _openRegistrationGateway() async {
    _step = _FlowStep.register;
    final outcome = await _openGatewayFor(_register(_auctionId));
    if (isClosed) return;

    switch (outcome) {
      case _StepOutcome.alreadyDone:
        // مسجّل بالفعل — مفيش دفع اتعمل، فما نقولش «تم الدفع».
        emit(const PaymentFlowState.alreadySettled());
      case _StepOutcome.needsBookFirst:
        // `must_purchase_book`: التطبيق كان فاهم إن دفتر الشروط متحقّق (مثلًا
        // `has_book_access` قديم في الكاش) — نرجع لخطوة دفتر الشروط مرة واحدة.
        if (_bookStepRetried) {
          emit(
            const PaymentFlowState.issue(PaymentFlowIssue.bookNotConfirmed),
          );
          return;
        }
        _bookStepRetried = true;
        emit(const PaymentFlowState.preparing());
        final outcome = await _openBookGateway();
        if (isClosed) return;
        // اتضح إنها متملوكة فعلًا → نجرّب التسجيل تاني.
        if (outcome == _StepOutcome.alreadyDone) {
          await _openRegistrationGateway();
        }
      case _StepOutcome.opened:
      case _StepOutcome.failed:
        break;
    }
  }

  /// flow الدفع النهائي للفائز — بوابة واحدة.
  Future<void> startFinalPayment(String auctionId) async {
    _auctionId = auctionId;
    _step = _FlowStep.finalPayment;
    emit(const PaymentFlowState.preparing());
    final outcome = await _openGatewayFor(_finalPayment(auctionId));
    if (outcome == _StepOutcome.alreadyDone && !isClosed) {
      // `final_already_paid` / `nothing_due` — مفيش مستحقات، مش فشل.
      emit(const PaymentFlowState.alreadySettled());
    }
  }

  /// بعد رجوع الـ WebView بنجاح: أكّد الخطوة الحالية ثم انتقل للي بعدها أو أنهِ.
  ///
  /// كل الخطوات بتتأكد بـ `payments/{ref}/status`، اللي بيقبل `gateway_ref`
  /// أو `payment id` (BE-13) — فالـ ref اللي رجع من بدء الدفع كفاية.
  ///
  /// ⚠️ مبنعتمدش على `has_book_access` من المزاد للتأكيد: الحقل بيتحدّث بعد
  /// الـ webhook، فممكن يكون لسه قديم في اللحظة اللي بنرجع فيها من البوابة.
  /// حالة الدفعة نفسها هي المصدر الوحيد.
  Future<void> confirmAfterGateway(String ref) =>
      _settle(ref, attempts: 5, gatewaySaidPaid: true);

  /// الـ WebView قفل من غير نجاح صريح: المستخدم رجع، أو صفحة البوابة فشلت
  /// في التحميل (ATS / 404 / انقطاع شبكة).
  ///
  /// ⚠️ ده **مش** دليل إن الدفع ما تمّش. الدفعة بتتأكّد بـ webhook موقّع من
  /// البوابة بره دورة الـ WebView خالص، فممكن تكون اتأكّدت والصفحة وقعت في
  /// طريق الرجوع. من غير الاستطلاع ده كنا بنقول للمستخدم «اتلغى» وهو دافع —
  /// وميعرفش غير لما يفتح التطبيق تاني. بنسأل السيرفر الأول.
  Future<void> cancel(String ref) =>
      _settle(ref, attempts: 2, gatewaySaidPaid: false);

  /// ينهي الـ flow حسب حالة الدفعة على السيرفر.
  ///
  /// [gatewaySaidPaid] بيغيّر التفسير لما الاستطلاع مايأكّدش: لو البوابة قالت
  /// نجاح يبقى فيه مشكلة حقيقية نبلّغ عنها، ولو الصفحة اتقفلت من غير نتيجة
  /// يبقى ده إلغاء عادي.
  Future<void> _settle(
    String ref, {
    required int attempts,
    required bool gatewaySaidPaid,
  }) async {
    if (isClosed) return;
    emit(const PaymentFlowState.polling());

    final confirmed = await _pollConfirmed(ref, attempts: attempts);
    if (isClosed) return;

    if (!confirmed) {
      emit(
        PaymentFlowState.issue(
          !gatewaySaidPaid
              ? PaymentFlowIssue.cancelled
              : _step == _FlowStep.buyBook
              ? PaymentFlowIssue.bookNotConfirmed
              : PaymentFlowIssue.paymentNotConfirmed,
        ),
      );
      return;
    }

    // اتأكّد شراء دفتر الشروط — ننتقل تلقائيًا لبوابة التسجيل.
    if (_step == _FlowStep.buyBook) {
      emit(const PaymentFlowState.preparing());
      await _openRegistrationGateway();
      return;
    }

    emit(const PaymentFlowState.confirmed());
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
        final code = f is ServerFailure ? f.code : null;

        // بعض حالات الرفض معناها «الخطوة دي متعمّلة خلاص» — مش عطل، بنكمّل.
        final satisfied = switch (_step) {
          _FlowStep.buyBook => PaymentRejection.isBookStepSatisfied(
            f.message,
            code: code,
          ),
          _FlowStep.register => PaymentRejection.isRegistrationSatisfied(
            f.message,
            code: code,
          ),
          _FlowStep.finalPayment => PaymentRejection.isFinalPaymentSettled(
            f.message,
            code: code,
          ),
        };
        if (satisfied) return _StepOutcome.alreadyDone;

        // بوابات الحساب: نودّي المستخدم للشاشة اللي بتحلّها بدل رسالة ميّتة.
        final redirect = switch (PaymentRejectionCodeX.fromApi(code)) {
          PaymentRejectionCode.notEligible => PaymentRedirect.kyc,
          PaymentRejectionCode.commerceRegisterRequired =>
            PaymentRedirect.commercialRegister,
          _ => null,
        };
        if (redirect != null) {
          emit(PaymentFlowState.needsAction(redirect, _msg(f)));
          return _StepOutcome.failed;
        }

        // `must_purchase_book` منطقي بس في خطوة التسجيل. برّاها (أو لو الباك
        // بعته في مكان غريب) بنعالجه كفشل عادي — يفضل أحسن من إننا نرجّع
        // نتيجة مالهاش مستقبِل ونسيب الـ flow معلّق.
        if (_step == _FlowStep.register &&
            PaymentRejectionCodeX.fromApi(code) ==
                PaymentRejectionCode.mustPurchaseBook) {
          return _StepOutcome.needsBookFirst;
        }

        // رفضين معناهم إن الشاشة نفسها بقت قديمة مش إن الخطوة فشلت.
        final stale = switch (PaymentRejectionCodeX.fromApi(code)) {
          PaymentRejectionCode.bookSalesClosed ||
          PaymentRejectionCode.staffNotAllowed => true,
          _ => false,
        };

        emit(PaymentFlowState.failed(_msg(f), stale: stale));
        return _StepOutcome.failed;
      },
      (init) {
        emit(PaymentFlowState.openGateway(init.redirectUrl, init.ref));
        return _StepOutcome.opened;
      },
    );
  }

  /// استطلاع الحالة [attempts] مرة بفاصل ثانيتين — يرجّع true لو تأكّد الدفع.
  /// لو رجعت حالة FAILED نوقف فورًا بدل ما نستنى باقي المحاولات.
  Future<bool> _pollConfirmed(String ref, {required int attempts}) async {
    for (var attempt = 0; attempt < attempts; attempt++) {
      final res = await _status(ref);
      if (isClosed) return false;
      final result = res.fold((_) => null, (r) => r);
      if (result != null) {
        if (result.allConfirmed) return true;
        if (result.hasFailed) return false;
      }
      // مفيش داعي نستنى بعد آخر محاولة — كان بيضيّف ثانيتين على كل flow.
      if (attempt < attempts - 1) {
        await Future.delayed(const Duration(seconds: 2));
      }
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
