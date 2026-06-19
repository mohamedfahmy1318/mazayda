import 'package:injectable/injectable.dart';
import '../../../../core/constants/api_constants.dart';
import '../../../../core/network/api_client.dart';
import '../models/auth_models.dart';

/// مصدر بيانات الـ auth — بيكلّم الـ API endpoints.
abstract class AuthRemoteDataSource {
  Future<String> register(Map<String, dynamic> body); // يرجّع user_id
  Future<AuthTokensModel> verifyOtp(Map<String, dynamic> body);
  Future<void> resendOtp(String userId);
  Future<Map<String, dynamic>> login(Map<String, dynamic> body); // raw data
  Future<AuthUserModel> getCurrentUser();
  Future<void> logout({bool allDevices});
}

@LazySingleton(as: AuthRemoteDataSource)
class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final ApiClient client;
  AuthRemoteDataSourceImpl(this.client);

  @override
  Future<String> register(Map<String, dynamic> body) async {
    final data = await client.post(ApiConstants.register, body: body);
    // data: { user_id, message }
    return (data as Map)['user_id'].toString();
  }

  @override
  Future<AuthTokensModel> verifyOtp(Map<String, dynamic> body) async {
    final data = await client.post(ApiConstants.verifyOtp, body: body);
    final map = data as Map<String, dynamic>;
    // الـ envelope يرجّع { user, tokens } — التوكنات متداخلة تحت "tokens"
    final tokens = (map['tokens'] ?? map) as Map<String, dynamic>;
    return AuthTokensModel.fromJson(tokens);
  }

  @override
  Future<void> resendOtp(String userId) async {
    await client.post(ApiConstants.resendOtp, body: {'user_id': userId});
  }

  @override
  Future<Map<String, dynamic>> login(Map<String, dynamic> body) async {
    // ممكن يرجّع توكنات أو needs_email_verification — نرجّع الـ data خام
    final data = await client.post(ApiConstants.login, body: body);
    return data as Map<String, dynamic>;
  }

  @override
  Future<AuthUserModel> getCurrentUser() async {
    final data = await client.get(ApiConstants.me);
    return AuthUserModel.fromJson(data as Map<String, dynamic>);
  }

  @override
  Future<void> logout({bool allDevices = false}) async {
    await client.post(
      ApiConstants.logout,
      body: allDevices ? {'all': true} : null,
    );
  }
}
