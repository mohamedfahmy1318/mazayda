import 'package:injectable/injectable.dart';
import '../../../../core/constants/api_constants.dart';
import '../../../../core/network/api_client.dart';
import '../models/appeal_model.dart';

abstract class AppealsRemoteDataSource {
  Future<List<AppealModel>> getAppeals();
  Future<void> submitAppeal(Map<String, dynamic> body);
}

@LazySingleton(as: AppealsRemoteDataSource)
class AppealsRemoteDataSourceImpl implements AppealsRemoteDataSource {
  final ApiClient client;
  AppealsRemoteDataSourceImpl(this.client);

  @override
  Future<List<AppealModel>> getAppeals() async {
    final data = await client.get(ApiConstants.appeals);
    return (data as List)
        .map((e) => AppealModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<void> submitAppeal(Map<String, dynamic> body) async {
    await client.post(ApiConstants.appeals, body: body);
  }
}
