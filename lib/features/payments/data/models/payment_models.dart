import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/payment_entities.dart';

part 'payment_models.freezed.dart';
part 'payment_models.g.dart';

/// نتيجة بدء الدفع — {redirect_url, ref}.
@freezed
class PaymentInitModel with _$PaymentInitModel {
  const PaymentInitModel._();

  const factory PaymentInitModel({
    @JsonKey(name: 'redirect_url') String? redirectUrl,
    String? ref,
  }) = _PaymentInitModel;

  factory PaymentInitModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentInitModelFromJson(json);

  PaymentInit toEntity() =>
      PaymentInit(redirectUrl: redirectUrl ?? '', ref: ref ?? '');
}

/// صف حالة دفع.
@freezed
class PaymentStatusModel with _$PaymentStatusModel {
  const PaymentStatusModel._();

  const factory PaymentStatusModel({
    String? ref,
    @JsonKey(name: 'payment_type') String? paymentType,
    String? status,
    @JsonKey(name: 'is_confirmed') @Default(false) bool isConfirmed,
  }) = _PaymentStatusModel;

  factory PaymentStatusModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentStatusModelFromJson(json);

  PaymentStatus toEntity() => PaymentStatus(
        ref: ref ?? '',
        type: PaymentTypeX.fromApi(paymentType),
        status: PaymentRowStatusX.fromApi(status),
        isConfirmed: isConfirmed,
      );
}
