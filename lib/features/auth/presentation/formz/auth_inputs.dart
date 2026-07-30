import 'package:formz/formz.dart';
import '../auth_constants.dart';

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

enum PasswordError { empty }

/// كلمة المرور عند **تسجيل الدخول** — نتحقق فقط إنها مش فاضية.
/// متعمّد: العميل ما يفرضش قواعد التعقيد على الدخول، لأن الباك بيخفّف
/// القاعدة لـ Password::min(8) خارج الـ production، فحساب قديم أو متعمل
/// في بيئة تانية لازم يفضل قادر يسجّل دخول.
class PasswordInput extends FormzInput<String, PasswordError> {
  const PasswordInput.pure() : super.pure('');
  const PasswordInput.dirty([super.value = '']) : super.dirty();

  @override
  PasswordError? validator(String value) =>
      value.isEmpty ? PasswordError.empty : null;
}

enum NewPasswordError { empty, tooShort, needsMixedCase, needsNumber, needsSymbol }

/// كلمة مرور **جديدة** (تسجيل / إعادة تعيين) — تطابق Password::defaults()
/// في الـ production: min(12)->mixedCase()->numbers()->symbols()->uncompromised().
/// ملاحظة: شرط uncompromised (كلمة سر مسرّبة) بيتحقق منه السيرفر فقط.
class NewPasswordInput extends FormzInput<String, NewPasswordError> {
  const NewPasswordInput.pure() : super.pure('');
  const NewPasswordInput.dirty([super.value = '']) : super.dirty();

  static final _upper = RegExp(r'[A-Z]');
  static final _lower = RegExp(r'[a-z]');
  static final _digit = RegExp(r'[0-9]');
  static final _symbol = RegExp(r'[^A-Za-z0-9]');

  @override
  NewPasswordError? validator(String value) {
    if (value.isEmpty) return NewPasswordError.empty;
    if (value.length < AuthConstants.minPasswordLength) {
      return NewPasswordError.tooShort;
    }
    if (!_upper.hasMatch(value) || !_lower.hasMatch(value)) {
      return NewPasswordError.needsMixedCase;
    }
    if (!_digit.hasMatch(value)) return NewPasswordError.needsNumber;
    if (!_symbol.hasMatch(value)) return NewPasswordError.needsSymbol;
    return null;
  }
}

enum BirthDateError { empty, under18 }

/// تاريخ الميلاد بصيغة YYYY-MM-DD — نفس قاعدة الـ API:
/// required|date|before:(اليوم - 18 سنة).
class BirthDateInput extends FormzInput<String, BirthDateError> {
  const BirthDateInput.pure() : super.pure('');
  const BirthDateInput.dirty([super.value = '']) : super.dirty();

  @override
  BirthDateError? validator(String value) {
    if (value.isEmpty) return BirthDateError.empty;
    final date = DateTime.tryParse(value);
    if (date == null) return BirthDateError.empty;
    final now = DateTime.now();
    final cutoff = DateTime(
      now.year - AuthConstants.minAgeYears,
      now.month,
      now.day,
    );
    return date.isBefore(cutoff) ? null : BirthDateError.under18;
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
    if (value.length != AuthConstants.ninLength ||
        int.tryParse(value) == null) {
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
    if (value.length != AuthConstants.phoneLength || !value.startsWith('0')) {
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
