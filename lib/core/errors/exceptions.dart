/// استثناءات على مستوى الـ data layer.
/// الـ DataSource بيرميها، والـ Repository بيمسكها ويحوّلها لـ Failure.
library;

class ServerException implements Exception {
  final String message;
  final int? statusCode;
  final Map<String, List<String>>? errors;

  ServerException({
    required this.message,
    this.statusCode,
    this.errors,
  });
}

class NetworkException implements Exception {
  final String message;
  NetworkException([this.message = 'لا يوجد اتصال بالإنترنت']);
}

class UnauthorizedException implements Exception {
  final String message;
  UnauthorizedException([this.message = 'انتهت الجلسة']);
}

class CacheException implements Exception {
  final String message;
  CacheException([this.message = 'خطأ في التخزين المحلي']);
}
