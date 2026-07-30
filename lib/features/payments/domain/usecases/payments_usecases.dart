import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/final_payment_preview.dart';
import '../entities/payment_entities.dart';
import '../repositories/payments_repository.dart';

@injectable
class BuyBook implements UseCase<PaymentInit, String> {
  final PaymentsRepository repository;
  BuyBook(this.repository);
  @override
  Future<Either<Failure, PaymentInit>> call(String auctionId) =>
      repository.buyBook(auctionId);
}

@injectable
class RegisterInAuction implements UseCase<PaymentInit, String> {
  final PaymentsRepository repository;
  RegisterInAuction(this.repository);
  @override
  Future<Either<Failure, PaymentInit>> call(String auctionId) =>
      repository.registerInAuction(auctionId);
}

@injectable
class StartFinalPayment implements UseCase<PaymentInit, String> {
  final PaymentsRepository repository;
  StartFinalPayment(this.repository);
  @override
  Future<Either<Failure, PaymentInit>> call(String auctionId) =>
      repository.startFinalPayment(auctionId);
}

/// معاينة رسوم الدفع النهائي — الفايز فقط (غير كده 403).
@injectable
class GetFinalPaymentPreview
    implements UseCase<FinalPaymentPreview, String> {
  final PaymentsRepository repository;
  GetFinalPaymentPreview(this.repository);
  @override
  Future<Either<Failure, FinalPaymentPreview>> call(String auctionId) =>
      repository.getFinalPaymentPreview(auctionId);
}

@injectable
class GetPaymentStatus implements UseCase<PaymentStatusResult, String> {
  final PaymentsRepository repository;
  GetPaymentStatus(this.repository);
  @override
  Future<Either<Failure, PaymentStatusResult>> call(String ref) =>
      repository.getPaymentStatus(ref);
}
