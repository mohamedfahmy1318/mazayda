import 'package:injectable/injectable.dart';
import '../../../../core/constants/api_constants.dart';
import '../../../../core/network/api_client.dart';
import '../models/bid_models.dart';

abstract class BiddingRemoteDataSource {
  Future<List<BidEntryModel>> getLatestBids(String auctionId, int limit);
  Future<PriceSnapshotModel> getPrice(String auctionId);
  Future<void> placeBid(String auctionId, int amount);
}

@LazySingleton(as: BiddingRemoteDataSource)
class BiddingRemoteDataSourceImpl implements BiddingRemoteDataSource {
  final ApiClient client;
  BiddingRemoteDataSourceImpl(this.client);

  @override
  Future<List<BidEntryModel>> getLatestBids(String auctionId, int limit) async {
    final data = await client.get(
      ApiConstants.auctionBids(auctionId),
      query: {'limit': limit},
    );
    return (data as List)
        .map((e) => BidEntryModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<PriceSnapshotModel> getPrice(String auctionId) async {
    final data = await client.get(ApiConstants.auctionPrice(auctionId));
    return PriceSnapshotModel.fromJson(data as Map<String, dynamic>);
  }

  @override
  Future<void> placeBid(String auctionId, int amount) async {
    // المبلغ بالدينار الكامل
    await client.post(
      ApiConstants.placeBid(auctionId),
      body: {'amount': amount},
    );
  }
}
