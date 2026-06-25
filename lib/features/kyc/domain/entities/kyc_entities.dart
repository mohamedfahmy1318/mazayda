import 'package:equatable/equatable.dart';

/// أنواع مستندات الـ KYC المسموح رفعها (تطابق قيم الـ API في المسار).
enum KycDocType { idFront, idBack, selfieWithId, photoBiometric }

extension KycDocTypeX on KycDocType {
  /// القيمة اللي بتتبعت في مسار الـ upload: kyc/upload/:type
  String get apiValue => switch (this) {
    KycDocType.idFront => 'id-front',
    KycDocType.idBack => 'id-back',
    KycDocType.selfieWithId => 'selfie-with-id',
    KycDocType.photoBiometric => 'photo-biometric',
  };
}

/// حالة الـ KYC الكلية للحساب.
enum KycAccountStatus { pending, underReview, verified, rejected, unknown }

extension KycAccountStatusX on KycAccountStatus {
  static KycAccountStatus fromApi(String? v) => switch (v) {
    'PENDING' => KycAccountStatus.pending,
    'UNDER_REVIEW' => KycAccountStatus.underReview,
    'VERIFIED' => KycAccountStatus.verified,
    'REJECTED' => KycAccountStatus.rejected,
    _ => KycAccountStatus.unknown,
  };
}

/// حالة الـ KYC + المستندات الموجودة + هل يمكن الإرسال.
class KycStatus extends Equatable {
  final KycAccountStatus status;
  final List<String> documentsOnFile; // أنواع المستندات المرفوعة
  final bool canSubmit;

  const KycStatus({
    required this.status,
    this.documentsOnFile = const [],
    this.canSubmit = false,
  });

  bool hasDoc(KycDocType type) => documentsOnFile.contains(type.apiValue);

  @override
  List<Object?> get props => [status, documentsOnFile, canSubmit];
}

/// ولاية (للـ dropdown).
class Wilaya extends Equatable {
  final int id;
  final String code;
  final String name;
  const Wilaya({required this.id, required this.code, required this.name});
  @override
  List<Object?> get props => [id, code, name];
}

/// بلدية (للـ dropdown، مرتبطة بولاية).
class Commune extends Equatable {
  final int id;
  final String name;
  final String? postalCode;
  const Commune({required this.id, required this.name, this.postalCode});
  @override
  List<Object?> get props => [id, name, postalCode];
}
