import 'dart:async';
import 'package:injectable/injectable.dart';

/// يدير حالة الجلسة على مستوى التطبيق.
/// عند فشل تجديد التوكن، يبثّ حدثًا يسمعه الـ router فيوجّه لـ login.
/// الفائدة المعمارية: طبقة الـ network لا تعرف شيئًا عن الـ navigation.
@lazySingleton
class SessionManager {
  final _expiredController = StreamController<void>.broadcast();

  /// true بعد انتهاء الجلسة وقبل أن يوجّه الـ router لـ login.
  bool isExpired = false;

  /// يستمع له الـ router/الواجهة لمعرفة انتهاء الجلسة.
  Stream<void> get onSessionExpired => _expiredController.stream;

  /// يُستدعى من الـ AuthInterceptor عند فشل التجديد نهائيًا.
  void expireSession() {
    isExpired = true;
    if (!_expiredController.isClosed) {
      _expiredController.add(null);
    }
  }

  /// يُستدعى بعد نجاح تسجيل الدخول من جديد.
  void reset() => isExpired = false;

  @disposeMethod
  void dispose() => _expiredController.close();
}
