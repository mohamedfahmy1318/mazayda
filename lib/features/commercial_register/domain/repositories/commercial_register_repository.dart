import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';
import '../entities/commercial_register.dart';

/// عقد الـ commercial-register repository.
abstract class CommercialRegisterRepository {
  Future<Either<Failure, CommercialRegister>> getRegister();

  Future<Either<Failure, Unit>> submit({
    required String companyName,
    required String registerNumber,
    required String taxNumber,
    required String activityType,
    required String startDate, // Y-M-D
    String? registerDocumentPath,
    String? taxCardDocumentPath,
  });
}
