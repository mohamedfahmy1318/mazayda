// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthTokensModel _$AuthTokensModelFromJson(Map<String, dynamic> json) =>
    _AuthTokensModel(
      accessToken: json['access_token'] as String,
      refreshToken: json['refresh_token'] as String,
    );

Map<String, dynamic> _$AuthTokensModelToJson(_AuthTokensModel instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
    };

_AuthUserModel _$AuthUserModelFromJson(Map<String, dynamic> json) =>
    _AuthUserModel(
      id: json['id'] as String,
      firstNameAr: json['first_name_ar'] as String?,
      lastNameAr: json['last_name_ar'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      kycStatus: json['kyc_status'] as String? ?? 'PENDING',
    );

Map<String, dynamic> _$AuthUserModelToJson(_AuthUserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name_ar': instance.firstNameAr,
      'last_name_ar': instance.lastNameAr,
      'email': instance.email,
      'phone': instance.phone,
      'kyc_status': instance.kycStatus,
    };
