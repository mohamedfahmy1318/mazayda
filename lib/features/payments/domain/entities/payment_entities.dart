import 'package:equatable/equatable.dart';

/// نتيجة بدء الدفع (تسجيل في مزاد أو دفع نهائي).
/// redirectUrl: نفتحه في WebView. ref: نستطلع به الحالة بعد الرجوع.
class PaymentInit extends Equatable {
  final String redirectUrl;
  final String ref;

  const PaymentInit({required this.redirectUrl, required this.ref});

  @override
  List<Object?> get props => [redirectUrl, ref];
}

/// أنواع الدفع كما في الـ spec.
enum PaymentType { deposit, entryFee, bookPurchase, finalPayment, refund, unknown }

extension PaymentTypeX on PaymentType {
  static PaymentType fromApi(String? v) => switch (v) {
        'DEPOSIT' => PaymentType.deposit,
        'ENTRY_FEE' => PaymentType.entryFee,
        'BOOK_PURCHASE' => PaymentType.bookPurchase,
        'FINAL_PAYMENT' => PaymentType.finalPayment,
        'REFUND' => PaymentType.refund,
        _ => PaymentType.unknown,
      };

  String get labelAr => switch (this) {
        PaymentType.deposit => 'تأمين',
        PaymentType.entryFee => 'رسوم مشاركة',
        PaymentType.bookPurchase => 'كراس شروط',
        PaymentType.finalPayment => 'دفع نهائي',
        PaymentType.refund => 'استرداد',
        PaymentType.unknown => 'دفعة',
      };
}

/// حالة الدفع لصف واحد.
enum PaymentRowStatus { pending, confirmed, refunded, forfeited, unknown }

extension PaymentRowStatusX on PaymentRowStatus {
  static PaymentRowStatus fromApi(String? v) => switch (v) {
        'PENDING' => PaymentRowStatus.pending,
        'CONFIRMED' => PaymentRowStatus.confirmed,
        'REFUNDED' => PaymentRowStatus.refunded,
        'FORFEITED' => PaymentRowStatus.forfeited,
        _ => PaymentRowStatus.unknown,
      };

  String get labelAr => switch (this) {
        PaymentRowStatus.pending => 'قيد المعالجة',
        PaymentRowStatus.confirmed => 'مؤكد',
        PaymentRowStatus.refunded => 'مسترد',
        PaymentRowStatus.forfeited => 'مصادر',
        PaymentRowStatus.unknown => '—',
      };
}

/// صف دفع — نستطلعه بعد رجوع بوابة الدفع.
class PaymentStatus extends Equatable {
  final String ref;
  final PaymentType type;
  final PaymentRowStatus status;
  final bool isConfirmed;

  const PaymentStatus({
    required this.ref,
    required this.type,
    required this.status,
    required this.isConfirmed,
  });

  @override
  List<Object?> get props => [ref, type, status, isConfirmed];
}
