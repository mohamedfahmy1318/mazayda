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
  id: json['id'] as String?,
  type: json['type'] as String?,
  amount: json['amount'] == null
      ? null
      : MoneyModel.fromJson(json['amount'] as Map<String, dynamic>),
  status: json['status'] as String?,
  gatewayRef: json['gateway_ref'] as String?,
  dueAt: json['due_at'] as String?,
  confirmedAt: json['confirmed_at'] as String?,
  createdAt: json['created_at'] as String?,
);

Map<String, dynamic> _$$PaymentStatusModelImplToJson(
  _$PaymentStatusModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'type': instance.type,
  'amount': instance.amount,
  'status': instance.status,
  'gateway_ref': instance.gatewayRef,
  'due_at': instance.dueAt,
  'confirmed_at': instance.confirmedAt,
  'created_at': instance.createdAt,
};

_$PaymentStatusResponseModelImpl _$$PaymentStatusResponseModelImplFromJson(
  Map<String, dynamic> json,
) => _$PaymentStatusResponseModelImpl(
  ref: json['ref'] as String?,
  payments:
      (json['payments'] as List<dynamic>?)
          ?.map((e) => PaymentStatusModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <PaymentStatusModel>[],
);

Map<String, dynamic> _$$PaymentStatusResponseModelImplToJson(
  _$PaymentStatusResponseModelImpl instance,
) => <String, dynamic>{'ref': instance.ref, 'payments': instance.payments};
