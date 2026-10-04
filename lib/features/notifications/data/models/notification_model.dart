import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/app_notification.dart';

part 'notification_model.freezed.dart';
part 'notification_model.g.dart';

/// موديل الإشعار — يطابق عنصر قائمة /notifications.
@freezed
abstract class NotificationModel with _$NotificationModel {
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

  /// من حمولة `data` في إشعار Push (BE-11) — كل القيم فيها نصوص.
  ///
  /// `type` بنفس مفردات BE-2. باقي المفاتيح مش مثبّتة في العقد، فبنقرا
  /// البدائل المحتملة عشان التوجيه يشتغل أيًا كان اسمها على الباك.
  factory NotificationModel.fromPushData(
    Map<String, dynamic> data, {
    String? title,
    String? body,
  }) {
    String? pick(List<String> keys) {
      for (final k in keys) {
        final v = data[k]?.toString();
        if (v != null && v.isNotEmpty) return v;
      }
      return null;
    }

    final auctionId = pick(const ['auction_id']);
    return NotificationModel(
      id: pick(const ['notification_id', 'id']) ?? '',
      title: title ?? pick(const ['title']),
      body: body ?? pick(const ['body']),
      channel: 'PUSH',
      type: pick(const ['type', 'event']),
      // من غير رابط بس فيه `auction_id` → نبني مسار بنفس شكل `action_url`.
      actionUrl:
          pick(const ['action_url', 'url', 'link']) ??
          (auctionId != null ? '/auctions/$auctionId' : null),
    );
  }

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
