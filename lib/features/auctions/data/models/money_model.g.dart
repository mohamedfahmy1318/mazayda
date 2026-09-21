// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'money_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MoneyModel _$MoneyModelFromJson(Map<String, dynamic> json) => _MoneyModel(
  amount: (json['amount'] as num?)?.toInt() ?? 0,
  formatted: json['formatted'] as String? ?? '',
);

Map<String, dynamic> _$MoneyModelToJson(_MoneyModel instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'formatted': instance.formatted,
    };
