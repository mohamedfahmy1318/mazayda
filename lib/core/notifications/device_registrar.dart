import 'dart:io' show Platform;

import 'package:injectable/injectable.dart';
import '../constants/api_constants.dart';
import '../network/api_client.dart';
import 'push_notification_service.dart';

/// يربط جهاز المستخدم بحسابه على السيرفر عشان الـ Push توصله.
///
/// ⚠️ الـ endpoint `/devices` **لسه مش موجود** في الباك (طلب BE-11). كل
/// العمليات هنا **بتبلع الأخطاء بهدوء**، فالتطبيق شغّال عادي دلوقتي، وأول
/// ما الـ endpoint ينزل يبدأ يشتغل من غير أي تعديل في الكود.
///
/// من غير ده، الـ FCM token بيتجاب من الجهاز ومفيش مكان يتبعت له — يعني
/// **مستحيل** توجيه إشعار لمستخدم معيّن.
@lazySingleton
class DeviceRegistrar {
  final ApiClient _client;
  final PushNotificationService _push;

  DeviceRegistrar(this._client, this._push);

  static String get _platform => Platform.isIOS ? 'ios' : 'android';

  /// يسجّل الجهاز الحالي — يُستدعى بعد نجاح تسجيل الدخول/التحقق.
  Future<void> register({String? locale}) async {
    await _safely(() async {
      final token = await _push.getToken();
      if (token == null || token.isEmpty) return;
      await _client.post(
        ApiConstants.devices,
        body: {
          'token': token,
          'platform': _platform,
          if (locale != null) 'locale': locale,
        },
      );
    });
  }

  /// يلغي تسجيل الجهاز — **لازم يتنادى قبل مسح التوكنات** لأنه يحتاج مصادقة.
  Future<void> unregister() async {
    await _safely(() async {
      final token = await _push.getToken();
      if (token == null || token.isEmpty) return;
      await _client.delete(ApiConstants.devices, body: {'token': token});
    });
  }

  /// تشغيل عملية وتجاهل أي فشل — تسجيل الجهاز ما يوقفش المستخدم أبدًا.
  /// (الفشل المتوقّع دلوقتي: 404 لأن الـ endpoint لسه مش منشور.)
  Future<void> _safely(Future<void> Function() action) async {
    try {
      await action();
    } catch (_) {
      // متعمّد: الإشعارات ميزة إضافية، مش شرط لاستخدام التطبيق.
    }
  }
}
