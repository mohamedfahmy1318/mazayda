import 'package:formz/formz.dart';

/// أخطاء التحقق — نترجمها في الواجهة حسب اللغة.
enum EmailError { empty, invalid }

class EmailInput extends FormzInput<String, EmailError> {
  const EmailInput.pure() : super.pure('');
  const EmailInput.dirty([super.value = '']) : super.dirty();

  static final _regex = RegExp(r'^[\w\.\-]+@([\w\-]+\.)+[\w\-]{2,}$');

  @override
  EmailError? validator(String value) {
    if (value.isEmpty) return EmailError.empty;
    if (!_regex.hasMatch(value)) return EmailError.invalid;
    return null;
  }
}

enum PasswordError { empty, tooShort }

class PasswordInput extends FormzInput<String, PasswordError> {
  const PasswordInput.pure() : super.pure('');
  const PasswordInput.dirty([super.value = '']) : super.dirty();

  @override
  PasswordError? validator(String value) {
    if (value.isEmpty) return PasswordError.empty;
    if (value.length < 12) return PasswordError.tooShort;
    return null;
  }
}

enum ConfirmPasswordError { empty, mismatch }

/// تأكيد كلمة المرور — يقارن قيمته بكلمة المرور الأصلية.
class ConfirmPasswordInput extends FormzInput<String, ConfirmPasswordError> {
  final String password;

  const ConfirmPasswordInput.pure({this.password = ''}) : super.pure('');
  const ConfirmPasswordInput.dirty({this.password = '', String value = ''})
      : super.dirty(value);

  @override
  ConfirmPasswordError? validator(String value) {
    if (value.isEmpty) return ConfirmPasswordError.empty;
    return password == value ? null : ConfirmPasswordError.mismatch;
  }
}

enum NinError { empty, invalid }

class NinInput extends FormzInput<String, NinError> {
  const NinInput.pure() : super.pure('');
  const NinInput.dirty([super.value = '']) : super.dirty();

  @override
  NinError? validator(String value) {
    if (value.isEmpty) return NinError.empty;
    // رقم التعريف الوطني الجزائري: 18 رقمًا
    if (value.length != 18 || int.tryParse(value) == null) {
      return NinError.invalid;
    }
    return null;
  }
}

enum PhoneError { empty, invalid }

class PhoneInput extends FormzInput<String, PhoneError> {
  const PhoneInput.pure() : super.pure('');
  const PhoneInput.dirty([super.value = '']) : super.dirty();

  @override
  PhoneError? validator(String value) {
    if (value.isEmpty) return PhoneError.empty;
    // أرقام الجزائر: 10 خانات تبدأ بـ 0 (05/06/07)
    if (value.length != 10 || !value.startsWith('0')) {
      return PhoneError.invalid;
    }
    return null;
  }
}

enum NameError { empty, tooShort }

class NameInput extends FormzInput<String, NameError> {
  const NameInput.pure() : super.pure('');
  const NameInput.dirty([super.value = '']) : super.dirty();

  @override
  NameError? validator(String value) {
    if (value.trim().isEmpty) return NameError.empty;
    if (value.trim().length < 2) return NameError.tooShort;
    return null;
  }
}

/// حقل عام مطلوب (مثلاً معرّف الدخول: NIN أو بريد).
enum RequiredError { empty }

class RequiredInput extends FormzInput<String, RequiredError> {
  const RequiredInput.pure() : super.pure('');
  const RequiredInput.dirty([super.value = '']) : super.dirty();

  @override
  RequiredError? validator(String value) =>
      value.trim().isEmpty ? RequiredError.empty : null;
}
