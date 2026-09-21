// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_preferences_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CategoryOptionModel _$CategoryOptionModelFromJson(Map<String, dynamic> json) =>
    _CategoryOptionModel(id: json['id'], name: json['name'] as String?);

Map<String, dynamic> _$CategoryOptionModelToJson(
  _CategoryOptionModel instance,
) => <String, dynamic>{'id': instance.id, 'name': instance.name};

_NotificationChannelsModel _$NotificationChannelsModelFromJson(
  Map<String, dynamic> json,
) => _NotificationChannelsModel(
  push: json['push'] as bool? ?? true,
  email: json['email'] as bool? ?? false,
  sms: json['sms'] as bool? ?? false,
);

Map<String, dynamic> _$NotificationChannelsModelToJson(
  _NotificationChannelsModel instance,
) => <String, dynamic>{
  'push': instance.push,
  'email': instance.email,
  'sms': instance.sms,
};

_NotificationPreferencesModel _$NotificationPreferencesModelFromJson(
  Map<String, dynamic> json,
) => _NotificationPreferencesModel(
  channels: json['channels'] == null
      ? null
      : NotificationChannelsModel.fromJson(
          json['channels'] as Map<String, dynamic>,
        ),
  auctionCategories:
      json['auction_categories'] as List<dynamic>? ?? const <dynamic>[],
  newAuctionAlerts: json['new_auction_alerts'] as bool? ?? true,
  availableCategories:
      (json['available_categories'] as List<dynamic>?)
          ?.map((e) => CategoryOptionModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <CategoryOptionModel>[],
  emailRequiresPremium: json['email_requires_premium'] as bool? ?? false,
  isPremium: json['is_premium'] as bool? ?? false,
  smsAvailable: json['sms_available'] as bool? ?? false,
);

Map<String, dynamic> _$NotificationPreferencesModelToJson(
  _NotificationPreferencesModel instance,
) => <String, dynamic>{
  'channels': instance.channels,
  'auction_categories': instance.auctionCategories,
  'new_auction_alerts': instance.newAuctionAlerts,
  'available_categories': instance.availableCategories,
  'email_requires_premium': instance.emailRequiresPremium,
  'is_premium': instance.isPremium,
  'sms_available': instance.smsAvailable,
};
