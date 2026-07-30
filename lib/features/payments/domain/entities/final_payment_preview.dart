import 'package:equatable/equatable.dart';

/// بند واحد في تفصيل رسوم الدفع النهائي.
///
/// ⚠️ شكل مختلف عن باقي المبالغ في الـ API: هنا `amount` **رقم مسطّح
/// بالدينار** و`formatted` حقل منفصل — مش الكائن المتداخل `{amount, formatted}`.
///
/// و`label` بييجي **مترجَم جاهز من السيرفر** (`__($line['key'])`)، فبنعرضه
/// زي ما هو بدل جدول ترجمة محلي — ده بيضمن تطابق دائم مع الويب.
class FeeLine extends Equatable {
  final String key;
  final String label;
  final int amount; // دينار
  final String formatted;

  const FeeLine({
    required this.key,
    required this.label,
    required this.amount,
    required this.formatted,
  });

  /// سطر الإجمالي — الويب بيبرزه بخط عريض.
  bool get isTotal => key == 'fees.line.buyer_total';

  @override
  List<Object?> get props => [key, amount];
}

/// معاينة الدفع النهائي للفايز — `GET /auctions/{id}/final-payment/preview`.
///
/// ملاحظة: الويب بيـ POST على طول من غير معاينة؛ الـ endpoint ده موجود
/// للعميل المحمول تحديدًا عشان يعرض التفصيل قبل الدفع.
/// بيرجّع **403** لو المستخدم مش الفايز.
class FinalPaymentPreview extends Equatable {
  final bool alreadyPaid;
  final List<FeeLine> lines;

  /// الكفالة المؤكَّدة اللي هتتخصم من الإجمالي (بالدينار).
  final int confirmedDeposit;

  final int amountDue;
  final String amountDueFormatted;

  /// السيارات/الجمركي فقط — دفعة فورية فوق إجمالي المشتري. null في غير كده.
  final int? customsImmediateDue;

  final DateTime? dueAt;
  final int deadlineDays;

  const FinalPaymentPreview({
    this.alreadyPaid = false,
    this.lines = const [],
    this.confirmedDeposit = 0,
    this.amountDue = 0,
    this.amountDueFormatted = '',
    this.customsImmediateDue,
    this.dueAt,
    this.deadlineDays = 0,
  });

  bool get hasCustomsDue => (customsImmediateDue ?? 0) > 0;
  bool get hasDeposit => confirmedDeposit > 0;

  @override
  List<Object?> get props => [
    alreadyPaid,
    lines,
    confirmedDeposit,
    amountDue,
    customsImmediateDue,
    dueAt,
    deadlineDays,
  ];
}
