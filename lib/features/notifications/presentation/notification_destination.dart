import '../../../core/router/app_router.dart';
import '../domain/entities/app_notification.dart';

/// وجهة الإشعار **داخل التطبيق** كمسار go_router.
///
/// مصدر واحد للتوجيه بيستخدمه مسارين: الضغط على إشعار في الصندوق،
/// والضغط على إشعار Push من شريط النظام — فالاتنين يفتحوا نفس الشاشة.
extension NotificationDestinationX on AppNotification {
  /// `null` = مفيش وجهة معروفة.
  String? get destination {
    final id = auctionId;
    if (id != null) return '${Routes.auctionDetail}/$id';
    if (pointsToAppeals) return Routes.appeals;
    // قبل الـ KYC: رابط السجل التجاري مافيهوش المقطع `/kyc` فمافيش تعارض،
    // بس بنتحقق منه الأول عشان الترتيب يفضل واضح.
    if (pointsToCommercialRegister) return Routes.commercialRegister;
    if (pointsToKyc) return Routes.kyc;
    if (pointsToPremium) return Routes.premium;
    return null;
  }
}
