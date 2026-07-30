import 'package:equatable/equatable.dart';
import '../../../auctions/domain/entities/money.dart';

/// نتيجة بدء الدفع (تسجيل في مزاد أو دفع نهائي).
/// redirectUrl: نفتحه في WebView. ref: نستطلع به الحالة بعد الرجوع.
class PaymentInit extends Equatable {
  final String redirectUrl;
  final String ref;

  const PaymentInit({required this.redirectUrl, required this.ref});

  @override
  List<Object?> get props => [redirectUrl, ref];
}

/// أنواع الدفع — مطابقة لـ app/Enums/PaymentType.php.
enum PaymentType { deposit, entryFee, bookPurchase, finalPayment, unknown }

extension PaymentTypeX on PaymentType {
  static PaymentType fromApi(String? v) => switch (v) {
        'DEPOSIT' => PaymentType.deposit,
        'ENTRY_FEE' => PaymentType.entryFee,
        'BOOK_PURCHASE' => PaymentType.bookPurchase,
        'FINAL_PAYMENT' => PaymentType.finalPayment,
        _ => PaymentType.unknown,
      };

  /// النصوص منقولة حرفيًا من lang/ar/enums.php في الباك.
  String get labelAr => switch (this) {
        PaymentType.deposit => 'كفالة',
        PaymentType.entryFee => 'رسوم دخول',
        PaymentType.bookPurchase => 'كراسة شروط',
        PaymentType.finalPayment => 'دفع نهائي',
        PaymentType.unknown => 'دفعة',
      };
}

/// حالة صف الدفع — مطابقة لـ app/Enums/PaymentStatus.php.
enum PaymentRowStatus {
  pending,
  confirmed,
  refunded,
  forfeited,
  failed,
  unknown,
}

extension PaymentRowStatusX on PaymentRowStatus {
  static PaymentRowStatus fromApi(String? v) => switch (v) {
        'PENDING' => PaymentRowStatus.pending,
        'CONFIRMED' => PaymentRowStatus.confirmed,
        'REFUNDED' => PaymentRowStatus.refunded,
        'FORFEITED' => PaymentRowStatus.forfeited,
        'FAILED' => PaymentRowStatus.failed,
        _ => PaymentRowStatus.unknown,
      };

  String get labelAr => switch (this) {
        PaymentRowStatus.pending => 'قيد الانتظار',
        PaymentRowStatus.confirmed => 'مؤكَّد',
        PaymentRowStatus.refunded => 'مُسترَد',
        PaymentRowStatus.forfeited => 'مُصادَر',
        PaymentRowStatus.failed => 'فاشل',
        PaymentRowStatus.unknown => '—',
      };
}

/// صف دفع واحد — يطابق PaymentResource.
/// ملاحظة: الباك **مبيرجّعش** حقل is_confirmed — الحالة نفسها هي المصدر.
class PaymentStatus extends Equatable {
  final String id;
  final PaymentType type;
  final Money amount;
  final PaymentRowStatus status;
  final String? gatewayRef;
  final DateTime? dueAt;
  final DateTime? confirmedAt;
  final DateTime? createdAt;

  const PaymentStatus({
    required this.id,
    required this.type,
    required this.amount,
    required this.status,
    this.gatewayRef,
    this.dueAt,
    this.confirmedAt,
    this.createdAt,
  });

  bool get isConfirmed => status == PaymentRowStatus.confirmed;
  bool get hasFailed => status == PaymentRowStatus.failed;

  @override
  List<Object?> get props => [id, type, amount, status, gatewayRef];
}

/// ردّ GET /payments/{ref}/status —
/// `{ ref, gateway_ref, confirmed, payments[] }`.
///
/// الباك بيطابق الـ ref على `gateway_ref` **أو** `payment id` (BE-13)، فأي
/// واحد منهم بيشتغل. دفعة مستخدم تاني = 404.
class PaymentStatusResult extends Equatable {
  final String ref;

  /// المرجع الرسمي من البوابة (BE-13) — نوحّد عليه في أي استطلاع بعد كده.
  /// `null` لو الرد قديم.
  final String? gatewayRef;

  /// `confirmed` من السيرفر — المصدر الرسمي. `null` لو الرد قديم.
  final bool? serverConfirmed;

  final List<PaymentStatus> payments;

  const PaymentStatusResult({
    required this.ref,
    this.gatewayRef,
    this.serverConfirmed,
    required this.payments,
  });

  /// المرجع اللي نستطلع بيه بعد كده — الرسمي لو موجود.
  String get pollRef => gatewayRef ?? ref;

  /// كل الدفعات المرتبطة بالـ ref اتأكدت.
  ///
  /// بنفضّل `confirmed` من السيرفر، وبنرجع للحساب المحلي لو المفتاح غاب.
  bool get allConfirmed =>
      serverConfirmed ??
      (payments.isNotEmpty && payments.every((p) => p.isConfirmed));

  /// واحدة على الأقل فشلت نهائيًا — نوقف الاستطلاع فورًا بدل ما نستنى.
  bool get hasFailed => payments.any((p) => p.hasFailed);

  @override
  List<Object?> get props => [ref, gatewayRef, serverConfirmed, payments];
}
