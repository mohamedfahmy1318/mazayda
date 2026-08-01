import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/utils/money_format.dart';
import '../../domain/entities/final_payment_preview.dart';

part 'final_payment_preview_model.freezed.dart';
part 'final_payment_preview_model.g.dart';

/// بند رسوم — `{key, label, amount, formatted}` بشكل **مسطّح**
/// (مش الكائن المتداخل المستخدم في باقي المبالغ).
@freezed
class FeeLineModel with _$FeeLineModel {
  const FeeLineModel._();

  const factory FeeLineModel({
    String? key,
    String? label,
    @Default(0) int amount,
    String? formatted,
  }) = _FeeLineModel;

  factory FeeLineModel.fromJson(Map<String, dynamic> json) =>
      _$FeeLineModelFromJson(json);

  FeeLine toEntity() => FeeLine(
    key: key ?? '',
    label: label ?? '',
    amount: amount,
    formatted: bidiSafeNumber(formatted ?? ''),
  );
}

/// يطابق ردّ `GET /auctions/{id}/final-payment/preview`.
/// كل المبالغ **بالدينار** (الباك بيمرّرها على `dinars()` اللي بترجع int).
@freezed
class FinalPaymentPreviewModel with _$FinalPaymentPreviewModel {
  const FinalPaymentPreviewModel._();

  const factory FinalPaymentPreviewModel({
    @JsonKey(name: 'already_paid') @Default(false) bool alreadyPaid,
    @Default(<FeeLineModel>[]) List<FeeLineModel> lines,
    @JsonKey(name: 'confirmed_deposit') @Default(0) int confirmedDeposit,
    @JsonKey(name: 'amount_due') @Default(0) int amountDue,
    @JsonKey(name: 'amount_due_formatted') String? amountDueFormatted,
    @JsonKey(name: 'customs_immediate_due') int? customsImmediateDue,
    @JsonKey(name: 'due_at') String? dueAt,
    @JsonKey(name: 'deadline_days') @Default(0) int deadlineDays,
  }) = _FinalPaymentPreviewModel;

  factory FinalPaymentPreviewModel.fromJson(Map<String, dynamic> json) =>
      _$FinalPaymentPreviewModelFromJson(json);

  FinalPaymentPreview toEntity() => FinalPaymentPreview(
    alreadyPaid: alreadyPaid,
    lines: lines.map((l) => l.toEntity()).toList(),
    confirmedDeposit: confirmedDeposit,
    amountDue: amountDue,
    amountDueFormatted: bidiSafeNumber(amountDueFormatted ?? ''),
    customsImmediateDue: customsImmediateDue,
    dueAt: DateTime.tryParse(dueAt ?? ''),
    deadlineDays: deadlineDays,
  );
}
