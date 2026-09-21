import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/email_recovery.dart';

part 'email_recovery_model.freezed.dart';
part 'email_recovery_model.g.dart';

/// يطابق `EmailRecoveryRequestResource` — تعديل العميل رقم 1.
@freezed
abstract class EmailRecoveryModel with _$EmailRecoveryModel {
  const EmailRecoveryModel._();

  const factory EmailRecoveryModel({
    String? id,
    String? status,
    @JsonKey(name: 'status_label') String? statusLabel,
    @JsonKey(name: 'new_email_masked') String? newEmailMasked,
    @JsonKey(name: 'submitted_at') String? submittedAt,
    @JsonKey(name: 'reviewed_at') String? reviewedAt,
    @JsonKey(name: 'rejection_reason') String? rejectionReason,
  }) = _EmailRecoveryModel;

  factory EmailRecoveryModel.fromJson(Map<String, dynamic> json) =>
      _$EmailRecoveryModelFromJson(json);

  EmailRecoveryRequest toEntity() => EmailRecoveryRequest(
    id: id ?? '',
    status: EmailRecoveryStatusX.fromApi(status),
    statusLabel: statusLabel,
    newEmailMasked: newEmailMasked,
    submittedAt: DateTime.tryParse(submittedAt ?? ''),
    reviewedAt: DateTime.tryParse(reviewedAt ?? ''),
    rejectionReason: rejectionReason,
  );
}
