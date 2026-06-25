import 'package:formz/formz.dart';

/// حقل نصّي مطلوب في فورم الاعتراض (الموضوع / السبب).
/// نفس قاعدة التحقق القديمة: القيمة بعد trim لازم تكون غير فارغة.
enum AppealTextError { empty }

class AppealTextInput extends FormzInput<String, AppealTextError> {
  const AppealTextInput.pure() : super.pure('');
  const AppealTextInput.dirty([super.value = '']) : super.dirty();

  @override
  AppealTextError? validator(String value) =>
      value.trim().isEmpty ? AppealTextError.empty : null;
}
