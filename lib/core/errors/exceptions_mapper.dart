import 'exceptions.dart';
import 'failures.dart';

/// تحويل exceptions طبقة الـ data إلى Failures طبقة الـ domain.
///
/// المكان **الوحيد** للتحويل — كل الـ repositories بتستخدمه، فأي حقل جديد
/// (زي `code` بتاع BE-16) بينتشر عليها كلها من غير ما نلمس 12 ملف.
extension ServerExceptionMapper on ServerException {
  Failure toFailure() => Failure.server(
    message: message,
    statusCode: statusCode,
    errors: errors,
    code: code,
  );
}
