import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../domain/usecases/verify_otp.dart';

part 'otp_cubit.freezed.dart';

@freezed
sealed class OtpState with _$OtpState {
  const factory OtpState.initial({@Default(0) int cooldown}) = OtpInitial;
  const factory OtpState.verifying() = OtpVerifying;
  const factory OtpState.verified() = OtpVerified; // التوكنات اتحفظت
  const factory OtpState.error(String message) = OtpError;
}

@injectable
class OtpCubit extends Cubit<OtpState> {
  final VerifyOtp _verifyOtp;
  final ResendOtp _resendOtp;

  OtpCubit(this._verifyOtp, this._resendOtp) : super(const OtpState.initial());

  Timer? _timer;

  /// يبدأ عدّاد إعادة الإرسال (60 ثانية، نفس cooldown الـ API).
  void startCooldown([int seconds = 60]) {
    _timer?.cancel();
    var remaining = seconds;
    emit(OtpState.initial(cooldown: remaining));
    _timer = Timer.periodic(const Duration(seconds: 1), (t) {
      remaining--;
      if (remaining <= 0) {
        t.cancel();
        emit(const OtpState.initial(cooldown: 0));
      } else {
        emit(OtpState.initial(cooldown: remaining));
      }
    });
  }

  Future<void> verify({
    required String userId,
    required String otp,
    String deviceName = 'mobile',
  }) async {
    emit(const OtpState.verifying());
    final result = await _verifyOtp(
      VerifyOtpParams(userId: userId, otp: otp, deviceName: deviceName),
    );
    result.fold(
      (f) => emit(OtpState.error(f.message)),
      (_) => emit(const OtpState.verified()),
    );
  }

  Future<void> resend(String userId) async {
    final result = await _resendOtp(userId);
    result.fold((f) => emit(OtpState.error(f.message)), (_) => startCooldown());
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }
}
