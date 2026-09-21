import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';
import '../entities/app_notification.dart';
import '../entities/notification_preferences.dart';

/// عقد الـ notifications repository.
abstract class NotificationsRepository {
  /// قائمة الإشعارات + عدد غير المقروء.
  Future<Either<Failure, ({List<AppNotification> items, int unreadCount})>>
  getNotifications();

  /// تعليم إشعار واحد كمقروء.
  Future<Either<Failure, Unit>> markAsRead(String id);

  /// تعليم الكل كمقروء.
  Future<Either<Failure, Unit>> markAllAsRead();

  // ===== تفضيلات الإشعارات (تعديلات العميل 27 · 28 · 30) =====

  Future<Either<Failure, NotificationPreferences>> getPreferences();

  /// بيبعت التفضيلات كاملة (مش تعديل جزئي) عشان القيم تفضل متسقة.
  Future<Either<Failure, NotificationPreferences>> updatePreferences(
    NotificationPreferences preferences,
  );
}
