import 'package:injectable/injectable.dart';
import '../../../../core/constants/api_constants.dart';
import '../../../../core/network/api_client.dart';
import '../models/auction_model.dart';

/// مصدر البيانات البعيد — بيكلّم الـ API ويرجّع models.
/// أي خطأ بيتحوّل لـ exception جوّه ApiClient.
abstract class AuctionRemoteDataSource {
  Future<List<AuctionModel>> getAuctions({
    String? query,
    String? category,
    int? wilaya,
    String? status,
    String? type,
    int page,
    int perPage,
  });

  Future<AuctionModel> getAuctionById(String id);
}

@LazySingleton(as: AuctionRemoteDataSource)
class AuctionRemoteDataSourceImpl implements AuctionRemoteDataSource {
  final ApiClient client;
  AuctionRemoteDataSourceImpl(this.client);

  @override
  Future<List<AuctionModel>> getAuctions({
    String? query,
    String? category,
    int? wilaya,
    String? status,
    String? type,
    int page = 1,
    int perPage = 12,
  }) async {
    final data = await client.get(
      ApiConstants.auctions,
      query: {
        if (query != null && query.isNotEmpty) 'q': query,
        'category': ?category,
        'wilaya': ?wilaya,
        'status': ?status,
        'type': ?type,
        'page': page,
        'per_page': perPage,
      },
    );
    // الـ ApiClient رجّع جزء data (قائمة)
    final list = (data as List)
        .map((e) => AuctionModel.fromJson(e as Map<String, dynamic>))
        .toList();
    return list;
  }

  @override
  Future<AuctionModel> getAuctionById(String id) async {
    final data = await client.get(ApiConstants.auctionDetail(id));
    return AuctionModel.fromJson(data as Map<String, dynamic>);
  }
}
