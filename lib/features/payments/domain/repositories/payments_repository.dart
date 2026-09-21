import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';
import '../entities/final_payment_preview.dart';
import '../entities/payment_entities.dart';

/// عقد الـ payments repository — يغطّي flow التسجيل والدفع النهائي.
abstract class PaymentsRepository {
  /// الخطوة 1: شراء دفتر الشروط (buy-book) — يرجّع redirect_url + ref مثل التسجيل.
  Future<Either<Failure, PaymentInit>> buyBook(String auctionId);

  /// الخطوة 2: بدء التسجيل المدفوع — يرجّع redirect_url + ref.
  Future<Either<Failure, PaymentInit>> registerInAuction(String auctionId);

  /// الدفع النهائي للفائز — يرجّع redirect_url + ref.
  Future<Either<Failure, PaymentInit>> startFinalPayment(String auctionId);

  /// معاينة رسوم الدفع النهائي قبل بدئه (الفايز فقط).
  Future<Either<Failure, FinalPaymentPreview>> getFinalPaymentPreview(
    String auctionId,
  );

  /// استطلاع حالة الدفع بعد رجوع البوابة (المفتاح هو gateway_ref).
  Future<Either<Failure, PaymentStatusResult>> getPaymentStatus(String ref);
}
