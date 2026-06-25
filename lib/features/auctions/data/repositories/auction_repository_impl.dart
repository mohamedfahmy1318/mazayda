import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/entities/auction.dart';
import '../../domain/repositories/auction_repository.dart';
import '../datasources/auction_remote_data_source.dart';

/// تنفيذ الـ repository:
/// - بيستدعي الـ data source.
/// - بيحوّل models لـ entities.
/// - بيمسك الـ exceptions ويحوّلها لـ Failures داخل Either.
@LazySingleton(as: AuctionRepository)
class AuctionRepositoryImpl implements AuctionRepository {
  final AuctionRemoteDataSource remote;
  AuctionRepositoryImpl(this.remote);

  @override
  Future<Either<Failure, List<Auction>>> getAuctions({
    String? query,
    String? category,
    int? wilaya,
    String? status,
    String? type,
    int page = 1,
    int perPage = 12,
  }) async {
    return _guard(() async {
      final models = await remote.getAuctions(
        query: query,
        category: category,
        wilaya: wilaya,
        status: status,
        type: type,
        page: page,
        perPage: perPage,
      );
      return models.map((m) => m.toEntity()).toList();
    });
  }

  @override
  Future<Either<Failure, Auction>> getAuctionById(String id) async {
    return _guard(() async {
      final model = await remote.getAuctionById(id);
      return model.toEntity();
    });
  }

  /// دالة مشتركة: تشغّل العملية وتحوّل أي exception لـ Failure مناسبة.
  Future<Either<Failure, T>> _guard<T>(Future<T> Function() action) async {
    try {
      final result = await action();
      return Right(result);
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
