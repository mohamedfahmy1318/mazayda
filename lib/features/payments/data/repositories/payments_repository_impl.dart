import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/entities/payment_entities.dart';
import '../../domain/repositories/payments_repository.dart';
import '../datasources/payments_remote_data_source.dart';

@LazySingleton(as: PaymentsRepository)
class PaymentsRepositoryImpl implements PaymentsRepository {
  final PaymentsRemoteDataSource remote;
  PaymentsRepositoryImpl(this.remote);

  @override
  Future<Either<Failure, Unit>> acknowledgeBook(String auctionId) {
    return _guard(() async {
      await remote.acknowledgeBook(auctionId);
      return unit;
    });
  }

  @override
  Future<Either<Failure, PaymentInit>> registerInAuction(String auctionId) {
    return _guard(
        () async => (await remote.registerInAuction(auctionId)).toEntity());
  }

  @override
  Future<Either<Failure, PaymentInit>> startFinalPayment(String auctionId) {
    return _guard(
        () async => (await remote.startFinalPayment(auctionId)).toEntity());
  }

  @override
  Future<Either<Failure, List<PaymentStatus>>> getPaymentStatus(String ref) {
    return _guard(() async => (await remote.getPaymentStatus(ref))
        .map((m) => m.toEntity())
        .toList());
  }

  Future<Either<Failure, T>> _guard<T>(Future<T> Function() action) async {
    try {
      return Right(await action());
    } on UnauthorizedException catch (e) {
      return Left(Failure.unauthorized(message: e.message));
    } on NetworkException catch (e) {
      return Left(Failure.network(message: e.message));
    } on ServerException catch (e) {
      return Left(Failure.server(
        message: e.message,
        statusCode: e.statusCode,
        errors: e.errors,
      ));
    } catch (_) {
      return const Left(Failure.unexpected());
    }
  }
}
