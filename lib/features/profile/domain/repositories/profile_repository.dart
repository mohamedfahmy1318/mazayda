import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/profile.dart';

part 'profile_repository.freezed.dart';

abstract class ProfileRepository {
  Future<Either<Failure, Profile>> getProfile();
  Future<Either<Failure, Profile>> updateProfile(UpdateProfileParams params);
}

@freezed
class UpdateProfileParams with _$UpdateProfileParams {
  const factory UpdateProfileParams({
    String? phone,
    String? email,
    String? address,
    String? postalCode,
    String? profession,
  }) = _UpdateProfileParams;
}

@injectable
class GetProfile implements UseCase<Profile, NoParams> {
  final ProfileRepository repository;
  GetProfile(this.repository);
  @override
  Future<Either<Failure, Profile>> call(NoParams params) =>
      repository.getProfile();
}

@injectable
class UpdateProfile implements UseCase<Profile, UpdateProfileParams> {
  final ProfileRepository repository;
  UpdateProfile(this.repository);
  @override
  Future<Either<Failure, Profile>> call(UpdateProfileParams params) =>
      repository.updateProfile(params);
}
