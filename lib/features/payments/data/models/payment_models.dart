import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../auctions/data/models/money_model.dart';
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

/// صف حالة دفع — يطابق PaymentResource:
/// {id, type, amount:{amount,formatted}, status, gateway_ref, due_at,
///  confirmed_at, created_at}
@freezed
class PaymentStatusModel with _$PaymentStatusModel {
  const PaymentStatusModel._();

  const factory PaymentStatusModel({
    String? id,
    String? type,
    MoneyModel? amount,
    String? status,
    @JsonKey(name: 'gateway_ref') String? gatewayRef,
    @JsonKey(name: 'due_at') String? dueAt,
    @JsonKey(name: 'confirmed_at') String? confirmedAt,
    @JsonKey(name: 'created_at') String? createdAt,
  }) = _PaymentStatusModel;

  factory PaymentStatusModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentStatusModelFromJson(json);

  PaymentStatus toEntity() => PaymentStatus(
        id: id ?? '',
        type: PaymentTypeX.fromApi(type),
        amount: (amount ?? const MoneyModel()).toEntity(),
        status: PaymentRowStatusX.fromApi(status),
        gatewayRef: gatewayRef,
        dueAt: DateTime.tryParse(dueAt ?? ''),
        confirmedAt: DateTime.tryParse(confirmedAt ?? ''),
        createdAt: DateTime.tryParse(createdAt ?? ''),
      );
}

/// ردّ GET /payments/{ref}/status — `{ ref, payments[] }` (object مش list).
@freezed
class PaymentStatusResponseModel with _$PaymentStatusResponseModel {
  const PaymentStatusResponseModel._();

  const factory PaymentStatusResponseModel({
    String? ref,
    @Default(<PaymentStatusModel>[]) List<PaymentStatusModel> payments,
  }) = _PaymentStatusResponseModel;

  factory PaymentStatusResponseModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentStatusResponseModelFromJson(json);

  PaymentStatusResult toEntity() => PaymentStatusResult(
        ref: ref ?? '',
        payments: payments.map((p) => p.toEntity()).toList(),
      );
}
