import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:injectable/injectable.dart';

/// يدير الـ Push notifications:
/// - يطلب الإذن ويجلب الـ FCM token (نرسله للسيرفر لربطه بالمستخدم).
/// - يعرض الإشعار محليًا والتطبيق مفتوح (foreground) عبر flutter_local_notifications.
@lazySingleton
class PushNotificationService {
  final FirebaseMessaging _fcm = FirebaseMessaging.instance;
  final FlutterLocalNotificationsPlugin _local =
      FlutterLocalNotificationsPlugin();

  // قناة أندرويد للإشعارات المهمة (مزايدة/فوز/دفع)
  static const _channel = AndroidNotificationChannel(
    'mazayada_high',
    'إشعارات مزايدة',
    description: 'إشعارات المزادات والمزايدات والمدفوعات',
    importance: Importance.high,
  );

  /// تهيئة كاملة — تُستدعى مرة عند بدء التطبيق بعد Firebase.initializeApp.
  Future<void> init() async {
    // 1) طلب الإذن (iOS + Android 13+)
    await _fcm.requestPermission(alert: true, badge: true, sound: true);

    // 2) إعداد عرض الإشعارات المحلية
    const androidInit =
        AndroidInitializationSettings('@mipmap/ic_launcher');
    const iosInit = DarwinInitializationSettings();
    await _local.initialize(
      const InitializationSettings(android: androidInit, iOS: iosInit),
    );
    // إنشاء قناة الأندرويد
    await _local
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(_channel);

    // 3) استقبال الرسائل والتطبيق مفتوح → اعرضها محليًا
    FirebaseMessaging.onMessage.listen(_showLocal);
  }

  /// الـ FCM token — أرسله لـ backend لربطه بحساب المستخدم.
  Future<String?> getToken() => _fcm.getToken();

  /// عرض إشعار محلي من رسالة FCM واردة (foreground).
  void _showLocal(RemoteMessage message) {
    final n = message.notification;
    if (n == null) return;
    _local.show(
      n.hashCode,
      n.title,
      n.body,
      NotificationDetails(
        android: AndroidNotificationDetails(
          _channel.id,
          _channel.name,
          channelDescription: _channel.description,
          importance: Importance.high,
          priority: Priority.high,
        ),
        iOS: const DarwinNotificationDetails(),
      ),
    );
  }
}
