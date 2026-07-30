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

  // ===== استرجاع الحساب =====

  /// طلب رمز إعادة تعيين كلمة السر.
  /// ⚠️ الباك بيرجّع 200 **دايمًا** حتى لو الحساب مش موجود (حماية من
  /// استكشاف الحسابات) — فمينفعش نستنتج وجود الحساب من الردّ.
  Future<void> requestPasswordReset({
    required String nin,
    required String email,
  });

  /// التحقق من الرمز وتعيين كلمة سر جديدة. أخطاء الرمز بتيجي تحت `otp`.
  Future<void> verifyPasswordReset({
    required String nin,
    required String email,
    required String otp,
    required String password,
    required String passwordConfirmation,
  });

  /// كشف السؤال السرّي — بيرجّع **مفتاح** السؤال مش نصّه.
  /// ⚠️ ده بيكشف وجود الحساب فعلًا (422 تحت `nin` لو مش متاح).
  Future<String> revealSecretQuestion({
    required String nin,
    required String email,
  });

  /// استرجاع بالسؤال السرّي. أخطاء الإجابة بتيجي تحت `secret_answer`.
  Future<void> recoverBySecret({
    required String nin,
    required String email,
    required String secretAnswer,
    required String password,
    required String passwordConfirmation,
  });
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
    // الردّ: { "user": {...} } — لازم نفك الغلاف. (لاحظ إن /profile بيرجّع
    // الـ UserResource مباشرة من غير غلاف، فالشكلين مختلفين.)
    final map = data as Map<String, dynamic>;
    return AuthUserModel.fromJson(
      (map['user'] ?? map) as Map<String, dynamic>,
    );
  }

  @override
  Future<void> logout({bool allDevices = false}) async {
    await client.post(
      ApiConstants.logout,
      body: allDevices ? {'all': true} : null,
    );
  }

  @override
  Future<void> requestPasswordReset({
    required String nin,
    required String email,
  }) async {
    await client.post(
      ApiConstants.passwordRequest,
      body: {'nin': nin, 'email': email},
    );
  }

  @override
  Future<void> verifyPasswordReset({
    required String nin,
    required String email,
    required String otp,
    required String password,
    required String passwordConfirmation,
  }) async {
    await client.post(
      ApiConstants.passwordVerify,
      body: {
        'nin': nin,
        'email': email,
        'otp': otp,
        'password': password,
        'password_confirmation': passwordConfirmation,
      },
    );
  }

  @override
  Future<String> revealSecretQuestion({
    required String nin,
    required String email,
  }) async {
    final data = await client.post(
      ApiConstants.recoverReveal,
      body: {'nin': nin, 'email': email},
    );
    // data: { question: "<key>" } — مفتاح زي mother_maiden، بنترجمه محليًا.
    return ((data as Map)['question'] ?? '').toString();
  }

  @override
  Future<void> recoverBySecret({
    required String nin,
    required String email,
    required String secretAnswer,
    required String password,
    required String passwordConfirmation,
  }) async {
    await client.post(
      ApiConstants.recoverVerify,
      body: {
        'nin': nin,
        'email': email,
        'secret_answer': secretAnswer,
        'password': password,
        'password_confirmation': passwordConfirmation,
      },
    );
  }

  /// الـ envelope ممكن يرجّع التوكنات متداخلة تحت "tokens" أو في الجذر مباشرة.
  Map<String, dynamic> _unwrapTokens(Map<String, dynamic> data) =>
      (data['tokens'] ?? data) as Map<String, dynamic>;
}
