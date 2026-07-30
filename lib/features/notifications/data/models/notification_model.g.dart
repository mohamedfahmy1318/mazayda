// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationModelImpl _$$NotificationModelImplFromJson(
  Map<String, dynamic> json,
) => _$NotificationModelImpl(
  id: json['id'] as String,
  title: json['title'] as String?,
  body: json['body'] as String?,
  channel: json['channel'] as String?,
  type: json['type'] as String?,
  isRead: json['is_read'] as bool? ?? false,
  actionUrl: json['action_url'] as String?,
  createdAt: json['created_at'] as String?,
);

Map<String, dynamic> _$$NotificationModelImplToJson(
  _$NotificationModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'body': instance.body,
  'channel': instance.channel,
  'type': instance.type,
  'is_read': instance.isRead,
  'action_url': instance.actionUrl,
  'created_at': instance.createdAt,
};
