import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/usecases/payments_usecases.dart';

part 'payment_flow_cubit.freezed.dart';

/// حالات flow الدفع — sealed union واضح لكل مرحلة.
@freezed
sealed class PaymentFlowState with _$PaymentFlowState {
  const factory PaymentFlowState.idle() = PaymentIdle;
  const factory PaymentFlowState.preparing() =
      PaymentPreparing; // acknowledge/register
  // افتح هذا الـ url في WebView ثم نادِ confirmAfterGateway(ref)
  const factory PaymentFlowState.openGateway(String url, String ref) =
      PaymentOpenGateway;
  const factory PaymentFlowState.polling() = PaymentPolling;
  const factory PaymentFlowState.confirmed() = PaymentConfirmed;
  const factory PaymentFlowState.failed(String message) = PaymentFailed;
}

@injectable
class PaymentFlowCubit extends Cubit<PaymentFlowState> {
  final AcknowledgeBook _acknowledge;
  final RegisterInAuction _register;
  final StartFinalPayment _finalPayment;
  final GetPaymentStatus _status;

  PaymentFlowCubit(
    this._acknowledge,
    this._register,
    this._finalPayment,
    this._status,
  ) : super(const PaymentFlowState.idle());

  /// flow التسجيل في مزاد: acknowledge ثم register ثم فتح البوابة.
  Future<void> startRegistration(String auctionId) async {
    emit(const PaymentFlowState.preparing());

    final ack = await _acknowledge(auctionId);
    final ackFailed = ack.isLeft();
    if (ackFailed) {
      emit(PaymentFlowState.failed(_leftMsg(ack)));
      return;
    }

    final reg = await _register(auctionId);
    reg.fold(
      (f) => emit(PaymentFlowState.failed(_msg(f))),
      (init) => emit(PaymentFlowState.openGateway(init.redirectUrl, init.ref)),
    );
  }

  /// flow الدفع النهائي للفائز.
  Future<void> startFinalPayment(String auctionId) async {
    emit(const PaymentFlowState.preparing());
    final res = await _finalPayment(auctionId);
    res.fold(
      (f) => emit(PaymentFlowState.failed(_msg(f))),
      (init) => emit(PaymentFlowState.openGateway(init.redirectUrl, init.ref)),
    );
  }

  /// بعد رجوع الـ WebView: استطلع الحالة (مع إعادة محاولة بسيطة).
  Future<void> confirmAfterGateway(String ref) async {
    emit(const PaymentFlowState.polling());

    // استطلاع حتى 5 مرات بفاصل 2 ثانية
    for (var attempt = 0; attempt < 5; attempt++) {
      final res = await _status(ref);
      final confirmed = res.fold(
        (_) => false,
        (rows) => rows.isNotEmpty && rows.every((r) => r.isConfirmed),
      );
      if (confirmed) {
        emit(const PaymentFlowState.confirmed());
        return;
      }
      await Future.delayed(const Duration(seconds: 2));
    }
    emit(const PaymentFlowState.failed('لم تكتمل عملية الدفع بعد'));
  }

  String _msg(Failure f) => switch (f) {
    ServerFailure(:final message) => message,
    NetworkFailure(:final message) => message,
    UnauthorizedFailure(:final message) => message,
    UnexpectedFailure(:final message) => message,
  };

  String _leftMsg(Either either) =>
      either.fold((f) => _msg(f as Failure), (_) => '');
}
