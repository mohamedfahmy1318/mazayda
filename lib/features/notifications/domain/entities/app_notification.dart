import 'package:equatable/equatable.dart';

/// نوع الإشعار — يحدّد الأيقونة واللون في الواجهة.
enum NotificationKind {
  won,
  outbid,
  refund,
  newAuction,
  reminder,
  payment,
  generic,
}

extension NotificationKindX on NotificationKind {
  static NotificationKind fromApi(String? v) => switch (v) {
        'AUCTION_WON' => NotificationKind.won,
        'OUTBID' => NotificationKind.outbid,
        'DEPOSIT_REFUNDED' || 'REFUND' => NotificationKind.refund,
        'NEW_AUCTION' => NotificationKind.newAuction,
        'AUCTION_REMINDER' || 'REMINDER' => NotificationKind.reminder,
        'PAYMENT_DEADLINE' || 'PAYMENT' => NotificationKind.payment,
        _ => NotificationKind.generic,
      };
}

/// إشعار واحد في الصندوق.
class AppNotification extends Equatable {
  final String id;
  final String title;
  final String body;
  final NotificationKind kind;
  final bool isRead;
  final DateTime createdAt;

  const AppNotification({
    required this.id,
    required this.title,
    required this.body,
    required this.kind,
    required this.isRead,
    required this.createdAt,
  });

  AppNotification copyWith({bool? isRead}) => AppNotification(
        id: id,
        title: title,
        body: body,
        kind: kind,
        isRead: isRead ?? this.isRead,
        createdAt: createdAt,
      );

  @override
  List<Object?> get props => [id, isRead];
}
