import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/app_notification.dart';

part 'notification_model.freezed.dart';
part 'notification_model.g.dart';

/// موديل الإشعار — يطابق عنصر قائمة /notifications.
@freezed
class NotificationModel with _$NotificationModel {
  const NotificationModel._();

  const factory NotificationModel({
    required String id,
    String? title,
    String? body,
    String? type,
    @JsonKey(name: 'read_at') String? readAt,
    @JsonKey(name: 'is_read') bool? isRead,
    @JsonKey(name: 'created_at') String? createdAt,
  }) = _NotificationModel;

  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationModelFromJson(json);

  AppNotification toEntity() => AppNotification(
        id: id,
        title: title ?? '',
        body: body ?? '',
        kind: NotificationKindX.fromApi(type),
        // مقروء لو is_read=true أو فيه read_at
        isRead: isRead ?? (readAt != null),
        createdAt: DateTime.tryParse(createdAt ?? '') ?? DateTime.now(),
      );
}
