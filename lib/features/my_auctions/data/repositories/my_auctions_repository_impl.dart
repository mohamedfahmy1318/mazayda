import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/entities/participation.dart';
import '../../domain/repositories/my_auctions_repository.dart';
import '../datasources/my_auctions_remote_data_source.dart';

@LazySingleton(as: MyAuctionsRepository)
class MyAuctionsRepositoryImpl implements MyAuctionsRepository {
  final MyAuctionsRemoteDataSource remote;
  MyAuctionsRepositoryImpl(this.remote);

  @override
  Future<Either<Failure, List<Participation>>> getMyAuctions(
    MyAuctionTab tab,
  ) async {
    try {
      final models = await remote.getMyAuctions(tab.apiValue);
      // التحويل لـ entity حسب التبويب
      return Right(models.map((m) => m.toEntity(tab)).toList());
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
