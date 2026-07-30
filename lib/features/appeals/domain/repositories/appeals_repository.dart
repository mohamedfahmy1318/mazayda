import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';
import '../entities/appeal.dart';

/// عقد الـ appeals repository.
abstract class AppealsRepository {
  Future<Either<Failure, List<Appeal>>> getAppeals();

  /// [auctionId] مطلوب — المسار هو POST /auctions/{id}/appeals.
  Future<Either<Failure, Unit>> submitAppeal({
    required String auctionId,
    required String subject,
    required String reason,
  });
}
