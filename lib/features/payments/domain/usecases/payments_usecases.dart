import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/payment_entities.dart';
import '../repositories/payments_repository.dart';

@injectable
class AcknowledgeBook implements UseCase<Unit, String> {
  final PaymentsRepository repository;
  AcknowledgeBook(this.repository);
  @override
  Future<Either<Failure, Unit>> call(String auctionId) =>
      repository.acknowledgeBook(auctionId);
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

@injectable
class GetPaymentStatus implements UseCase<List<PaymentStatus>, String> {
  final PaymentsRepository repository;
  GetPaymentStatus(this.repository);
  @override
  Future<Either<Failure, List<PaymentStatus>>> call(String ref) =>
      repository.getPaymentStatus(ref);
}
