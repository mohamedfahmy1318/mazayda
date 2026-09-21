import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/commercial_register.dart';

part 'commercial_register_model.freezed.dart';
part 'commercial_register_model.g.dart';

/// `documents` — أعلام وجود كل مستند.
/// ⚠️ المفتاح `tax-card` فيه **شرطة**، فالـ JsonKey إجباري هنا.
@freezed
abstract class CrDocumentsModel with _$CrDocumentsModel {
  const factory CrDocumentsModel({
    @Default(false) bool register,
    @JsonKey(name: 'tax-card') @Default(false) bool taxCard,
  }) = _CrDocumentsModel;

  factory CrDocumentsModel.fromJson(Map<String, dynamic> json) =>
      _$CrDocumentsModelFromJson(json);
}

/// يطابق ردّ `GET /commercial-register` (12 مفتاح).
/// ملاحظة: `start_date` بيرجع بصيغة `Y-m-d` (toDateString) مش ISO8601.
@freezed
abstract class CommercialRegisterModel with _$CommercialRegisterModel {
  const CommercialRegisterModel._();

  const factory CommercialRegisterModel({
    String? status,
    @JsonKey(name: 'company_name') String? companyName,
    @JsonKey(name: 'register_number') String? registerNumber,
    @JsonKey(name: 'tax_number') String? taxNumber,
    @JsonKey(name: 'activity_type') String? activityType,
    @JsonKey(name: 'start_date') String? startDate,
    @JsonKey(name: 'rejection_reason') String? rejectionReason,
    @JsonKey(name: 'submitted_at') String? submittedAt,
    @JsonKey(name: 'reviewed_at') String? reviewedAt,
    @JsonKey(name: 'can_submit') @Default(true) bool canSubmit,
    @JsonKey(name: 'is_valid') @Default(false) bool isValid,
    CrDocumentsModel? documents,
  }) = _CommercialRegisterModel;

  factory CommercialRegisterModel.fromJson(Map<String, dynamic> json) =>
      _$CommercialRegisterModelFromJson(json);

  CommercialRegister toEntity() => CommercialRegister(
    status: CommercialRegisterStatusX.fromApi(status),
    companyName: companyName,
    registerNumber: registerNumber,
    taxNumber: taxNumber,
    activityType: activityType,
    startDate: DateTime.tryParse(startDate ?? ''),
    rejectionReason: rejectionReason,
    submittedAt: DateTime.tryParse(submittedAt ?? ''),
    reviewedAt: DateTime.tryParse(reviewedAt ?? ''),
    canSubmit: canSubmit,
    isValid: isValid,
    hasRegisterDocument: documents?.register ?? false,
    hasTaxCardDocument: documents?.taxCard ?? false,
  );
}
