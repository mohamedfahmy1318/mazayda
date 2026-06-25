import 'package:injectable/injectable.dart';
import '../../../../core/constants/api_constants.dart';
import '../../../../core/network/api_client.dart';
import '../models/auth_models.dart';

/// مصدر بيانات الـ auth — بيكلّم الـ API endpoints.
abstract class AuthRemoteDataSource {
  Future<String> register(Map<String, dynamic> body); // يرجّع user_id
  Future<AuthTokensModel> verifyOtp(Map<String, dynamic> body);
  Future<void> resendOtp(String userId);
  Future<LoginResultModel> login(Map<String, dynamic> body);
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
    return AuthTokensModel.fromJson(
      _unwrapTokens(data as Map<String, dynamic>),
    );
  }

  @override
  Future<void> resendOtp(String userId) async {
    await client.post(ApiConstants.resendOtp, body: {'user_id': userId});
  }

  @override
  Future<LoginResultModel> login(Map<String, dynamic> body) async {
    final data =
        await client.post(ApiConstants.login, body: body)
            as Map<String, dynamic>;
    // الردّ إما توكنات (متداخلة تحت "tokens" أو في الجذر) أو إشارة تأكيد بريد.
    if (data['needs_email_verification'] == true) {
      return LoginResultModel(
        needsEmailVerification: true,
        userId: data['user_id']?.toString(),
      );
    }
    return LoginResultModel(
      tokens: AuthTokensModel.fromJson(_unwrapTokens(data)),
    );
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

  /// الـ envelope ممكن يرجّع التوكنات متداخلة تحت "tokens" أو في الجذر مباشرة.
  Map<String, dynamic> _unwrapTokens(Map<String, dynamic> data) =>
      (data['tokens'] ?? data) as Map<String, dynamic>;
}
