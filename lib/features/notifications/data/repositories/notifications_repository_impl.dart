import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/entities/app_notification.dart';
import '../../domain/repositories/notifications_repository.dart';
import '../datasources/notifications_remote_data_source.dart';

@LazySingleton(as: NotificationsRepository)
class NotificationsRepositoryImpl implements NotificationsRepository {
  final NotificationsRemoteDataSource remote;
  NotificationsRepositoryImpl(this.remote);

  @override
  Future<Either<Failure, ({List<AppNotification> items, int unreadCount})>>
      getNotifications() {
    return _guard(() async {
      final res = await remote.getNotifications();
      return (
        items: res.items.map((m) => m.toEntity()).toList(),
        unreadCount: res.unreadCount,
      );
    });
  }

  @override
  Future<Either<Failure, int>> getUnreadCount() {
    return _guard(() async => remote.getUnreadCount());
  }

  @override
  Future<Either<Failure, Unit>> markAsRead(String id) {
    return _guard(() async {
      await remote.markAsRead(id);
      return unit;
    });
  }

  @override
  Future<Either<Failure, Unit>> markAllAsRead() {
    return _guard(() async {
      await remote.markAllAsRead();
      return unit;
    });
  }

  Future<Either<Failure, T>> _guard<T>(Future<T> Function() action) async {
    try {
      return Right(await action());
    } on UnauthorizedException catch (e) {
      return Left(Failure.unauthorized(message: e.message));
    } on NetworkException catch (e) {
      return Left(Failure.network(message: e.message));
    } on ServerException catch (e) {
      return Left(Failure.server(
        message: e.message,
        statusCode: e.statusCode,
        errors: e.errors,
      ));
    } catch (_) {
      return const Left(Failure.unexpected());
    }
  }
}
