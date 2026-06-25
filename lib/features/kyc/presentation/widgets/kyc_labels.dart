import 'package:mazayada/l10n/app_localizations.dart';
import '../../domain/entities/kyc_entities.dart';

/// تسميات مترجمة لأنواع المستندات وحالات الـ KYC (طبقة العرض — الـ domain لا يعرف اللغة).
extension KycDocTypeLabel on KycDocType {
  String label(AppLocalizations t) => switch (this) {
    KycDocType.idFront => t.kycDocIdFront,
    KycDocType.idBack => t.kycDocIdBack,
    KycDocType.selfieWithId => t.kycDocSelfie,
    KycDocType.photoBiometric => t.kycDocBiometric,
  };
}

extension KycAccountStatusLabel on KycAccountStatus {
  String label(AppLocalizations t) => switch (this) {
    KycAccountStatus.pending => t.kycStatusPending,
    KycAccountStatus.underReview => t.kycStatusUnderReview,
    KycAccountStatus.verified => t.kycStatusVerified,
    KycAccountStatus.rejected => t.kycStatusRejected,
    KycAccountStatus.unknown => '',
  };
}
