// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appeal_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppealAuctionRefModelImpl _$$AppealAuctionRefModelImplFromJson(
  Map<String, dynamic> json,
) => _$AppealAuctionRefModelImpl(
  id: json['id'] as String?,
  title: json['title'] as String?,
);

Map<String, dynamic> _$$AppealAuctionRefModelImplToJson(
  _$AppealAuctionRefModelImpl instance,
) => <String, dynamic>{'id': instance.id, 'title': instance.title};

_$AppealModelImpl _$$AppealModelImplFromJson(Map<String, dynamic> json) =>
    _$AppealModelImpl(
      id: json['id'] as String,
      subject: json['subject'] as String?,
      reason: json['reason'] as String?,
      status: json['status'] as String?,
      statusLabel: json['status_label'] as String?,
      adminResponse: json['admin_response'] as String?,
      entityResponse: json['entity_response'] as String?,
      auction: json['auction'] == null
          ? null
          : AppealAuctionRefModel.fromJson(
              json['auction'] as Map<String, dynamic>,
            ),
      createdAt: json['created_at'] as String?,
      forwardedAt: json['forwarded_at'] as String?,
      entityDecidedAt: json['entity_decided_at'] as String?,
      resolvedAt: json['resolved_at'] as String?,
    );

Map<String, dynamic> _$$AppealModelImplToJson(_$AppealModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'subject': instance.subject,
      'reason': instance.reason,
      'status': instance.status,
      'status_label': instance.statusLabel,
      'admin_response': instance.adminResponse,
      'entity_response': instance.entityResponse,
      'auction': instance.auction,
      'created_at': instance.createdAt,
      'forwarded_at': instance.forwardedAt,
      'entity_decided_at': instance.entityDecidedAt,
      'resolved_at': instance.resolvedAt,
    };
