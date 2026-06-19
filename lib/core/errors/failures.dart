import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

/// الأخطاء على مستوى الـ domain — يرجعها الـ Repository داخل Either<Failure, T>
/// نستخدم sealed union عشان نـ match عليها بسهولة في الـ Cubit
@freezed
sealed class Failure with _$Failure {
  /// خطأ من السيرفر (status >= 400) مع رسالة معرّبة جاية من الـ API
  const factory Failure.server({
    required String message,
    int? statusCode,
    Map<String, List<String>>? errors, // أخطاء التحقق {field: [msgs]}
  }) = ServerFailure;

  /// مفيش اتصال بالإنترنت / timeout
  const factory Failure.network({
    @Default('تحقق من اتصالك بالإنترنت ثم حاول مجددًا') String message,
  }) = NetworkFailure;

  /// انتهت صلاحية الجلسة (401) — يحتاج إعادة تسجيل دخول
  const factory Failure.unauthorized({
    @Default('انتهت الجلسة، يرجى تسجيل الدخول من جديد') String message,
  }) = UnauthorizedFailure;

  /// خطأ غير متوقع (parsing, إلخ)
  const factory Failure.unexpected({
    @Default('حدث خطأ غير متوقع') String message,
  }) = UnexpectedFailure;
}
