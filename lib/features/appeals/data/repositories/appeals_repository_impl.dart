import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/entities/appeal.dart';
import '../../domain/repositories/appeals_repository.dart';
import '../datasources/appeals_remote_data_source.dart';

@LazySingleton(as: AppealsRepository)
class AppealsRepositoryImpl implements AppealsRepository {
  final AppealsRemoteDataSource remote;
  AppealsRepositoryImpl(this.remote);

  @override
  Future<Either<Failure, List<Appeal>>> getAppeals() {
    return _guard(
      () async => (await remote.getAppeals()).map((m) => m.toEntity()).toList(),
    );
  }

  @override
  Future<Either<Failure, Unit>> submitAppeal({
    required String subject,
    required String reason,
    String? auctionId,
  }) {
    return _guard(() async {
      await remote.submitAppeal({
        'subject': subject,
        'reason': reason,
        if (auctionId != null) 'auction_id': auctionId,
      });
      return unit;
    });
  }

  Future<Either<Failure, T>> _guard<T>(Future<T> Function() action) async {
    try {
      return Right(await action());
    } on UnauthorizedException catch (e) {
      return Left(Failure.unauthorized(message: e.message));
    } on NetworkException catch (e) {
      return Left(Failure.network(message: e.message));
    } on ServerException catch (e) {
      return Left(
        Failure.server(
          message: e.message,
          statusCode: e.statusCode,
          errors: e.errors,
        ),
      );
    } catch (_) {
      return const Left(Failure.unexpected());
    }
  }
}
