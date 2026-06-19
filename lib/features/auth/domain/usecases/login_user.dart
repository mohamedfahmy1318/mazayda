import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/auth_entities.dart';
import '../repositories/auth_repository.dart';

part 'login_user.freezed.dart';

@injectable
class LoginUser implements UseCase<LoginResult, LoginParams> {
  final AuthRepository repository;
  LoginUser(this.repository);

  @override
  Future<Either<Failure, LoginResult>> call(LoginParams p) {
    return repository.login(
      ninOrEmail: p.ninOrEmail,
      password: p.password,
      deviceName: p.deviceName,
    );
  }
}

@freezed
class LoginParams with _$LoginParams {
  const factory LoginParams({
    required String ninOrEmail,
    required String password,
    required String deviceName,
  }) = _LoginParams;
}

@injectable
class GetCurrentUser implements UseCase<AuthUser, NoParams> {
  final AuthRepository repository;
  GetCurrentUser(this.repository);

  @override
  Future<Either<Failure, AuthUser>> call(NoParams params) {
    return repository.getCurrentUser();
  }
}

@injectable
class LogoutUser implements UseCase<Unit, bool> {
  final AuthRepository repository;
  LogoutUser(this.repository);

  /// [allDevices] لتسجيل الخروج من كل الأجهزة.
  @override
  Future<Either<Failure, Unit>> call(bool allDevices) {
    return repository.logout(allDevices: allDevices);
  }
}
