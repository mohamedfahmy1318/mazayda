import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/entities/payment_entities.dart';
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
  const factory PaymentFlowState.confirmed() = PaymentConfirmed;
  const factory PaymentFlowState.failed(String message) = PaymentFailed;
}

/// الخطوة الحالية داخل الـ flow — نتتبّعها عشان بعد رجوع كل WebView
/// نعرف نكمّل للبوابة اللي بعدها أو نأكّد النهاية.
enum _FlowStep { buyBook, register, finalPayment }

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

    if (hasBookAccess) {
      _step = _FlowStep.register;
      await _openGatewayFor(_register(auctionId));
    } else {
      _step = _FlowStep.buyBook;
      await _openGatewayFor(_buyBook(auctionId));
    }
  }

  /// flow الدفع النهائي للفائز — بوابة واحدة.
  Future<void> startFinalPayment(String auctionId) async {
    _auctionId = auctionId;
    _step = _FlowStep.finalPayment;
    emit(const PaymentFlowState.preparing());
    await _openGatewayFor(_finalPayment(auctionId));
  }

  /// بعد رجوع الـ WebView: استطلع حالة الدفع، ثم انتقل للخطوة التالية أو أكّد.
  Future<void> confirmAfterGateway(String ref) async {
    emit(const PaymentFlowState.polling());

    final paid = await _pollConfirmed(ref);
    if (isClosed) return;
    if (!paid) {
      emit(const PaymentFlowState.failed('لم تكتمل عملية الدفع بعد'));
      return;
    }

    // لو الخطوة اللي اتأكّدت هي شراء الكراس، ننتقل تلقائيًا لبوابة التسجيل.
    if (_step == _FlowStep.buyBook) {
      _step = _FlowStep.register;
      emit(const PaymentFlowState.preparing());
      await _openGatewayFor(_register(_auctionId));
    } else {
      emit(const PaymentFlowState.confirmed());
    }
  }

  /// المستخدم أغلق الـ WebView بدون إتمام الدفع.
  void cancel() {
    if (!isClosed) emit(const PaymentFlowState.failed('تم إلغاء الدفع'));
  }

  /// ينفّذ usecase يرجّع PaymentInit ويصدر openGateway (نجاح) أو failed.
  Future<void> _openGatewayFor(
    Future<Either<Failure, PaymentInit>> operation,
  ) async {
    final res = await operation;
    if (isClosed) return;
    res.fold(
      (f) => emit(PaymentFlowState.failed(_msg(f))),
      (init) => emit(PaymentFlowState.openGateway(init.redirectUrl, init.ref)),
    );
  }

  /// استطلاع الحالة حتى 5 مرات بفاصل ثانيتين — يرجّع true لو تأكّد الدفع.
  Future<bool> _pollConfirmed(String ref) async {
    for (var attempt = 0; attempt < 5; attempt++) {
      final res = await _status(ref);
      final confirmed = res.fold(
        (_) => false,
        (rows) => rows.isNotEmpty && rows.every((r) => r.isConfirmed),
      );
      if (confirmed) return true;
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
