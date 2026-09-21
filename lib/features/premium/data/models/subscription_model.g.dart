// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SubscriptionPlanModel _$SubscriptionPlanModelFromJson(
  Map<String, dynamic> json,
) => _SubscriptionPlanModel(
  code: json['code'] as String?,
  name: json['name'] as String?,
  description: json['description'] as String?,
  period: json['period'] as String?,
  periodLabel: json['period_label'] as String?,
  price: json['price'] == null
      ? null
      : MoneyModel.fromJson(json['price'] as Map<String, dynamic>),
  features:
      (json['features'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
  isRecommended: json['is_recommended'] as bool? ?? false,
);

Map<String, dynamic> _$SubscriptionPlanModelToJson(
  _SubscriptionPlanModel instance,
) => <String, dynamic>{
  'code': instance.code,
  'name': instance.name,
  'description': instance.description,
  'period': instance.period,
  'period_label': instance.periodLabel,
  'price': instance.price,
  'features': instance.features,
  'is_recommended': instance.isRecommended,
};

_SubscriptionModel _$SubscriptionModelFromJson(Map<String, dynamic> json) =>
    _SubscriptionModel(
      id: json['id'] as String?,
      status: json['status'] as String?,
      statusLabel: json['status_label'] as String?,
      plan: json['plan'] == null
          ? null
          : SubscriptionPlanModel.fromJson(
              json['plan'] as Map<String, dynamic>,
            ),
      startedAt: json['started_at'] as String?,
      expiresAt: json['expires_at'] as String?,
      autoRenew: json['auto_renew'] as bool? ?? false,
      daysRemaining: (json['days_remaining'] as num?)?.toInt(),
    );

Map<String, dynamic> _$SubscriptionModelToJson(_SubscriptionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'status_label': instance.statusLabel,
      'plan': instance.plan,
      'started_at': instance.startedAt,
      'expires_at': instance.expiresAt,
      'auto_renew': instance.autoRenew,
      'days_remaining': instance.daysRemaining,
    };

_PremiumOverviewModel _$PremiumOverviewModelFromJson(
  Map<String, dynamic> json,
) => _PremiumOverviewModel(
  isPremium: json['is_premium'] as bool? ?? false,
  subscription: json['subscription'] == null
      ? null
      : SubscriptionModel.fromJson(
          json['subscription'] as Map<String, dynamic>,
        ),
  plans:
      (json['plans'] as List<dynamic>?)
          ?.map(
            (e) => SubscriptionPlanModel.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const <SubscriptionPlanModel>[],
);

Map<String, dynamic> _$PremiumOverviewModelToJson(
  _PremiumOverviewModel instance,
) => <String, dynamic>{
  'is_premium': instance.isPremium,
  'subscription': instance.subscription,
  'plans': instance.plans,
};
