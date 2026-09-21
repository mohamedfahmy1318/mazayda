import 'package:equatable/equatable.dart';
import '../../../auctions/domain/entities/money.dart';

/// دورة الاشتراك — شهري أو سنوي (تعديل العميل رقم 24).
enum SubscriptionPeriod { monthly, yearly, unknown }

extension SubscriptionPeriodX on SubscriptionPeriod {
  static SubscriptionPeriod fromApi(String? v) => switch (v) {
    'MONTHLY' => SubscriptionPeriod.monthly,
    'YEARLY' => SubscriptionPeriod.yearly,
    _ => SubscriptionPeriod.unknown,
  };
}

/// حالة الاشتراك (تعديل العميل رقم 25).
enum SubscriptionStatus { active, pending, expired, cancelled, unknown }

extension SubscriptionStatusX on SubscriptionStatus {
  static SubscriptionStatus fromApi(String? v) => switch (v) {
    'ACTIVE' => SubscriptionStatus.active,
    'PENDING' => SubscriptionStatus.pending,
    'EXPIRED' => SubscriptionStatus.expired,
    'CANCELLED' => SubscriptionStatus.cancelled,
    _ => SubscriptionStatus.unknown,
  };

  /// الاشتراك شغّال فعلًا — مميزات Premium متاحة.
  bool get grantsAccess => this == SubscriptionStatus.active;
}

/// باقة اشتراك معروضة للشراء.
class SubscriptionPlan extends Equatable {
  final String code;
  final String name;
  final String? description;
  final SubscriptionPeriod period;
  final Money price;

  /// مميزات الباقة — نصوص **مترجمة من السيرفر**، فإضافة ميزة جديدة
  /// مابتحتاجش إصدار تطبيق جديد.
  final List<String> features;

  /// الباقة الموصى بيها — بتتعرض بإطار مميّز.
  final bool isRecommended;

  const SubscriptionPlan({
    required this.code,
    required this.name,
    this.description,
    required this.period,
    required this.price,
    this.features = const [],
    this.isRecommended = false,
  });

  @override
  List<Object?> get props => [code, period, price];
}

/// اشتراك المواطن الحالي (تعديل العميل رقم 25).
class Subscription extends Equatable {
  final String id;
  final SubscriptionStatus status;

  /// نص الحالة مترجَم من السيرفر.
  final String? statusLabel;

  final SubscriptionPlan? plan;
  final DateTime? startedAt;
  final DateTime? expiresAt;

  /// التجديد التلقائي شغّال — المواطن يقدر يوقفه من شاشة الاشتراك.
  final bool autoRenew;

  /// الأيام المتبقية كما يحسبها السيرفر — أدق من الحساب بساعة الجهاز.
  final int? daysRemaining;

  const Subscription({
    required this.id,
    required this.status,
    this.statusLabel,
    this.plan,
    this.startedAt,
    this.expiresAt,
    this.autoRenew = false,
    this.daysRemaining,
  });

  bool get isActive => status.grantsAccess;

  /// قرب على الانتهاء — نلفت نظر المواطن للتجديد.
  bool get isExpiringSoon =>
      isActive && daysRemaining != null && daysRemaining! <= 7;

  @override
  List<Object?> get props => [id, status, expiresAt, autoRenew];
}

/// لقطة شاشة Premium: الاشتراك الحالي (لو فيه) + الباقات المتاحة.
class PremiumOverview extends Equatable {
  /// علم السيرفر — المرجع في إتاحة المميزات، مش حساب محلي من التواريخ.
  final bool isPremium;

  /// `null` لو المواطن ماشتركش قبل كده خالص.
  final Subscription? subscription;

  final List<SubscriptionPlan> plans;

  const PremiumOverview({
    this.isPremium = false,
    this.subscription,
    this.plans = const [],
  });

  @override
  List<Object?> get props => [isPremium, subscription, plans];
}
