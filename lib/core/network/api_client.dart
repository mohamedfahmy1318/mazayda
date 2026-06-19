import 'package:dio/dio.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import '../constants/api_constants.dart';
import '../errors/exceptions.dart';
import '../session/session_manager.dart';
import 'auth_interceptor.dart';
import 'token_storage.dart';

/// غلاف حول Dio:
/// - يضبط الـ baseUrl والمهلات.
/// - يركّب الـ interceptors (auth + logging).
/// - يفكّ الـ envelope الموحّد {data, message, meta}.
/// - يحوّل أخطاء Dio إلى exceptions نظيفة يفهمها الـ Repository.
@lazySingleton
class ApiClient {
  late final Dio _dio;

  ApiClient(TokenStorage tokenStorage, SessionManager sessionManager) {
    _dio = Dio(
      BaseOptions(
        baseUrl: ApiConstants.baseUrl,
        connectTimeout:
            const Duration(milliseconds: ApiConstants.connectTimeout),
        receiveTimeout:
            const Duration(milliseconds: ApiConstants.receiveTimeout),
        headers: {'Content-Type': 'application/json'},
      ),
    );

    _dio.interceptors.add(AuthInterceptor(tokenStorage, _dio, sessionManager));
    _dio.interceptors.add(PrettyDioLogger(
      requestBody: true,
      responseBody: true,
      compact: true,
    ));

    // إعادة المحاولة تلقائيًا — يُركّب أخيرًا (بعد auth واللوجر).
    // يعيد فقط عند أخطاء الشبكة/المهلة، 3 محاولات بفواصل متصاعدة.
    // ملاحظة: لا يعيد على 4xx (401/422...) لأنها لا تُحلّ بإعادة المحاولة.
    _dio.interceptors.add(RetryInterceptor(
      dio: _dio,
      logPrint: (msg) {}, // اللوجر عندنا بالفعل
      retries: 3,
      retryDelays: const [
        Duration(seconds: 1),
        Duration(seconds: 2),
        Duration(seconds: 3),
      ],
    ));
  }

  Dio get dio => _dio;

  /// GET — يرجّع جزء `data` من الـ envelope.
  Future<dynamic> get(
    String path, {
    Map<String, dynamic>? query,
  }) async {
    return _handle(() => _dio.get(path, queryParameters: query));
  }

  /// POST — يرجّع جزء `data` من الـ envelope.
  Future<dynamic> post(
    String path, {
    dynamic body,
  }) async {
    return _handle(() => _dio.post(path, data: body));
  }

  /// PUT
  Future<dynamic> put(String path, {dynamic body}) async {
    return _handle(() => _dio.put(path, data: body));
  }

  /// رفع ملف (multipart) — مثلًا مستندات الـ KYC.
  Future<dynamic> upload(String path, FormData formData) async {
    return _handle(() => _dio.post(path, data: formData));
  }

  /// المنطق المشترك: يشغّل الطلب، يفكّ الـ envelope، يحوّل الأخطاء.
  Future<dynamic> _handle(Future<Response> Function() request) async {
    try {
      final response = await request();
      final body = response.data;
      // الـ envelope الموحّد: نرجّع جزء data لو موجود
      if (body is Map && body.containsKey('data')) {
        return body['data'];
      }
      return body;
    } on DioException catch (e) {
      throw _mapDioError(e);
    }
  }

  Exception _mapDioError(DioException e) {
    // أخطاء الاتصال / المهلة
    if (e.type == DioExceptionType.connectionTimeout ||
        e.type == DioExceptionType.receiveTimeout ||
        e.type == DioExceptionType.sendTimeout ||
        e.type == DioExceptionType.connectionError) {
      return NetworkException();
    }

    final status = e.response?.statusCode;
    final data = e.response?.data;

    // الرسالة المعرّبة جاية من الـ API
    String message = 'حدث خطأ، حاول مجددًا';
    Map<String, List<String>>? errors;

    if (data is Map) {
      if (data['message'] is String) message = data['message'];
      if (data['errors'] is Map) {
        errors = (data['errors'] as Map).map(
          (k, v) => MapEntry(
            k.toString(),
            (v as List).map((e) => e.toString()).toList(),
          ),
        );
      }
    }

    if (status == 401) {
      return UnauthorizedException(message);
    }

    return ServerException(
      message: message,
      statusCode: status,
      errors: errors,
    );
  }
}
