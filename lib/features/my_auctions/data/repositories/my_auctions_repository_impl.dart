import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/exceptions_mapper.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/entities/my_auctions_result.dart';
import '../../domain/repositories/my_auctions_repository.dart';
import '../datasources/my_auctions_remote_data_source.dart';

@LazySingleton(as: MyAuctionsRepository)
class MyAuctionsRepositoryImpl implements MyAuctionsRepository {
  final MyAuctionsRemoteDataSource remote;
  MyAuctionsRepositoryImpl(this.remote);

  @override
  Future<Either<Failure, MyAuctionsResult>> getMyAuctions(
    MyAuctionTab tab,
  ) async {
    try {
      final raw = await remote.getMyAuctions(tab.apiValue);
      return Right(
        MyAuctionsResult(
          items: raw.items.map((m) => m.toEntity()).toList(),
          tab: _tabFromApi(raw.tab, tab),
          counts: _counts(raw.counts),
        ),
      );
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

  /// السيرفر بيرجّع التبويب اللي طبّقه فعليًا (بيرجع لـ active لو القيمة
  /// المرسلة غير معروفة) — نعتمد عليه بدل ما نفترض.
  MyAuctionTab _tabFromApi(String value, MyAuctionTab fallback) =>
      MyAuctionTab.values.firstWhere(
        (t) => t.apiValue == value,
        orElse: () => fallback,
      );

  MyAuctionCounts _counts(Map<String, dynamic> raw) {
    int read(String key) => (raw[key] as num?)?.toInt() ?? 0;
    return MyAuctionCounts(
      all: read('all'),
      active: read('active'),
      won: read('won'),
      lost: read('lost'),
      upcoming: read('upcoming'),
    );
  }
}
