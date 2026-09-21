import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/app_notification.dart';
import '../entities/notification_preferences.dart';
import '../repositories/notifications_repository.dart';

typedef NotificationsResult = ({List<AppNotification> items, int unreadCount});

@injectable
class GetNotifications implements UseCase<NotificationsResult, NoParams> {
  final NotificationsRepository repository;
  GetNotifications(this.repository);
  @override
  Future<Either<Failure, NotificationsResult>> call(NoParams params) =>
      repository.getNotifications();
}

@injectable
class MarkNotificationRead implements UseCase<Unit, String> {
  final NotificationsRepository repository;
  MarkNotificationRead(this.repository);
  @override
  Future<Either<Failure, Unit>> call(String id) => repository.markAsRead(id);
}

@injectable
class MarkAllNotificationsRead implements UseCase<Unit, NoParams> {
  final NotificationsRepository repository;
  MarkAllNotificationsRead(this.repository);
  @override
  Future<Either<Failure, Unit>> call(NoParams params) =>
      repository.markAllAsRead();
}

// ===== تفضيلات الإشعارات (تعديلات العميل 26 · 27 · 28 · 29 · 30) =====

/// قراءة التفضيلات + الأنواع المتاحة للاختيار.
@injectable
class GetNotificationPreferences
    implements UseCase<NotificationPreferences, NoParams> {
  final NotificationsRepository repository;
  GetNotificationPreferences(this.repository);

  @override
  Future<Either<Failure, NotificationPreferences>> call(NoParams params) =>
      repository.getPreferences();
}

/// حفظ التفضيلات.
@injectable
class UpdateNotificationPreferences
    implements UseCase<NotificationPreferences, NotificationPreferences> {
  final NotificationsRepository repository;
  UpdateNotificationPreferences(this.repository);

  @override
  Future<Either<Failure, NotificationPreferences>> call(
    NotificationPreferences preferences,
  ) => repository.updatePreferences(preferences);
}
