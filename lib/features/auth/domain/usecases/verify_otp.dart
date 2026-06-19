import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/auth_entities.dart';
import '../repositories/auth_repository.dart';

part 'verify_otp.freezed.dart';

@injectable
class VerifyOtp implements UseCase<AuthTokens, VerifyOtpParams> {
  final AuthRepository repository;
  VerifyOtp(this.repository);

  @override
  Future<Either<Failure, AuthTokens>> call(VerifyOtpParams p) {
    return repository.verifyOtp(
      userId: p.userId,
      otp: p.otp,
      deviceName: p.deviceName,
    );
  }
}

@freezed
class VerifyOtpParams with _$VerifyOtpParams {
  const factory VerifyOtpParams({
    required String userId,
    required String otp,
    required String deviceName,
  }) = _VerifyOtpParams;
}

@injectable
class ResendOtp implements UseCase<Unit, String> {
  final AuthRepository repository;
  ResendOtp(this.repository);

  @override
  Future<Either<Failure, Unit>> call(String userId) {
    return repository.resendOtp(userId: userId);
  }
}
