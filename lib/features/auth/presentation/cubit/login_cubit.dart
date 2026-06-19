import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/usecases/login_user.dart';
import '../formz/auth_inputs.dart';

part 'login_cubit.freezed.dart';

/// نتيجة الإرسال — منفصلة عن حالة الحقول.
enum LoginStatus { idle, submitting, success, needsVerification, failure }

@freezed
class LoginState with _$LoginState {
  const LoginState._();

  const factory LoginState({
    @Default(RequiredInput.pure()) RequiredInput identifier,
    @Default(PasswordInput.pure()) PasswordInput password,
    @Default(LoginStatus.idle) LoginStatus status,
    @Default(false) bool isValid,
    String? userId, // عند الحاجة لتأكيد البريد
    String? errorMessage,
  }) = _LoginState;

  bool get canSubmit => isValid && status != LoginStatus.submitting;
}

@injectable
class LoginCubit extends Cubit<LoginState> {
  final LoginUser _loginUser;
  LoginCubit(this._loginUser) : super(const LoginState());

  void identifierChanged(String value) {
    final input = RequiredInput.dirty(value);
    emit(state.copyWith(
      identifier: input,
      isValid: Formz.validate([input, state.password]),
      status: LoginStatus.idle,
    ));
  }

  void passwordChanged(String value) {
    final input = PasswordInput.dirty(value);
    emit(state.copyWith(
      password: input,
      isValid: Formz.validate([state.identifier, input]),
      status: LoginStatus.idle,
    ));
  }

  Future<void> submit({String deviceName = 'mobile'}) async {
    if (!state.isValid) return;
    emit(state.copyWith(status: LoginStatus.submitting, errorMessage: null));

    final result = await _loginUser(LoginParams(
      ninOrEmail: state.identifier.value,
      password: state.password.value,
      deviceName: deviceName,
    ));

    result.fold(
      (f) => emit(state.copyWith(
        status: LoginStatus.failure,
        errorMessage: _msg(f),
      )),
      (r) {
        if (r.needsEmailVerification) {
          emit(state.copyWith(
            status: LoginStatus.needsVerification,
            userId: r.userId,
          ));
        } else {
          emit(state.copyWith(status: LoginStatus.success));
        }
      },
    );
  }

  String _msg(Failure f) => switch (f) {
        ServerFailure(:final message) => message,
        NetworkFailure(:final message) => message,
        UnauthorizedFailure(:final message) => message,
        UnexpectedFailure(:final message) => message,
      };
}
