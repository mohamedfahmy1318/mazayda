import 'package:injectable/injectable.dart';
import '../../../../core/constants/api_constants.dart';
import '../../../../core/network/api_client.dart';
import '../../../../core/network/api_response.dart';
import '../models/notification_model.dart';
import '../models/notification_preferences_model.dart';

abstract class NotificationsRemoteDataSource {
  Future<({List<NotificationModel> items, int unreadCount})> getNotifications();
  Future<void> markAsRead(String id);
  Future<void> markAllAsRead();

  // ===== تفضيلات الإشعارات (تعديلات 27 · 28 · 30) =====

  /// التفضيلات + الأنواع المتاحة للاختيار في نداء واحد.
  Future<NotificationPreferencesModel> getPreferences();

  /// حفظ التفضيلات — السيرفر بيرجّع الصورة النهائية بعد الحفظ.
  Future<NotificationPreferencesModel> updatePreferences(
    Map<String, dynamic> body,
  );
}

@LazySingleton(as: NotificationsRemoteDataSource)
class NotificationsRemoteDataSourceImpl
    implements NotificationsRemoteDataSource {
  final ApiClient client;
  NotificationsRemoteDataSourceImpl(this.client);

  @override
  Future<({List<NotificationModel> items, int unreadCount})>
  getNotifications() async {
    // getEnvelope بيحافظ على الـ meta (فيها unread_count + pagination).
    // قبل كده كان الاستدعاء بيتم عبر Dio الخام، وده كان بيتخطّى تحويل
    // أخطاء Dio لـ exceptions نظيفة — فأي فشل شبكة كان بيوصل كـ «خطأ غير متوقع».
    final res = await client.getEnvelope(ApiConstants.notifications);
    return (
      items: Paginated.from(res, NotificationModel.fromJson).items,
      unreadCount: res.metaInt('unread_count'),
    );
  }

  @override
  Future<void> markAsRead(String id) async {
    await client.post(ApiConstants.markNotificationRead(id));
  }

  @override
  Future<void> markAllAsRead() async {
    await client.post(ApiConstants.readAll);
  }

  @override
  Future<NotificationPreferencesModel> getPreferences() async {
    final data = await client.get(ApiConstants.notificationPreferences);
    return NotificationPreferencesModel.fromJson(data as Map<String, dynamic>);
  }

  @override
  Future<NotificationPreferencesModel> updatePreferences(
    Map<String, dynamic> body,
  ) async {
    final data = await client.put(
      ApiConstants.notificationPreferences,
      body: body,
    );
    return NotificationPreferencesModel.fromJson(data as Map<String, dynamic>);
  }
}
