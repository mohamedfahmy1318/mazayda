import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/auction.dart';
import '../repositories/auction_repository.dart';

part 'get_auctions.freezed.dart';

/// use case: جلب قائمة المزادات.
@injectable
class GetAuctions implements UseCase<List<Auction>, GetAuctionsParams> {
  final AuctionRepository repository;
  GetAuctions(this.repository);

  @override
  Future<Either<Failure, List<Auction>>> call(GetAuctionsParams params) {
    return repository.getAuctions(
      query: params.query,
      category: params.category,
      wilaya: params.wilaya,
      status: params.status,
      type: params.type,
      page: params.page,
      perPage: params.perPage,
    );
  }
}

@freezed
class GetAuctionsParams with _$GetAuctionsParams {
  const factory GetAuctionsParams({
    String? query,
    String? category,
    int? wilaya,
    String? status,
    String? type,
    @Default(1) int page,
    @Default(12) int perPage,
  }) = _GetAuctionsParams;
}
