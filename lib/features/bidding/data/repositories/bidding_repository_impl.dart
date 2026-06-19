import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/entities/bid_entities.dart';
import '../../domain/repositories/bidding_repository.dart';
import '../datasources/bidding_remote_data_source.dart';

@LazySingleton(as: BiddingRepository)
class BiddingRepositoryImpl implements BiddingRepository {
  final BiddingRemoteDataSource remote;
  BiddingRepositoryImpl(this.remote);

  @override
  Future<Either<Failure, List<BidEntry>>> getLatestBids(
    String auctionId, {
    int limit = 10,
  }) {
    return _guard(() async => (await remote.getLatestBids(auctionId, limit))
        .map((m) => m.toEntity())
        .toList());
  }

  @override
  Future<Either<Failure, PriceSnapshot>> getPrice(String auctionId) {
    return _guard(() async => (await remote.getPrice(auctionId)).toEntity());
  }

  @override
  Future<Either<Failure, Unit>> placeBid({
    required String auctionId,
    required int amount,
  }) {
    return _guard(() async {
      await remote.placeBid(auctionId, amount);
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
