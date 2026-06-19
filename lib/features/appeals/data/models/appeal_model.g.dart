// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appeal_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppealModelImpl _$$AppealModelImplFromJson(Map<String, dynamic> json) =>
    _$AppealModelImpl(
      id: json['id'] as String,
      subject: json['subject'] as String?,
      reason: json['reason'] as String?,
      auctionTitle: json['auction_title'] as String?,
      status: json['status'] as String?,
      createdAt: json['created_at'] as String?,
    );

Map<String, dynamic> _$$AppealModelImplToJson(_$AppealModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'subject': instance.subject,
      'reason': instance.reason,
      'auction_title': instance.auctionTitle,
      'status': instance.status,
      'created_at': instance.createdAt,
    };
