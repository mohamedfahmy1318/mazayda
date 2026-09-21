import 'package:equatable/equatable.dart';

/// حالة السجل التجاري — app/Enums/CommercialRegisterStatus.php.
/// [none] مش قيمة من الباك: بترجع `status: null` لو المستخدم لسه مقدّمش أصلًا.
enum CommercialRegisterStatus { none, pending, approved, rejected }

extension CommercialRegisterStatusX on CommercialRegisterStatus {
  static CommercialRegisterStatus fromApi(String? v) => switch (v) {
    'PENDING' => CommercialRegisterStatus.pending,
    'APPROVED' => CommercialRegisterStatus.approved,
    'REJECTED' => CommercialRegisterStatus.rejected,
    _ => CommercialRegisterStatus.none,
  };
}

/// نوع المستند المرفوع — الـ slug في المسار.
/// ⚠️ الاسم في المسار (`tax-card`) **غير** اسم الحقل في الرفع (`tax_card_document`).
enum CrDocumentType { register, taxCard }

extension CrDocumentTypeX on CrDocumentType {
  /// slug المسار: /commercial-register/document/{type}
  String get pathSlug => switch (this) {
    CrDocumentType.register => 'register',
    CrDocumentType.taxCard => 'tax-card',
  };

  /// اسم حقل الـ multipart عند الإرسال.
  String get uploadField => switch (this) {
    CrDocumentType.register => 'register_document',
    CrDocumentType.taxCard => 'tax_card_document',
  };
}

/// السجل التجاري للمستخدم — يطابق ردّ `GET /commercial-register`.
///
/// مستقل تمامًا عن الـ KYC: المستخدم ممكن يكون عنده واحد أو الاتنين أو ولا واحد.
/// السجل المعتمد بس هو اللي بيفكّ المشاركة في المزادات المعلّمة
/// `requires_commerce_register` — وده بيمنع **أي** دفع على المزاد ده، بما فيه
/// شراء دفتر الشروط مش الكفالة بس.
class CommercialRegister extends Equatable {
  final CommercialRegisterStatus status;
  final String? companyName;
  final String? registerNumber;
  final String? taxNumber;
  final String? activityType;
  final DateTime? startDate;
  final String? rejectionReason;
  final DateTime? submittedAt;
  final DateTime? reviewedAt;

  /// السيرفر بيسمح بالإرسال دلوقتي.
  /// ملاحظة: `canSubmit()` في الباك بترجع true لـ PENDING و REJECTED —
  /// يعني **APPROVED بس** هو المقفول (تعليق الـ FormRequest بيقول غير كده،
  /// والكود هو المرجع).
  final bool canSubmit;

  /// السجل معتمد وساري.
  final bool isValid;

  final bool hasRegisterDocument;
  final bool hasTaxCardDocument;

  const CommercialRegister({
    this.status = CommercialRegisterStatus.none,
    this.companyName,
    this.registerNumber,
    this.taxNumber,
    this.activityType,
    this.startDate,
    this.rejectionReason,
    this.submittedAt,
    this.reviewedAt,
    this.canSubmit = true,
    this.isValid = false,
    this.hasRegisterDocument = false,
    this.hasTaxCardDocument = false,
  });

  /// لسه مقدّمش أي حاجة.
  bool get isEmpty => status == CommercialRegisterStatus.none;

  /// الملف مطلوب رفعه (مفيش نسخة محفوظة) — الباك بيخلّيه required في الحالة دي بس.
  bool requiresUpload(CrDocumentType type) => switch (type) {
    CrDocumentType.register => !hasRegisterDocument,
    CrDocumentType.taxCard => !hasTaxCardDocument,
  };

  bool hasDocument(CrDocumentType type) => !requiresUpload(type);

  @override
  List<Object?> get props => [
    status,
    companyName,
    registerNumber,
    taxNumber,
    activityType,
    startDate,
    canSubmit,
    isValid,
    hasRegisterDocument,
    hasTaxCardDocument,
  ];
}
