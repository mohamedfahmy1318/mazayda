/// مسارات الـ assets — مركزية وآمنة (بدل كتابة الـ paths كنصوص متناثرة).
/// الاستخدام: `Image.asset(AppAssets.logo)`
class AppAssets {
  AppAssets._();

  // المجلدات الأساسية
  static const String _images = 'assets/images';
  static const String _icons = 'assets/icons';
  static const String _logo = 'assets/logo';

  // ===== اللوجو =====
  static const String logo = '$_logo/logo.png';
  static const String logoWhite = '$_logo/logo_white.png';
  static const String logoIcon = '$_logo/app_icon.png';

  // ===== الصور =====
  static const String splashBg = '$_images/splash_bg.png';
  static const String emptyState = '$_images/empty_state.png';
  static const String placeholder = '$_images/placeholder.png';
  static const String paymentSuccess = '$_images/payment_success.png';

  // ===== أيقونات مخصّصة (لو احتجت SVG/PNG غير Material) =====
  static const String gavel = '$_icons/gavel.png';
  static const String knet = '$_icons/payment_gateway.png';
}
