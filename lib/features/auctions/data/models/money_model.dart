import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/utils/money_format.dart';
import '../../domain/entities/money.dart';

part 'money_model.freezed.dart';
part 'money_model.g.dart';

/// موديل القيمة المالية — يطابق {amount, formatted} من الـ API.
@freezed
abstract class MoneyModel with _$MoneyModel {
  const MoneyModel._();

  const factory MoneyModel({
    @Default(0) int amount,
    @Default('') String formatted,
  }) = _MoneyModel;

  factory MoneyModel.fromJson(Map<String, dynamic> json) =>
      _$MoneyModelFromJson(json);

  /// تحويل الموديل إلى entity في الـ domain.
  ///
  /// بنصلّح فواصل الآلاف هنا — عند حدود البيانات — عشان كل شاشة بتعرض
  /// `formatted` تبقى مظبوطة من غير ما تعمل حاجة. الباك بيبعت مسافات عادية،
  /// واللي بتقلب الأرقام الكبيرة في التخطيط العربي (شوف [bidiSafeNumber]).
  Money toEntity() =>
      Money(amount: amount, formatted: bidiSafeNumber(formatted));
}
