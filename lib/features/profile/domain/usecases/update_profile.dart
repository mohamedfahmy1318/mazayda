import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/profile.dart';
import '../repositories/profile_repository.dart';

part 'update_profile.freezed.dart';

/// use case: تعديل بيانات الملف الشخصي القابلة للتعديل.
@injectable
class UpdateProfile implements UseCase<Profile, UpdateProfileParams> {
  final ProfileRepository repository;
  UpdateProfile(this.repository);

  @override
  Future<Either<Failure, Profile>> call(UpdateProfileParams params) =>
      repository.updateProfile(
        phone: params.phone,
        email: params.email,
        address: params.address,
        postalCode: params.postalCode,
        profession: params.profession,
      );
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
