import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../auctions/data/models/money_model.dart';
import '../../domain/entities/subscription.dart';

part 'subscription_model.freezed.dart';
part 'subscription_model.g.dart';

/// باقة اشتراك — يطابق `SubscriptionPlanResource`.
@freezed
abstract class SubscriptionPlanModel with _$SubscriptionPlanModel {
  const SubscriptionPlanModel._();

  const factory SubscriptionPlanModel({
    String? code,
    String? name,
    String? description,
    String? period,
    @JsonKey(name: 'period_label') String? periodLabel,
    MoneyModel? price,
    @Default(<String>[]) List<String> features,
    @JsonKey(name: 'is_recommended') @Default(false) bool isRecommended,
  }) = _SubscriptionPlanModel;

  factory SubscriptionPlanModel.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionPlanModelFromJson(json);

  static const _zero = MoneyModel(amount: 0, formatted: '0 دج');

  SubscriptionPlan toEntity() => SubscriptionPlan(
    code: code ?? '',
    name: name ?? '',
    description: description,
    period: SubscriptionPeriodX.fromApi(period),
    periodLabel: periodLabel,
    price: (price ?? _zero).toEntity(),
    features: features,
    isRecommended: isRecommended,
  );
}

/// اشتراك قائم — يطابق `SubscriptionResource`.
@freezed
abstract class SubscriptionModel with _$SubscriptionModel {
  const SubscriptionModel._();

  const factory SubscriptionModel({
    String? id,
    String? status,
    @JsonKey(name: 'status_label') String? statusLabel,
    SubscriptionPlanModel? plan,
    @JsonKey(name: 'started_at') String? startedAt,
    @JsonKey(name: 'expires_at') String? expiresAt,
    @JsonKey(name: 'auto_renew') @Default(false) bool autoRenew,
    @JsonKey(name: 'days_remaining') int? daysRemaining,
  }) = _SubscriptionModel;

  factory SubscriptionModel.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionModelFromJson(json);

  Subscription toEntity() => Subscription(
    id: id ?? '',
    status: SubscriptionStatusX.fromApi(status),
    statusLabel: statusLabel,
    plan: plan?.toEntity(),
    startedAt: DateTime.tryParse(startedAt ?? ''),
    expiresAt: DateTime.tryParse(expiresAt ?? ''),
    autoRenew: autoRenew,
    daysRemaining: daysRemaining,
  );
}

/// ردّ `GET /subscription` — الاشتراك الحالي + الباقات في نداء واحد.
@freezed
abstract class PremiumOverviewModel with _$PremiumOverviewModel {
  const PremiumOverviewModel._();

  const factory PremiumOverviewModel({
    @JsonKey(name: 'is_premium') @Default(false) bool isPremium,
    SubscriptionModel? subscription,
    @Default(<SubscriptionPlanModel>[]) List<SubscriptionPlanModel> plans,
  }) = _PremiumOverviewModel;

  factory PremiumOverviewModel.fromJson(Map<String, dynamic> json) =>
      _$PremiumOverviewModelFromJson(json);

  PremiumOverview toEntity() => PremiumOverview(
    isPremium: isPremium,
    subscription: subscription?.toEntity(),
    plans: plans.map((p) => p.toEntity()).toList(),
  );
}
