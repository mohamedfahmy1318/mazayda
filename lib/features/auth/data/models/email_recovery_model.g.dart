// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'email_recovery_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EmailRecoveryModel _$EmailRecoveryModelFromJson(Map<String, dynamic> json) =>
    _EmailRecoveryModel(
      id: json['id'] as String?,
      status: json['status'] as String?,
      statusLabel: json['status_label'] as String?,
      newEmailMasked: json['new_email_masked'] as String?,
      submittedAt: json['submitted_at'] as String?,
      reviewedAt: json['reviewed_at'] as String?,
      rejectionReason: json['rejection_reason'] as String?,
    );

Map<String, dynamic> _$EmailRecoveryModelToJson(_EmailRecoveryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'status_label': instance.statusLabel,
      'new_email_masked': instance.newEmailMasked,
      'submitted_at': instance.submittedAt,
      'reviewed_at': instance.reviewedAt,
      'rejection_reason': instance.rejectionReason,
    };
