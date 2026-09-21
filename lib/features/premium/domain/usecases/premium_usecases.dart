import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../../../payments/domain/entities/payment_entities.dart';
import '../entities/subscription.dart';
import '../repositories/premium_repository.dart';

/// الاشتراك الحالي + الباقات المتاحة.
@injectable
class GetPremiumOverview implements UseCase<PremiumOverview, NoParams> {
  final PremiumRepository repository;
  GetPremiumOverview(this.repository);

  @override
  Future<Either<Failure, PremiumOverview>> call(NoParams params) =>
      repository.getOverview();
}

/// بدء دفع اشتراك بباقة معيّنة.
@injectable
class SubscribeToPlan implements UseCase<PaymentInit, String> {
  final PremiumRepository repository;
  SubscribeToPlan(this.repository);

  @override
  Future<Either<Failure, PaymentInit>> call(String planCode) =>
      repository.subscribe(planCode: planCode);
}

/// إيقاف التجديد التلقائي.
@injectable
class CancelAutoRenew implements UseCase<PremiumOverview?, NoParams> {
  final PremiumRepository repository;
  CancelAutoRenew(this.repository);

  @override
  Future<Either<Failure, PremiumOverview?>> call(NoParams params) =>
      repository.cancelAutoRenew();
}
