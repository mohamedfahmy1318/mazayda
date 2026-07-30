import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/exceptions_mapper.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/usecase/paged.dart';
import '../../domain/entities/auction_list_item.dart';
import '../../domain/entities/auction_viewer.dart';
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
  Future<Either<Failure, Paged<AuctionListItem>>> getAuctions({
    String? query,
    String? category,
    int? wilaya,
    String? status,
    String? type,
    int page = 1,
    int perPage = 12,
  }) async {
    return _guard(() async {
      final raw = await remote.getAuctions(
        query: query,
        category: category,
        wilaya: wilaya,
        status: status,
        type: type,
        page: page,
        perPage: perPage,
      );
      return Paged<AuctionListItem>(
        items: raw.items.map((m) => m.toEntity()).toList(),
        currentPage: raw.page.currentPage,
        lastPage: raw.page.lastPage,
        total: raw.page.total,
      );
    });
  }

  @override
  Future<Either<Failure, AuctionDetail>> getAuctionById(String id) async {
    return _guard(() async {
      final raw = await remote.getAuctionById(id);
      return AuctionDetail(
        auction: raw.auction.toEntity(),
        viewer: raw.viewer?.toEntity(),
      );
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
      return Left(e.toFailure());
    } catch (_) {
      return const Left(Failure.unexpected());
    }
  }
}
