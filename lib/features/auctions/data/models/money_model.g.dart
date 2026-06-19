// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'money_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MoneyModelImpl _$$MoneyModelImplFromJson(Map<String, dynamic> json) =>
    _$MoneyModelImpl(
      amount: (json['amount'] as num?)?.toInt() ?? 0,
      formatted: json['formatted'] as String? ?? '',
    );

Map<String, dynamic> _$$MoneyModelImplToJson(_$MoneyModelImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'formatted': instance.formatted,
    };
