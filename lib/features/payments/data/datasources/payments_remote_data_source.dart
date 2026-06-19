import 'package:injectable/injectable.dart';
import '../../../../core/constants/api_constants.dart';
import '../../../../core/network/api_client.dart';
import '../models/payment_models.dart';

abstract class PaymentsRemoteDataSource {
  Future<void> acknowledgeBook(String auctionId);
  Future<PaymentInitModel> registerInAuction(String auctionId);
  Future<PaymentInitModel> startFinalPayment(String auctionId);
  Future<List<PaymentStatusModel>> getPaymentStatus(String ref);
}

@LazySingleton(as: PaymentsRemoteDataSource)
class PaymentsRemoteDataSourceImpl implements PaymentsRemoteDataSource {
  final ApiClient client;
  PaymentsRemoteDataSourceImpl(this.client);

  @override
  Future<void> acknowledgeBook(String auctionId) async {
    await client.post(ApiConstants.acknowledgeBook(auctionId));
  }

  @override
  Future<PaymentInitModel> registerInAuction(String auctionId) async {
    final data = await client.post(ApiConstants.registerInAuction(auctionId));
    return PaymentInitModel.fromJson(data as Map<String, dynamic>);
  }

  @override
  Future<PaymentInitModel> startFinalPayment(String auctionId) async {
    final data = await client.post(ApiConstants.finalPayment(auctionId));
    return PaymentInitModel.fromJson(data as Map<String, dynamic>);
  }

  @override
  Future<List<PaymentStatusModel>> getPaymentStatus(String ref) async {
    final data = await client.get(ApiConstants.paymentStatus(ref));
    // الـ status بيرجّع كل صفوف الدفع المشتركة في نفس الـ ref
    if (data is List) {
      return data
          .map((e) => PaymentStatusModel.fromJson(e as Map<String, dynamic>))
          .toList();
    }
    // أو صف واحد
    return [PaymentStatusModel.fromJson(data as Map<String, dynamic>)];
  }
}
