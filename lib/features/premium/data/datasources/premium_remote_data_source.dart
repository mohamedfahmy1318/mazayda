import 'package:injectable/injectable.dart';
import '../../../../core/constants/api_constants.dart';
import '../../../../core/network/api_client.dart';
import '../../../payments/data/models/payment_models.dart';
import '../models/subscription_model.dart';

abstract class PremiumRemoteDataSource {
  Future<PremiumOverviewModel> getOverview();

  /// بيبدأ دفع الاشتراك — بيرجّع نفس شكل باقي المدفوعات (redirect_url + ref).
  Future<PaymentInitModel> subscribe(String planCode);

  /// بيوقف التجديد التلقائي — المدة المدفوعة بتفضل شغّالة لحد ما تنتهي.
  Future<SubscriptionModel?> cancelAutoRenew();
}

@LazySingleton(as: PremiumRemoteDataSource)
class PremiumRemoteDataSourceImpl implements PremiumRemoteDataSource {
  final ApiClient client;
  PremiumRemoteDataSourceImpl(this.client);

  @override
  Future<PremiumOverviewModel> getOverview() async {
    final data = await client.get(ApiConstants.subscription);
    return PremiumOverviewModel.fromJson(data as Map<String, dynamic>);
  }

  @override
  Future<PaymentInitModel> subscribe(String planCode) async {
    final data = await client.post(
      ApiConstants.subscription,
      body: {'plan_code': planCode},
    );
    return PaymentInitModel.fromJson(data as Map<String, dynamic>);
  }

  @override
  Future<SubscriptionModel?> cancelAutoRenew() async {
    final data = await client.delete(ApiConstants.subscription);
    if (data == null) return null;
    return SubscriptionModel.fromJson(data as Map<String, dynamic>);
  }
}
