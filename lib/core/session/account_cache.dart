import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

/// أدوار الحساب — مطابقة لـ `app/Enums/UserRole.php` في الباك.
///
/// التطبيق ده تطبيق **المواطن**، لكن حساب موظّف ينفع يسجّل دخول منه،
/// وساعتها لازم نخفي مسارات المشاركة (شراء دفتر الشروط والتسجيل والمزايدة)
/// لأنها للمواطن بس — تعديل العميل رقم 4.
class AccountRoles {
  AccountRoles._();

  static const citizen = 'CITIZEN';
  static const premiumCitizen = 'PREMIUM_CITIZEN';

  /// أي دور غير المواطن (عادي أو Premium) = موظّف منصّة/جهة.
  /// نفس تعريف `UserRole::isStaff()` بالظبط، ومكتوب بالنفي عشان أي دور
  /// جديد يتضاف في الباك يتعامل كموظّف افتراضيًا (الأأمن للمواطن).
  static bool isStaff(String? role) =>
      role != null &&
      role.isNotEmpty &&
      role != citizen &&
      role != premiumCitizen;
}

/// كاش خفيف لأعلام الحساب اللي الواجهة محتاجاها **قبل** ما تجيب البروفايل.
///
/// المشكلة اللي بيحلّها: شاشة تفاصيل المزاد بتقرر شكل زرار الإجراء من
/// `meta.viewer`، واللي مافيهوش دور المستخدم ولا اشتراكه. من غير الكاش ده
/// كنا هنضطر نضيف نداء `/profile` على كل فتح لصفحة مزاد.
///
/// بيتكتب من [ProfileRepositoryImpl] (المكان الوحيد اللي بيبني `Profile` من
/// الشبكة) وبيتمسح عند تسجيل الخروج. القيم ممكن تكون قديمة بثواني — وده
/// مقبول لأن السيرفر هو اللي بيفرض القرار النهائي على كل الحالات.
@lazySingleton
class AccountCache {
  final FlutterSecureStorage _storage;

  AccountCache(this._storage);

  static const _kRole = 'account_role';
  static const _kPremium = 'account_is_premium';

  Future<void> save({String? role, bool? isPremium}) async {
    if (role != null) await _storage.write(key: _kRole, value: role);
    if (isPremium != null) {
      await _storage.write(key: _kPremium, value: isPremium.toString());
    }
  }

  Future<String?> get role => _storage.read(key: _kRole);

  Future<bool> get isPremium async =>
      (await _storage.read(key: _kPremium)) == 'true';

  /// الحساب موظّف — نتعامل معاه كـ«غير معروف = مواطن» لحد ما نعرف، عشان
  /// المواطن العادي ما يتحرمش من الأزرار في أول تشغيل قبل ما الكاش يتملا.
  Future<bool> get isStaff async => AccountRoles.isStaff(await role);

  Future<void> clear() async {
    await _storage.delete(key: _kRole);
    await _storage.delete(key: _kPremium);
  }
}
