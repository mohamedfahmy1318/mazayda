// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaymentInitModel _$PaymentInitModelFromJson(Map<String, dynamic> json) =>
    _PaymentInitModel(
      redirectUrl: json['redirect_url'] as String?,
      ref: json['ref'] as String?,
    );

Map<String, dynamic> _$PaymentInitModelToJson(_PaymentInitModel instance) =>
    <String, dynamic>{
      'redirect_url': instance.redirectUrl,
      'ref': instance.ref,
    };

_PaymentStatusModel _$PaymentStatusModelFromJson(Map<String, dynamic> json) =>
    _PaymentStatusModel(
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

Map<String, dynamic> _$PaymentStatusModelToJson(_PaymentStatusModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'amount': instance.amount,
      'status': instance.status,
      'gateway_ref': instance.gatewayRef,
      'due_at': instance.dueAt,
      'confirmed_at': instance.confirmedAt,
      'created_at': instance.createdAt,
    };

_PaymentStatusResponseModel _$PaymentStatusResponseModelFromJson(
  Map<String, dynamic> json,
) => _PaymentStatusResponseModel(
  ref: json['ref'] as String?,
  gatewayRef: json['gateway_ref'] as String?,
  confirmed: json['confirmed'] as bool?,
  payments:
      (json['payments'] as List<dynamic>?)
          ?.map((e) => PaymentStatusModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <PaymentStatusModel>[],
);

Map<String, dynamic> _$PaymentStatusResponseModelToJson(
  _PaymentStatusResponseModel instance,
) => <String, dynamic>{
  'ref': instance.ref,
  'gateway_ref': instance.gatewayRef,
  'confirmed': instance.confirmed,
  'payments': instance.payments,
};
