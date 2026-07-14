import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';
import '../entities/payment_entities.dart';

/// عقد الـ payments repository — يغطّي flow التسجيل والدفع النهائي.
abstract class PaymentsRepository {
  /// الخطوة 1: شراء كراس الشروط (buy-book) — يرجّع redirect_url + ref مثل التسجيل.
  Future<Either<Failure, PaymentInit>> buyBook(String auctionId);

  /// الخطوة 2: بدء التسجيل المدفوع — يرجّع redirect_url + ref.
  Future<Either<Failure, PaymentInit>> registerInAuction(String auctionId);

  /// الدفع النهائي للفائز — يرجّع redirect_url + ref.
  Future<Either<Failure, PaymentInit>> startFinalPayment(String auctionId);

  /// استطلاع حالة الدفع بعد رجوع البوابة.
  Future<Either<Failure, List<PaymentStatus>>> getPaymentStatus(String ref);
}
