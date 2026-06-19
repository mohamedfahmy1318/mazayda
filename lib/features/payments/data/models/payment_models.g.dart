// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentInitModelImpl _$$PaymentInitModelImplFromJson(
  Map<String, dynamic> json,
) => _$PaymentInitModelImpl(
  redirectUrl: json['redirect_url'] as String?,
  ref: json['ref'] as String?,
);

Map<String, dynamic> _$$PaymentInitModelImplToJson(
  _$PaymentInitModelImpl instance,
) => <String, dynamic>{
  'redirect_url': instance.redirectUrl,
  'ref': instance.ref,
};

_$PaymentStatusModelImpl _$$PaymentStatusModelImplFromJson(
  Map<String, dynamic> json,
) => _$PaymentStatusModelImpl(
  ref: json['ref'] as String?,
  paymentType: json['payment_type'] as String?,
  status: json['status'] as String?,
  isConfirmed: json['is_confirmed'] as bool? ?? false,
);

Map<String, dynamic> _$$PaymentStatusModelImplToJson(
  _$PaymentStatusModelImpl instance,
) => <String, dynamic>{
  'ref': instance.ref,
  'payment_type': instance.paymentType,
  'status': instance.status,
  'is_confirmed': instance.isConfirmed,
};
