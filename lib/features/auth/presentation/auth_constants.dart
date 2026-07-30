/// ثوابت مشتركة لميزة الـ auth — بدل الأرقام/النصوص السحرية المبعثرة.
class AuthConstants {
  AuthConstants._();

  /// اسم الجهاز المُرسل للـ API مع طلبات الدخول/التسجيل/التحقق.
  static const String defaultDeviceName = 'mobile';

  /// طول كود الـ OTP المتوقّع من السيرفر.
  static const int otpLength = 6;

  /// مهلة إعادة إرسال الكود (ثانية) — نفس cooldown الـ API.
  static const int resendCooldownSeconds = 60;

  /// رقم التعريف الوطني الجزائري: 18 رقمًا.
  static const int ninLength = 18;

  /// أرقام الجزائر: 10 خانات تبدأ بـ 0 (05/06/07).
  static const int phoneLength = 10;

  /// الحد الأدنى لطول كلمة المرور (Password::min(12) في الـ production).
  static const int minPasswordLength = 12;

  /// الحد الأدنى للسن عند التسجيل — قاعدة الـ API: before:(اليوم - 18 سنة).
  static const int minAgeYears = 18;
}
