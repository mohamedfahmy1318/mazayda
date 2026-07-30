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

/// حدث الإشعار الدلالي — عمود `event` على جدول notifications (BE-2)،
/// وبيوصل كـ `type` في `NotificationResource`.
///
/// نفس المفردات بالظبط بتوصل في:
/// - `data.type` جوّه إشعار الـ Push (BE-11)
/// - حمولة `auction.personal` على القناة الخاصة (BE-10)
/// فالتوجيه بيتعمل مرة واحدة للتلات مسارات.
///
/// ⚠️ الصفوف الأقدم من المهاجرة `type: null` → [unknown]، ووقتها بنرجع
/// لاشتقاق التصنيف من `action_url`.
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
  // قرارات التوثيق — بتوصل للتطبيق من BE-5.
  kycApproved,
  kycRejected,
  kycSuspended,
  commercialRegisterApproved,
  commercialRegisterRejected,

  /// صف قديم من غير `event`، أو نوع جديد مش معروف للإصدار ده.
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
    'kyc_approved' => NotificationEvent.kycApproved,
    'kyc_rejected' => NotificationEvent.kycRejected,
    'kyc_suspended' => NotificationEvent.kycSuspended,
    'commercial_register_approved' =>
      NotificationEvent.commercialRegisterApproved,
    'commercial_register_rejected' =>
      NotificationEvent.commercialRegisterRejected,
    _ => NotificationEvent.unknown,
  };
}

/// تصنيف العرض (أيقونة + لون).
///
/// بيتحدد من `type` (BE-2). كل أحداث المزادات بتشترك في نفس الـ
/// `action_url` (`/auctions/{id}`) فالرابط لوحده مش كفاية — بيبقى مجرد
/// fallback للصفوف القديمة اللي `type` فيها null.
enum NotificationKind {
  auction,
  appeal,
  generic,
  won,
  outbid,
  lost,
  refund,
  payment,

  /// قرار توثيق (KYC أو سجل تجاري) — مقبول.
  verificationApproved,

  /// قرار توثيق مرفوض/موقوف.
  verificationRejected,
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

  /// قرار KYC — الباك بيوجّه لـ `citizen.kyc`.
  bool get pointsToKyc =>
      event == NotificationEvent.kycApproved ||
      event == NotificationEvent.kycRejected ||
      event == NotificationEvent.kycSuspended ||
      (actionUrl ?? '').contains('/kyc');

  /// قرار السجل التجاري — الباك بيوجّه لـ `citizen.commercial-register`.
  bool get pointsToCommercialRegister =>
      event == NotificationEvent.commercialRegisterApproved ||
      event == NotificationEvent.commercialRegisterRejected ||
      (actionUrl ?? '').contains('/commercial-register');

  /// تصنيف العرض — بيتحدد من `type` (BE-2)، وبيرجع للوجهة المشتقّة من
  /// الرابط للصفوف القديمة اللي `type` فيها null.
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
      case NotificationEvent.kycApproved:
      case NotificationEvent.commercialRegisterApproved:
        return NotificationKind.verificationApproved;
      case NotificationEvent.kycRejected:
      case NotificationEvent.kycSuspended:
      case NotificationEvent.commercialRegisterRejected:
        return NotificationKind.verificationRejected;
      case NotificationEvent.unknown:
        // صف قديم من غير `event` — نشتقّ الوجهة من الرابط.
        if (auctionId != null) return NotificationKind.auction;
        if (pointsToAppeals) return NotificationKind.appeal;
        if (pointsToKyc || pointsToCommercialRegister) {
          return NotificationKind.generic;
        }
        return NotificationKind.generic;
    }
  }

  /// فيه وجهة نقدر نفتحها جوّه التطبيق.
  bool get hasDestination =>
      auctionId != null ||
      pointsToAppeals ||
      pointsToKyc ||
      pointsToCommercialRegister;

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
