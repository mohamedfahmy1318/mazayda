import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/app_notification.dart';
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
