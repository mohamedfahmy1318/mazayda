import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/exceptions_mapper.dart';
import '../../../../core/errors/failures.dart';
import '../../../payments/domain/entities/payment_entities.dart';
import '../../domain/entities/subscription.dart';
import '../../domain/repositories/premium_repository.dart';
import '../datasources/premium_remote_data_source.dart';

@LazySingleton(as: PremiumRepository)
class PremiumRepositoryImpl implements PremiumRepository {
  final PremiumRemoteDataSource remote;
  PremiumRepositoryImpl(this.remote);

  @override
  Future<Either<Failure, PremiumOverview>> getOverview() =>
      _guard(() async => (await remote.getOverview()).toEntity());

  @override
  Future<Either<Failure, PaymentInit>> subscribe({required String planCode}) =>
      _guard(() async => (await remote.subscribe(planCode)).toEntity());

  @override
  Future<Either<Failure, PremiumOverview?>> cancelAutoRenew() =>
      _guard(() async => (await remote.cancelAutoRenew())?.toEntity());

  Future<Either<Failure, T>> _guard<T>(Future<T> Function() action) async {
    try {
      return Right(await action());
    } on UnauthorizedException catch (e) {
      return Left(Failure.unauthorized(message: e.message));
    } on NetworkException catch (e) {
      return Left(Failure.network(message: e.message));
    } on ServerException catch (e) {
      return Left(e.toFailure());
    } catch (_) {
      return const Left(Failure.unexpected());
    }
  }
}
