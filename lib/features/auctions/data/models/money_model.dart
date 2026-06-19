import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/money.dart';

part 'money_model.freezed.dart';
part 'money_model.g.dart';

/// موديل القيمة المالية — يطابق {amount, formatted} من الـ API.
@freezed
class MoneyModel with _$MoneyModel {
  const MoneyModel._();

  const factory MoneyModel({
    @Default(0) int amount,
    @Default('') String formatted,
  }) = _MoneyModel;

  factory MoneyModel.fromJson(Map<String, dynamic> json) =>
      _$MoneyModelFromJson(json);

  /// تحويل الموديل إلى entity في الـ domain.
  Money toEntity() => Money(amount: amount, formatted: formatted);
}
