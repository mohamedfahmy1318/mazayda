import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/usecases/register_user.dart';
import '../formz/auth_inputs.dart';

part 'register_cubit.freezed.dart';

enum RegisterStatus { idle, submitting, success, failure }

@freezed
class RegisterState with _$RegisterState {
  const RegisterState._();

  const factory RegisterState({
    @Default(NinInput.pure()) NinInput nin,
    @Default(NameInput.pure()) NameInput firstName,
    @Default(NameInput.pure()) NameInput lastName,
    @Default(PhoneInput.pure()) PhoneInput phone,
    @Default(EmailInput.pure()) EmailInput email,
    @Default(PasswordInput.pure()) PasswordInput password,
    @Default(ConfirmPasswordInput.pure()) ConfirmPasswordInput confirmPassword,
    @Default(RegisterStatus.idle) RegisterStatus status,
    @Default(false) bool isValid,
    String? userId, // عند النجاح → للـ OTP
    String? errorMessage,
    // أخطاء التحقق من السيرفر (مثلاً: البريد مستخدم بالفعل)
    Map<String, List<String>>? serverErrors,
  }) = _RegisterState;

  bool get canSubmit => isValid && status != RegisterStatus.submitting;
}

@injectable
class RegisterCubit extends Cubit<RegisterState> {
  final RegisterUser _registerUser;
  RegisterCubit(this._registerUser) : super(const RegisterState());

  void _revalidate(RegisterState s) {
    final valid = Formz.validate([
      s.nin,
      s.firstName,
      s.lastName,
      s.phone,
      s.email,
      s.password,
      s.confirmPassword,
    ]);
    emit(s.copyWith(isValid: valid, status: RegisterStatus.idle));
  }

  void ninChanged(String v) => _revalidate(state.copyWith(nin: NinInput.dirty(v)));
  void firstNameChanged(String v) =>
      _revalidate(state.copyWith(firstName: NameInput.dirty(v)));
  void lastNameChanged(String v) =>
      _revalidate(state.copyWith(lastName: NameInput.dirty(v)));
  void phoneChanged(String v) =>
      _revalidate(state.copyWith(phone: PhoneInput.dirty(v)));
  void emailChanged(String v) =>
      _revalidate(state.copyWith(email: EmailInput.dirty(v)));
  void passwordChanged(String v) {
    // عند تغيير كلمة المرور، نعيد التحقق من التأكيد أيضًا (لأن المرجع تغيّر)
    final confirm = ConfirmPasswordInput.dirty(
      password: v,
      value: state.confirmPassword.value,
    );
    _revalidate(
      state.copyWith(password: PasswordInput.dirty(v), confirmPassword: confirm),
    );
  }

  void confirmPasswordChanged(String v) => _revalidate(
        state.copyWith(
          confirmPassword: ConfirmPasswordInput.dirty(
            password: state.password.value,
            value: v,
          ),
        ),
      );

  Future<void> submit({
    String birthDate = '2000-01-01',
    String deviceName = 'mobile',
  }) async {
    if (!state.isValid) return;
    emit(state.copyWith(
        status: RegisterStatus.submitting,
        errorMessage: null,
        serverErrors: null));

    final result = await _registerUser(RegisterParams(
      nin: state.nin.value,
      firstNameAr: state.firstName.value,
      lastNameAr: state.lastName.value,
      phone: state.phone.value,
      email: state.email.value,
      birthDate: birthDate,
      password: state.password.value,
      deviceName: deviceName,
    ));

    result.fold(
      (f) => emit(state.copyWith(
        status: RegisterStatus.failure,
        errorMessage: _msg(f),
        serverErrors: f is ServerFailure ? f.errors : null,
      )),
      (r) => emit(state.copyWith(
        status: RegisterStatus.success,
        userId: r.userId,
      )),
    );
  }

  String _msg(Failure f) => switch (f) {
        ServerFailure(:final message) => message,
        NetworkFailure(:final message) => message,
        UnauthorizedFailure(:final message) => message,
        UnexpectedFailure(:final message) => message,
      };
}
