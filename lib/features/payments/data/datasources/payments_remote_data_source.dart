import 'package:injectable/injectable.dart';
import '../../../../core/constants/api_constants.dart';
import '../../../../core/network/api_client.dart';
import '../models/final_payment_preview_model.dart';
import '../models/payment_models.dart';

abstract class PaymentsRemoteDataSource {
  Future<PaymentInitModel> buyBook(String auctionId);
  Future<PaymentInitModel> registerInAuction(String auctionId);
  Future<PaymentInitModel> startFinalPayment(String auctionId);
  Future<PaymentStatusResponseModel> getPaymentStatus(String ref);

  /// معاينة رسوم الدفع النهائي — 403 لو المستخدم مش الفايز.
  Future<FinalPaymentPreviewModel> getFinalPaymentPreview(String auctionId);
}

@LazySingleton(as: PaymentsRemoteDataSource)
class PaymentsRemoteDataSourceImpl implements PaymentsRemoteDataSource {
  final ApiClient client;
  PaymentsRemoteDataSourceImpl(this.client);

  @override
  Future<PaymentInitModel> buyBook(String auctionId) async {
    final data = await client.post(ApiConstants.buyBook(auctionId));
    return PaymentInitModel.fromJson(data as Map<String, dynamic>);
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
  Future<FinalPaymentPreviewModel> getFinalPaymentPreview(
    String auctionId,
  ) async {
    final data = await client.get(ApiConstants.finalPaymentPreview(auctionId));
    return FinalPaymentPreviewModel.fromJson(data as Map<String, dynamic>);
  }

  @override
  Future<PaymentStatusResponseModel> getPaymentStatus(String ref) async {
    // الرد: { ref, payments: [...] } — object مش list.
    final data = await client.get(ApiConstants.paymentStatus(ref));
    return PaymentStatusResponseModel.fromJson(data as Map<String, dynamic>);
  }
}
