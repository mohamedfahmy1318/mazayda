import 'package:equatable/equatable.dart';

/// حالة طلب استرجاع البريد الإلكتروني — تعديل العميل رقم 1.
///
/// الطلب بيمرّ على موظّف مختص (شاشة المراجعة في الإدارة — تعديل رقم 2)،
/// فالحالة بتتحرّك: مُقدَّم → قيد المراجعة → مقبول/مرفوض.
enum EmailRecoveryStatus { pending, underReview, approved, rejected, unknown }

extension EmailRecoveryStatusX on EmailRecoveryStatus {
  static EmailRecoveryStatus fromApi(String? v) => switch (v) {
    'PENDING' => EmailRecoveryStatus.pending,
    'UNDER_REVIEW' => EmailRecoveryStatus.underReview,
    'APPROVED' => EmailRecoveryStatus.approved,
    'REJECTED' => EmailRecoveryStatus.rejected,
    _ => EmailRecoveryStatus.unknown,
  };

  /// الطلب لسه شغّال — المواطن مايقدرش يبعت طلب تاني.
  bool get isOpen =>
      this == EmailRecoveryStatus.pending ||
      this == EmailRecoveryStatus.underReview;
}

/// طلب تغيير بريد إلكتروني مفقود.
///
/// المواطن اللي فقد بريده مايقدرش يسجّل دخول ولا يستقبل رمز، فالمسار ده
/// **غير مصادَق**: بيثبت هويته برقم التعريف الوطني + بيانات شخصية + صورة
/// سيلفي مع بطاقة الهوية، والجهة المختصة هي اللي بتعتمد التغيير.
class EmailRecoveryRequest extends Equatable {
  final String id;
  final EmailRecoveryStatus status;

  /// نص الحالة مترجَم من السيرفر — بنفضّله على جدول ترجمة محلي.
  final String? statusLabel;

  /// البريد الجديد المطلوب اعتماده — مخفي جزئيًا من السيرفر.
  final String? newEmailMasked;

  final DateTime? submittedAt;
  final DateTime? reviewedAt;

  /// سبب الرفض كما كتبه المراجع — بيتعرض للمواطن عشان يعرف يصحّح.
  final String? rejectionReason;

  const EmailRecoveryRequest({
    required this.id,
    required this.status,
    this.statusLabel,
    this.newEmailMasked,
    this.submittedAt,
    this.reviewedAt,
    this.rejectionReason,
  });

  @override
  List<Object?> get props => [id, status, submittedAt, reviewedAt];
}
