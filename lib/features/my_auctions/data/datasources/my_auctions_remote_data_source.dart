import 'package:injectable/injectable.dart';
import '../../../../core/constants/api_constants.dart';
import '../../../../core/network/api_client.dart';
import '../../../../core/network/api_response.dart';
import '../../../auctions/data/models/auction_list_model.dart';

/// الرد الخام لـ `GET /my-auctions?tab=`:
/// `data` = مصفوفة AuctionListResource، و`meta` = {tab, counts{...}}.
typedef MyAuctionsRaw = ({
  List<AuctionListModel> items,
  String tab,
  Map<String, dynamic> counts,
});

abstract class MyAuctionsRemoteDataSource {
  Future<MyAuctionsRaw> getMyAuctions(String tab);
}

@LazySingleton(as: MyAuctionsRemoteDataSource)
class MyAuctionsRemoteDataSourceImpl implements MyAuctionsRemoteDataSource {
  final ApiClient client;
  MyAuctionsRemoteDataSourceImpl(this.client);

  @override
  Future<MyAuctionsRaw> getMyAuctions(String tab) async {
    // getEnvelope عشان نحتفظ بـ meta.counts (أعداد التبويبات).
    // ملاحظة: الـ endpoint ده **مش مصفّح** — بيرجّع كل المشاركات دفعة واحدة.
    final res = await client.getEnvelope(
      ApiConstants.myAuctions,
      query: {'tab': tab},
    );

    return (
      items: Paginated.from(res, AuctionListModel.fromJson).items,
      tab: (res.meta['tab'] as String?) ?? tab,
      counts: res.metaMap('counts') ?? const <String, dynamic>{},
    );
  }
}
