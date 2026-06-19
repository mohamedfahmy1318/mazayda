import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/bid_entities.dart';
import '../repositories/bidding_repository.dart';

part 'bidding_usecases.freezed.dart';

@injectable
class GetLatestBids implements UseCase<List<BidEntry>, GetBidsParams> {
  final BiddingRepository repository;
  GetLatestBids(this.repository);
  @override
  Future<Either<Failure, List<BidEntry>>> call(GetBidsParams p) =>
      repository.getLatestBids(p.auctionId, limit: p.limit);
}

@freezed
class GetBidsParams with _$GetBidsParams {
  const factory GetBidsParams({
    required String auctionId,
    @Default(10) int limit,
  }) = _GetBidsParams;
}

@injectable
class GetPrice implements UseCase<PriceSnapshot, String> {
  final BiddingRepository repository;
  GetPrice(this.repository);
  @override
  Future<Either<Failure, PriceSnapshot>> call(String auctionId) =>
      repository.getPrice(auctionId);
}

@injectable
class PlaceBid implements UseCase<Unit, PlaceBidParams> {
  final BiddingRepository repository;
  PlaceBid(this.repository);
  @override
  Future<Either<Failure, Unit>> call(PlaceBidParams p) =>
      repository.placeBid(auctionId: p.auctionId, amount: p.amount);
}

@freezed
class PlaceBidParams with _$PlaceBidParams {
  const factory PlaceBidParams({
    required String auctionId,
    required int amount,
  }) = _PlaceBidParams;
}
