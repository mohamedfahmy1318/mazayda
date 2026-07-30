import 'package:equatable/equatable.dart';

/// قناة التسليم — app/Enums/NotificationChannel.php.
/// عمليًا كل اللي بيتخزّن ويوصل للتطبيق هو IN_APP (من InAppChannel).
enum NotificationChannel { push, sms, email, inApp, unknown }

extension NotificationChannelX on NotificationChannel {
  static NotificationChannel fromApi(String? v) => switch (v) {
    'PUSH' => NotificationChannel.push,
    'SMS' => NotificationChannel.sms,
    'EMAIL' => NotificationChannel.email,
    'IN_APP' => NotificationChannel.inApp,
    _ => NotificationChannel.unknown,
  };
}

/// حدث الإشعار الدلالي — مفاتيح `AuctionEventNotification::$event` في الباك.
///
/// ⚠️ لسه **مش بيترجّع** في `NotificationResource` (طلب BE-2). التطبيق جاهز
/// ليه مسبقًا: أول ما الباك يبعت `type`، الأيقونة واللون بيبقوا لكل حدث
/// على حدة تلقائيًا — من غير أي تعديل هنا.
enum NotificationEvent {
  outbid,
  auctionWon,
  auctionLost,
  paymentConfirmed,
  paymentFailed,
  finalPaymentDue,
  depositRefunded,
  depositForfeited,
  conditionBookPublished,
  inspectionAnswered,
  deliveryUpdate,
  appealUpdated,

  /// الباك لسه مبعتش النوع، أو نوع مش معروف.
  unknown,
}

extension NotificationEventX on NotificationEvent {
  static NotificationEvent fromApi(String? v) => switch (v) {
    'outbid' => NotificationEvent.outbid,
    'auction_won' => NotificationEvent.auctionWon,
    'auction_lost' => NotificationEvent.auctionLost,
    'payment_confirmed' => NotificationEvent.paymentConfirmed,
    'payment_failed' => NotificationEvent.paymentFailed,
    'final_payment_due' => NotificationEvent.finalPaymentDue,
    'deposit_refunded' => NotificationEvent.depositRefunded,
    'deposit_forfeited' => NotificationEvent.depositForfeited,
    'condition_book_published' => NotificationEvent.conditionBookPublished,
    'inspection_answered' => NotificationEvent.inspectionAnswered,
    'delivery_update' => NotificationEvent.deliveryUpdate,
    'appeal_updated' => NotificationEvent.appealUpdated,
    _ => NotificationEvent.unknown,
  };
}

/// وجهة الإشعار — **مشتقّة من action_url** لأن الباك مش بيرسل أي نوع دلالي.
///
/// ملاحظة مهمة: كل أحداث المزادات (تفوّق عليك / فزت / خسرت / تأكيد دفع /
/// استرداد كفالة …) بتشترك في نفس الرابط `/auctions/{id}`، فمستحيل نفرّق
/// بينها من العميل. لتفعيل أيقونة ولون لكل حدث لازم الباك يضيف حقل `type`
/// في NotificationResource (طلب BE-2).
enum NotificationKind {
  auction,
  appeal,
  generic,
  // التصنيفات دي بتتفعّل بس لما الباك يبعت `type` (BE-2).
  won,
  outbid,
  lost,
  refund,
  payment,
}

/// إشعار واحد في الصندوق — يطابق NotificationResource:
/// {id, title, body, channel, is_read, action_url, created_at}
class AppNotification extends Equatable {
  final String id;
  final String title;
  final String body;
  final NotificationChannel channel;

  /// نوع الحدث — `unknown` طالما الباك مبعتوش (BE-2).
  final NotificationEvent event;

  /// رابط كامل من الباك (مولّد بـ route()) — مثال:
  /// https://…/auctions/{id} أو https://…/citizen/appeals
  final String? actionUrl;

  final bool isRead;
  final DateTime createdAt;

  const AppNotification({
    required this.id,
    required this.title,
    required this.body,
    this.channel = NotificationChannel.inApp,
    this.event = NotificationEvent.unknown,
    this.actionUrl,
    required this.isRead,
    required this.createdAt,
  });

  /// معرّف المزاد لو الرابط بيشير لمزاد — عشان نفتحه **داخل التطبيق**
  /// بدل ما نفتح المتصفح.
  String? get auctionId {
    final url = actionUrl;
    if (url == null || url.isEmpty) return null;
    final segments = Uri.tryParse(url)?.pathSegments ?? const <String>[];
    final i = segments.indexOf('auctions');
    if (i >= 0 && i + 1 < segments.length) return segments[i + 1];
    return null;
  }

  /// الإشعار بيشير لصفحة الطعون.
  bool get pointsToAppeals => (actionUrl ?? '').contains('/appeals');

  /// تصنيف العرض — بيفضّل نوع الحدث لو الباك بعته (BE-2)، وبيرجع للوجهة
  /// المشتقّة من الرابط لو مبعتوش.
  NotificationKind get kind {
    switch (event) {
      case NotificationEvent.auctionWon:
        return NotificationKind.won;
      case NotificationEvent.outbid:
        return NotificationKind.outbid;
      case NotificationEvent.auctionLost:
      case NotificationEvent.depositForfeited:
        return NotificationKind.lost;
      case NotificationEvent.depositRefunded:
        return NotificationKind.refund;
      case NotificationEvent.paymentConfirmed:
      case NotificationEvent.paymentFailed:
      case NotificationEvent.finalPaymentDue:
        return NotificationKind.payment;
      case NotificationEvent.conditionBookPublished:
      case NotificationEvent.inspectionAnswered:
      case NotificationEvent.deliveryUpdate:
        return NotificationKind.auction;
      case NotificationEvent.appealUpdated:
        return NotificationKind.appeal;
      case NotificationEvent.unknown:
        // الباك لسه مبعتش النوع — نشتقّ الوجهة من الرابط.
        if (auctionId != null) return NotificationKind.auction;
        if (pointsToAppeals) return NotificationKind.appeal;
        return NotificationKind.generic;
    }
  }

  /// فيه وجهة نقدر نفتحها جوّه التطبيق.
  bool get hasDestination => auctionId != null || pointsToAppeals;

  AppNotification copyWith({bool? isRead}) => AppNotification(
    id: id,
    title: title,
    body: body,
    channel: channel,
    event: event,
    actionUrl: actionUrl,
    isRead: isRead ?? this.isRead,
    createdAt: createdAt,
  );

  @override
  List<Object?> get props => [id, isRead];
}
