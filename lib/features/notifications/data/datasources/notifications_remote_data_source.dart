import 'package:injectable/injectable.dart';
import '../../../../core/constants/api_constants.dart';
import '../../../../core/network/api_client.dart';
import '../models/notification_model.dart';

abstract class NotificationsRemoteDataSource {
  Future<({List<NotificationModel> items, int unreadCount})> getNotifications();
  Future<void> markAsRead(String id);
  Future<void> markAllAsRead();
}

@LazySingleton(as: NotificationsRemoteDataSource)
class NotificationsRemoteDataSourceImpl
    implements NotificationsRemoteDataSource {
  final ApiClient client;
  NotificationsRemoteDataSourceImpl(this.client);

  @override
  Future<({List<NotificationModel> items, int unreadCount})>
  getNotifications() async {
    // الـ unread count في meta — نقرأه من الـ response الخام عبر Dio
    final res = await client.dio.get(ApiConstants.notifications);
    final body = res.data as Map<String, dynamic>;

    final data = (body['data'] as List?) ?? [];
    final items = data
        .map((e) => NotificationModel.fromJson(e as Map<String, dynamic>))
        .toList();

    final meta = body['meta'] as Map<String, dynamic>?;
    final unread = (meta?['unread_count'] as num?)?.toInt() ?? 0;

    return (items: items, unreadCount: unread);
  }

  @override
  Future<void> markAsRead(String id) async {
    await client.post(ApiConstants.markNotificationRead(id));
  }

  @override
  Future<void> markAllAsRead() async {
    await client.post(ApiConstants.readAll);
  }
}
