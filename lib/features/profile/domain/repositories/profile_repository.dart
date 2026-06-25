import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';
import '../entities/profile.dart';

/// عقد الـ profile repository.
abstract class ProfileRepository {
  Future<Either<Failure, Profile>> getProfile();

  Future<Either<Failure, Profile>> updateProfile({
    String? phone,
    String? email,
    String? address,
    String? postalCode,
    String? profession,
  });
}
