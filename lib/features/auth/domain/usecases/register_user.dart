import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/auth_entities.dart';
import '../repositories/auth_repository.dart';

part 'register_user.freezed.dart';

@injectable
class RegisterUser implements UseCase<RegisterResult, RegisterParams> {
  final AuthRepository repository;
  RegisterUser(this.repository);

  @override
  Future<Either<Failure, RegisterResult>> call(RegisterParams p) {
    return repository.register(
      nin: p.nin,
      firstNameAr: p.firstNameAr,
      lastNameAr: p.lastNameAr,
      phone: p.phone,
      email: p.email,
      birthDate: p.birthDate,
      password: p.password,
      deviceName: p.deviceName,
    );
  }
}

@freezed
class RegisterParams with _$RegisterParams {
  const factory RegisterParams({
    required String nin,
    required String firstNameAr,
    required String lastNameAr,
    required String phone,
    required String email,
    required String birthDate,
    required String password,
    required String deviceName,
  }) = _RegisterParams;
}
