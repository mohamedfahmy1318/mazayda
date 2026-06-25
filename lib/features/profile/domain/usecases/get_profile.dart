import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/profile.dart';
import '../repositories/profile_repository.dart';

/// use case: جلب الملف الشخصي للمستخدم الحالي.
@injectable
class GetProfile implements UseCase<Profile, NoParams> {
  final ProfileRepository repository;
  GetProfile(this.repository);

  @override
  Future<Either<Failure, Profile>> call(NoParams params) =>
      repository.getProfile();
}
