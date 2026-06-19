import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';
import '../entities/app_notification.dart';

/// عقد الـ notifications repository.
abstract class NotificationsRepository {
  /// قائمة الإشعارات + عدد غير المقروء.
  Future<Either<Failure, ({List<AppNotification> items, int unreadCount})>>
      getNotifications();

  /// عدّاد غير المقروء فقط (للـ badge).
  Future<Either<Failure, int>> getUnreadCount();

  /// تعليم إشعار واحد كمقروء.
  Future<Either<Failure, Unit>> markAsRead(String id);

  /// تعليم الكل كمقروء.
  Future<Either<Failure, Unit>> markAllAsRead();
}
