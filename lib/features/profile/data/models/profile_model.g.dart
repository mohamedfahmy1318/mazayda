// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileModelImpl _$$ProfileModelImplFromJson(Map<String, dynamic> json) =>
    _$ProfileModelImpl(
      id: json['id'] as String,
      ninMasked: json['nin_masked'] as String?,
      firstNameAr: json['first_name_ar'] as String?,
      lastNameAr: json['last_name_ar'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      address: json['address'] as String?,
      postalCode: json['postal_code'] as String?,
      profession: json['profession'] as String?,
      wilayaName: json['wilaya_name'] as String?,
      kycStatus: json['kyc_status'] as String? ?? 'PENDING',
    );

Map<String, dynamic> _$$ProfileModelImplToJson(_$ProfileModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nin_masked': instance.ninMasked,
      'first_name_ar': instance.firstNameAr,
      'last_name_ar': instance.lastNameAr,
      'email': instance.email,
      'phone': instance.phone,
      'address': instance.address,
      'postal_code': instance.postalCode,
      'profession': instance.profession,
      'wilaya_name': instance.wilayaName,
      'kyc_status': instance.kycStatus,
    };
