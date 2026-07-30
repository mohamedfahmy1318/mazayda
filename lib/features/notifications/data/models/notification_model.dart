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
    String? channel,
    // نوع الحدث الدلالي (BE-2) — بيحدّد الأيقونة واللون والوجهة.
    // `null` للصفوف الأقدم من مهاجرة الباك → بنرجع لاشتقاقه من الرابط.
    String? type,
    @JsonKey(name: 'is_read') @Default(false) bool isRead,
    @JsonKey(name: 'action_url') String? actionUrl,
    @JsonKey(name: 'created_at') String? createdAt,
  }) = _NotificationModel;

  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationModelFromJson(json);

  AppNotification toEntity() => AppNotification(
    id: id,
    title: title ?? '',
    body: body ?? '',
    channel: NotificationChannelX.fromApi(channel),
    event: NotificationEventX.fromApi(type),
    actionUrl: actionUrl,
    isRead: isRead,
    createdAt: DateTime.tryParse(createdAt ?? '') ?? DateTime.now(),
  );
}
