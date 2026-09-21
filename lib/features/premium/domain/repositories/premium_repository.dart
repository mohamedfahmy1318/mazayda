import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';
import '../../../payments/domain/entities/payment_entities.dart';
import '../entities/subscription.dart';

/// اشتراك Premium للمواطن — تعديلات العميل 24 · 25 · 26.
abstract class PremiumRepository {
  /// الاشتراك الحالي + الباقات المتاحة في نداء واحد.
  Future<Either<Failure, PremiumOverview>> getOverview();

  /// بدء دفع اشتراك — بيرجّع بيانات بوابة الدفع زي باقي المدفوعات.
  Future<Either<Failure, PaymentInit>> subscribe({required String planCode});

  /// إيقاف التجديد التلقائي.
  ///
  /// بيرجّع **اللقطة الكاملة** بعد التعديل (نفس شكل [getOverview])، أو
  /// `null` لو السيرفر ما رجّعش جسم.
  Future<Either<Failure, PremiumOverview?>> cancelAutoRenew();
}
