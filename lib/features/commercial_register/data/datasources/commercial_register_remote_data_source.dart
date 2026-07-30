import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/constants/api_constants.dart';
import '../../../../core/network/api_client.dart';
import '../../domain/entities/commercial_register.dart';
import '../models/commercial_register_model.dart';

abstract class CommercialRegisterRemoteDataSource {
  Future<CommercialRegisterModel> getRegister();

  /// الإرسال **دايمًا multipart** حتى لو مفيش ملفات جديدة — الباك بيقرأ
  /// الحقول النصية من نفس الطلب، والنسخ المحفوظة بتفضل زي ما هي لو مبعتناش
  /// بديل ليها.
  Future<void> submit({
    required Map<String, String> fields,
    String? registerDocumentPath,
    String? taxCardDocumentPath,
  });
}

@LazySingleton(as: CommercialRegisterRemoteDataSource)
class CommercialRegisterRemoteDataSourceImpl
    implements CommercialRegisterRemoteDataSource {
  final ApiClient client;
  CommercialRegisterRemoteDataSourceImpl(this.client);

  @override
  Future<CommercialRegisterModel> getRegister() async {
    final data = await client.get(ApiConstants.commercialRegister);
    return CommercialRegisterModel.fromJson(data as Map<String, dynamic>);
  }

  @override
  Future<void> submit({
    required Map<String, String> fields,
    String? registerDocumentPath,
    String? taxCardDocumentPath,
  }) async {
    final formData = FormData.fromMap({
      ...fields,
      if (registerDocumentPath != null)
        CrDocumentType.register.uploadField: await MultipartFile.fromFile(
          registerDocumentPath,
        ),
      if (taxCardDocumentPath != null)
        CrDocumentType.taxCard.uploadField: await MultipartFile.fromFile(
          taxCardDocumentPath,
        ),
    });
    await client.upload(ApiConstants.commercialRegister, formData);
  }
}
