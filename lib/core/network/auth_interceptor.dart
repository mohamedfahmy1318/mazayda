import 'package:dio/dio.dart';
import '../constants/api_constants.dart';
import '../session/session_manager.dart';
import 'token_storage.dart';

/// Interceptor بيضيف:
/// - Accept-Language: ar (لتعريب ردود الـ API)
/// - Authorization: Bearer {access} للطلبات المحمية
/// وبيعالج 401 بمحاولة تجديد التوكن مرة واحدة ثم إعادة الطلب.
/// عند فشل التجديد نهائيًا: يمسح التوكنات ويبثّ حدث انتهاء الجلسة.
class AuthInterceptor extends Interceptor {
  final TokenStorage _tokenStorage;
  final Dio _dio; // نفس الـ Dio لإعادة المحاولة
  final SessionManager _sessionManager;

  AuthInterceptor(this._tokenStorage, this._dio, this._sessionManager);

  bool _isRefreshing = false;

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    options.headers['Accept'] = 'application/json';
    options.headers['Accept-Language'] = 'ar';

    // ما نضفش التوكن في طلبات الـ auth العامة
    final isAuthFree = options.path.contains('/auth/register') ||
        options.path.contains('/auth/login') ||
        options.path.contains('/auth/verify-otp') ||
        options.path.contains('/auth/resend-otp');

    if (!isAuthFree) {
      final token = await _tokenStorage.accessToken;
      if (token != null) {
        options.headers['Authorization'] = 'Bearer $token';
      }
    }
    handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    final is401 = err.response?.statusCode == 401;
    final isRefreshCall = err.requestOptions.path.contains('/auth/refresh');

    // 401 على طلب عادي → جرّب تجدّد التوكن مرة واحدة
    if (is401 && !isRefreshCall && !_isRefreshing) {
      _isRefreshing = true;
      try {
        final refreshed = await _refreshToken();
        if (refreshed) {
          // أعد الطلب الأصلي بالتوكن الجديد
          final newToken = await _tokenStorage.accessToken;
          err.requestOptions.headers['Authorization'] = 'Bearer $newToken';
          final response = await _dio.fetch(err.requestOptions);
          _isRefreshing = false;
          return handler.resolve(response);
        } else {
          // مفيش refresh token صالح → الجلسة انتهت
          await _endSession();
        }
      } catch (_) {
        // فشل التجديد (مثلًا الـ refresh token نفسه منتهي) → الجلسة انتهت
        await _endSession();
      }
      _isRefreshing = false;
    }
    handler.next(err);
  }

  /// إنهاء الجلسة: مسح التوكنات + بثّ الحدث ليوجّه الـ router لـ login.
  Future<void> _endSession() async {
    await _tokenStorage.clear();
    _sessionManager.expireSession();
  }

  Future<bool> _refreshToken() async {
    final refresh = await _tokenStorage.refreshToken;
    if (refresh == null) return false;

    // مهم: التجديد بيستخدم الـ REFRESH token كـ bearer (مش الـ access)
    final res = await Dio().post(
      '${ApiConstants.baseUrl}${ApiConstants.refresh}',
      options: Options(headers: {
        'Authorization': 'Bearer $refresh',
        'Accept': 'application/json',
      }),
    );

    final data = res.data['data'];
    if (data != null && data['access_token'] != null) {
      await _tokenStorage.saveTokens(
        accessToken: data['access_token'],
        refreshToken: data['refresh_token'] ?? refresh,
      );
      return true;
    }
    return false;
  }
}
