import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';
import '../entities/appeal.dart';

/// عقد الـ appeals repository.
abstract class AppealsRepository {
  Future<Either<Failure, List<Appeal>>> getAppeals();

  Future<Either<Failure, Unit>> submitAppeal({
    required String subject,
    required String reason,
    String? auctionId,
  });
}
