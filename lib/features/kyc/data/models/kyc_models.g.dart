// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kyc_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$KycStatusModelImpl _$$KycStatusModelImplFromJson(Map<String, dynamic> json) =>
    _$KycStatusModelImpl(
      status: json['status'] as String?,
      documentsOnFile:
          (json['documents_on_file'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      canSubmit: json['can_submit'] as bool? ?? false,
    );

Map<String, dynamic> _$$KycStatusModelImplToJson(
  _$KycStatusModelImpl instance,
) => <String, dynamic>{
  'status': instance.status,
  'documents_on_file': instance.documentsOnFile,
  'can_submit': instance.canSubmit,
};

_$WilayaModelImpl _$$WilayaModelImplFromJson(Map<String, dynamic> json) =>
    _$WilayaModelImpl(
      id: (json['id'] as num).toInt(),
      code: json['code'] as String? ?? '',
      nameAr: json['name_ar'] as String?,
      nameFr: json['name_fr'] as String?,
    );

Map<String, dynamic> _$$WilayaModelImplToJson(_$WilayaModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'name_ar': instance.nameAr,
      'name_fr': instance.nameFr,
    };

_$CommuneModelImpl _$$CommuneModelImplFromJson(Map<String, dynamic> json) =>
    _$CommuneModelImpl(
      id: (json['id'] as num).toInt(),
      nameAr: json['name_ar'] as String?,
      nameFr: json['name_fr'] as String?,
      postalCode: json['postal_code'] as String?,
    );

Map<String, dynamic> _$$CommuneModelImplToJson(_$CommuneModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name_ar': instance.nameAr,
      'name_fr': instance.nameFr,
      'postal_code': instance.postalCode,
    };
