import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/constants/api_constants.dart';
import '../../../../core/network/api_client.dart';
import '../models/kyc_models.dart';

abstract class KycRemoteDataSource {
  Future<KycStatusModel> getStatus();
  Future<void> uploadDocument(String typeApiValue, String filePath);
  Future<void> submit(Map<String, dynamic> body);
  Future<List<WilayaModel>> getWilayas();
  Future<List<CommuneModel>> getCommunes(int wilayaId);
}

@LazySingleton(as: KycRemoteDataSource)
class KycRemoteDataSourceImpl implements KycRemoteDataSource {
  final ApiClient client;
  KycRemoteDataSourceImpl(this.client);

  @override
  Future<KycStatusModel> getStatus() async {
    final data = await client.get(ApiConstants.kyc);
    return KycStatusModel.fromJson(data as Map<String, dynamic>);
  }

  @override
  Future<void> uploadDocument(String typeApiValue, String filePath) async {
    // رفع ملف صورة (JPG/PNG) كـ multipart
    final formData = FormData.fromMap({
      'file': await MultipartFile.fromFile(filePath),
    });
    await client.upload(ApiConstants.kycUpload(typeApiValue), formData);
  }

  @override
  Future<void> submit(Map<String, dynamic> body) async {
    await client.post(ApiConstants.kycSubmit, body: body);
  }

  @override
  Future<List<WilayaModel>> getWilayas() async {
    // ملاحظة: /wilayas بترجع array مباشر (مش envelope) — نستخدم Dio مباشرة
    final res = await client.dio.get(ApiConstants.wilayas);
    return (res.data as List)
        .map((e) => WilayaModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<List<CommuneModel>> getCommunes(int wilayaId) async {
    final res = await client.dio.get(ApiConstants.communes(wilayaId));
    return (res.data as List)
        .map((e) => CommuneModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
