import 'package:injectable/injectable.dart';
import '../../../../core/constants/api_constants.dart';
import '../../../../core/network/api_client.dart';
import '../../../../core/network/api_response.dart';
import '../models/auction_list_model.dart';
import '../models/auction_model.dart';
import '../models/auction_viewer_model.dart';

/// صفحة من نتائج القائمة + معلومات التصفيح الحقيقية من `meta.pagination`.
typedef AuctionListRaw = ({List<AuctionListModel> items, PageInfo page});

/// تفاصيل المزاد + سياق المستخدم من `meta.viewer` (بيرجع null للزائر).
typedef AuctionDetailRaw = ({
  AuctionModel auction,
  AuctionViewerModel? viewer,
});

/// مصدر البيانات البعيد — بيكلّم الـ API ويرجّع models.
/// أي خطأ بيتحوّل لـ exception جوّه ApiClient.
abstract class AuctionRemoteDataSource {
  Future<AuctionListRaw> getAuctions({
    String? query,
    String? category,
    int? wilaya,
    String? status,
    String? type,
    int page,
    int perPage,
  });

  Future<AuctionDetailRaw> getAuctionById(String id);
}

@LazySingleton(as: AuctionRemoteDataSource)
class AuctionRemoteDataSourceImpl implements AuctionRemoteDataSource {
  final ApiClient client;
  AuctionRemoteDataSourceImpl(this.client);

  @override
  Future<AuctionListRaw> getAuctions({
    String? query,
    String? category,
    int? wilaya,
    String? status,
    String? type,
    int page = 1,
    int perPage = 12,
  }) async {
    // getEnvelope عشان نقرأ meta.pagination الحقيقي بدل ما نخمّن hasMore.
    final res = await client.getEnvelope(
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
    // القائمة بترجع AuctionListResource (18 مفتاح) مش الـ resource الكامل.
    return (
      items: Paginated.from(res, AuctionListModel.fromJson).items,
      page: res.page,
    );
  }

  @override
  Future<AuctionDetailRaw> getAuctionById(String id) async {
    // getEnvelope عشان نلتقط meta.viewer — أعلام التحكّم في الأزرار.
    // الباك بيرجّع viewer = null لو مفيش مستخدم مسجّل.
    final res = await client.getEnvelope(ApiConstants.auctionDetail(id));
    final viewer = res.metaMap('viewer');
    return (
      auction: AuctionModel.fromJson(res.data as Map<String, dynamic>),
      viewer: viewer == null ? null : AuctionViewerModel.fromJson(viewer),
    );
  }
}
