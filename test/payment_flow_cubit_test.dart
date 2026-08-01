import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mazayada/core/errors/failures.dart';
import 'package:mazayada/features/payments/domain/entities/final_payment_preview.dart';
import 'package:mazayada/features/payments/domain/entities/payment_entities.dart';
import 'package:mazayada/features/payments/domain/repositories/payments_repository.dart';
import 'package:mazayada/features/payments/domain/usecases/payments_usecases.dart';
import 'package:mazayada/features/payments/presentation/cubit/payment_flow_cubit.dart';

/// repository مزيّف — بنتحكّم في `confirmed` اللي بيرجع من `/status`.
class _FakeRepo implements PaymentsRepository {
  _FakeRepo({required this.confirmed});

  final bool confirmed;
  int statusCalls = 0;

  @override
  Future<Either<Failure, PaymentInit>> registerInAuction(String auctionId) async =>
      const Right(PaymentInit(redirectUrl: 'https://gw.test/pay', ref: 'REF-1'));

  @override
  Future<Either<Failure, PaymentStatusResult>> getPaymentStatus(String ref) async {
    statusCalls++;
    return Right(
      PaymentStatusResult(ref: ref, serverConfirmed: confirmed, payments: const []),
    );
  }

  @override
  Future<Either<Failure, PaymentInit>> buyBook(String auctionId) async =>
      throw UnimplementedError();

  @override
  Future<Either<Failure, PaymentInit>> startFinalPayment(String auctionId) async =>
      throw UnimplementedError();

  @override
  Future<Either<Failure, FinalPaymentPreview>> getFinalPaymentPreview(
    String auctionId,
  ) async => throw UnimplementedError();
}

PaymentFlowCubit _cubitFor(_FakeRepo repo) => PaymentFlowCubit(
  BuyBook(repo),
  RegisterInAuction(repo),
  StartFinalPayment(repo),
  GetPaymentStatus(repo),
);

void main() {
  group('cancel() يسأل السيرفر قبل ما يعتبرها إلغاء', () {
    test('الدفعة مأكّدة على السيرفر → confirmed مش cancelled', () async {
      final repo = _FakeRepo(confirmed: true);
      final cubit = _cubitFor(repo);

      // البوابة اتقفلت من غير نجاح صريح (فشل تحميل / رجوع المستخدم).
      await cubit.cancel('REF-1');

      expect(repo.statusCalls, 1);
      expect(cubit.state, isA<PaymentConfirmed>());
      await cubit.close();
    });

    test('الدفعة لسه معلّقة → cancelled', () async {
      final repo = _FakeRepo(confirmed: false);
      final cubit = _cubitFor(repo);

      await cubit.cancel('REF-1');

      // محاولتين بس — مش بنعطّل المستخدم لما يكون فعلًا لاغي.
      expect(repo.statusCalls, 2);
      expect(
        cubit.state,
        const PaymentFlowState.issue(PaymentFlowIssue.cancelled),
      );
      await cubit.close();
    });
  });

  test('confirmAfterGateway بدون تأكيد → paymentNotConfirmed', () async {
    final repo = _FakeRepo(confirmed: false);
    final cubit = _cubitFor(repo);

    await cubit.confirmAfterGateway('REF-1');

    expect(repo.statusCalls, 5);
    expect(
      cubit.state,
      const PaymentFlowState.issue(PaymentFlowIssue.paymentNotConfirmed),
    );
    await cubit.close();
  });
}
