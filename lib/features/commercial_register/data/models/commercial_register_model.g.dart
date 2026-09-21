// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commercial_register_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CrDocumentsModel _$CrDocumentsModelFromJson(Map<String, dynamic> json) =>
    _CrDocumentsModel(
      register: json['register'] as bool? ?? false,
      taxCard: json['tax-card'] as bool? ?? false,
    );

Map<String, dynamic> _$CrDocumentsModelToJson(_CrDocumentsModel instance) =>
    <String, dynamic>{
      'register': instance.register,
      'tax-card': instance.taxCard,
    };

_CommercialRegisterModel _$CommercialRegisterModelFromJson(
  Map<String, dynamic> json,
) => _CommercialRegisterModel(
  status: json['status'] as String?,
  companyName: json['company_name'] as String?,
  registerNumber: json['register_number'] as String?,
  taxNumber: json['tax_number'] as String?,
  activityType: json['activity_type'] as String?,
  startDate: json['start_date'] as String?,
  rejectionReason: json['rejection_reason'] as String?,
  submittedAt: json['submitted_at'] as String?,
  reviewedAt: json['reviewed_at'] as String?,
  canSubmit: json['can_submit'] as bool? ?? true,
  isValid: json['is_valid'] as bool? ?? false,
  documents: json['documents'] == null
      ? null
      : CrDocumentsModel.fromJson(json['documents'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CommercialRegisterModelToJson(
  _CommercialRegisterModel instance,
) => <String, dynamic>{
  'status': instance.status,
  'company_name': instance.companyName,
  'register_number': instance.registerNumber,
  'tax_number': instance.taxNumber,
  'activity_type': instance.activityType,
  'start_date': instance.startDate,
  'rejection_reason': instance.rejectionReason,
  'submitted_at': instance.submittedAt,
  'reviewed_at': instance.reviewedAt,
  'can_submit': instance.canSubmit,
  'is_valid': instance.isValid,
  'documents': instance.documents,
};
