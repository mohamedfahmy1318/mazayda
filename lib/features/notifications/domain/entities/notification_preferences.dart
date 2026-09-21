import 'package:equatable/equatable.dart';

/// نوع مزايدة يقدر المواطن يختاره كاهتمام — تعديل العميل رقم 27.
class AuctionCategoryOption extends Equatable {
  final String id;
  final String name;

  const AuctionCategoryOption({required this.id, required this.name});

  @override
  List<Object?> get props => [id, name];
}

/// قنوات التوصيل اللي المواطن عايز يستقبل عليها — تعديل العميل رقم 30.
///
/// الـ SMS مذكور هنا لأن الباك بيدعمه في `NotificationChannel`، لكن الشاشة
/// بتعرضه بس لو السيرفر قال إنه متاح.
class NotificationChannels extends Equatable {
  final bool push;
  final bool email;
  final bool sms;

  const NotificationChannels({
    this.push = true,
    this.email = false,
    this.sms = false,
  });

  NotificationChannels copyWith({bool? push, bool? email, bool? sms}) =>
      NotificationChannels(
        push: push ?? this.push,
        email: email ?? this.email,
        sms: sms ?? this.sms,
      );

  @override
  List<Object?> get props => [push, email, sms];
}

/// تفضيلات الإشعارات الكاملة — تعديلات العميل 26 · 27 · 28 · 29 · 30.
class NotificationPreferences extends Equatable {
  final NotificationChannels channels;

  /// أنواع المزايدات اللي المواطن مهتم بيها (تعديل 27). فاضية = كل الأنواع.
  final List<String> categoryIds;

  /// تنبيه بالمزايدات الجديدة المطابقة للاهتمامات (تعديلات 26 · 28).
  final bool newAuctionAlerts;

  /// كل الأنواع المتاحة للاختيار — بتيجي مع نفس الردّ فالشاشة بتتحمّل
  /// بنداء واحد.
  final List<AuctionCategoryOption> availableCategories;

  /// إشعارات البريد متاحة للمشتركين بس (تعديل 29) — السيرفر بيقرر، والشاشة
  /// بتعطّل الخيار وتشرح السبب بدل ما تخفيه.
  final bool emailRequiresPremium;

  /// المواطن مشترك دلوقتي — بيتقرا من نفس الردّ.
  final bool isPremium;

  /// المنصّة عندها مزوّد رسائل نصية شغّال.
  ///
  /// لحد ما يتربط مزوّد، السيرفر بيرفض تشغيل الـ SMS وبيرجّعه `false` حتى
  /// لو بعتناه `true`. فبنخفي الخيار بدل ما نسيب المستخدم يشغّله ويلاقيه
  /// رجع مقفول من غير سبب. (عكس البريد: البريد ليه طريق — يشترك.)
  final bool smsAvailable;

  const NotificationPreferences({
    this.channels = const NotificationChannels(),
    this.categoryIds = const [],
    this.newAuctionAlerts = true,
    this.availableCategories = const [],
    this.emailRequiresPremium = false,
    this.isPremium = false,
    this.smsAvailable = false,
  });

  /// خيار البريد مقفول عليه — مشترك مطلوب وهو مش مشترك.
  bool get emailLocked => emailRequiresPremium && !isPremium;

  NotificationPreferences copyWith({
    NotificationChannels? channels,
    List<String>? categoryIds,
    bool? newAuctionAlerts,
  }) => NotificationPreferences(
    channels: channels ?? this.channels,
    categoryIds: categoryIds ?? this.categoryIds,
    newAuctionAlerts: newAuctionAlerts ?? this.newAuctionAlerts,
    availableCategories: availableCategories,
    emailRequiresPremium: emailRequiresPremium,
    isPremium: isPremium,
    smsAvailable: smsAvailable,
  );

  @override
  List<Object?> get props => [
    channels,
    categoryIds,
    newAuctionAlerts,
    isPremium,
  ];
}
