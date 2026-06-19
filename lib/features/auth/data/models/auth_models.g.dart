// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthTokensModelImpl _$$AuthTokensModelImplFromJson(
  Map<String, dynamic> json,
) => _$AuthTokensModelImpl(
  accessToken: json['access_token'] as String,
  refreshToken: json['refresh_token'] as String,
);

Map<String, dynamic> _$$AuthTokensModelImplToJson(
  _$AuthTokensModelImpl instance,
) => <String, dynamic>{
  'access_token': instance.accessToken,
  'refresh_token': instance.refreshToken,
};

_$AuthUserModelImpl _$$AuthUserModelImplFromJson(Map<String, dynamic> json) =>
    _$AuthUserModelImpl(
      id: json['id'] as String,
      firstNameAr: json['first_name_ar'] as String?,
      lastNameAr: json['last_name_ar'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      kycStatus: json['kyc_status'] as String? ?? 'PENDING',
    );

Map<String, dynamic> _$$AuthUserModelImplToJson(_$AuthUserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name_ar': instance.firstNameAr,
      'last_name_ar': instance.lastNameAr,
      'email': instance.email,
      'phone': instance.phone,
      'kyc_status': instance.kycStatus,
    };
