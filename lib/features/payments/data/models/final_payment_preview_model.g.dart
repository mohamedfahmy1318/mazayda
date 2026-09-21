// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'final_payment_preview_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FeeLineModel _$FeeLineModelFromJson(Map<String, dynamic> json) =>
    _FeeLineModel(
      key: json['key'] as String?,
      label: json['label'] as String?,
      amount: (json['amount'] as num?)?.toInt() ?? 0,
      formatted: json['formatted'] as String?,
    );

Map<String, dynamic> _$FeeLineModelToJson(_FeeLineModel instance) =>
    <String, dynamic>{
      'key': instance.key,
      'label': instance.label,
      'amount': instance.amount,
      'formatted': instance.formatted,
    };

_FinalPaymentPreviewModel _$FinalPaymentPreviewModelFromJson(
  Map<String, dynamic> json,
) => _FinalPaymentPreviewModel(
  alreadyPaid: json['already_paid'] as bool? ?? false,
  lines:
      (json['lines'] as List<dynamic>?)
          ?.map((e) => FeeLineModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <FeeLineModel>[],
  confirmedDeposit: (json['confirmed_deposit'] as num?)?.toInt() ?? 0,
  amountDue: (json['amount_due'] as num?)?.toInt() ?? 0,
  amountDueFormatted: json['amount_due_formatted'] as String?,
  customsImmediateDue: (json['customs_immediate_due'] as num?)?.toInt(),
  dueAt: json['due_at'] as String?,
  deadlineDays: (json['deadline_days'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$FinalPaymentPreviewModelToJson(
  _FinalPaymentPreviewModel instance,
) => <String, dynamic>{
  'already_paid': instance.alreadyPaid,
  'lines': instance.lines,
  'confirmed_deposit': instance.confirmedDeposit,
  'amount_due': instance.amountDue,
  'amount_due_formatted': instance.amountDueFormatted,
  'customs_immediate_due': instance.customsImmediateDue,
  'due_at': instance.dueAt,
  'deadline_days': instance.deadlineDays,
};
