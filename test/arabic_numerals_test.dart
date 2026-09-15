import 'package:flutter_test/flutter_test.dart';
import 'package:mazayada/core/utils/arabic_numerals.dart';
import 'package:mazayada/features/auth/presentation/formz/auth_inputs.dart';

void main() {
  group('toLatinDigits', () {
    test('يحوّل الأرقام العربية-الهندية', () {
      expect(toLatinDigits('٢٣٢٣٢٣٢٣٢٣٢٣٢٣٢٣٢٣'), '232323232323232323');
      expect(toLatinDigits('٠١٢٣٤٥٦٧٨٩'), '0123456789');
    });

    test('يحوّل الأرقام الفارسية/الأردية', () {
      expect(toLatinDigits('۰۱۲۳۴۵۶۷۸۹'), '0123456789');
    });

    test('يسيب الحروف والرموز زي ما هي', () {
      expect(toLatinDigits('Mazayada@٢٠٢٦!'), 'Mazayada@2026!');
      expect(toLatinDigits('نص عربي'), 'نص عربي');
      expect(toLatinDigits(''), '');
    });

    test('رقم السجل التجاري بحروفه وشرطاته يفضل سليم', () {
      expect(toLatinDigits('١٦/٠٠-١٢٣٤٥٦٧ B ٢١'), '16/00-1234567 B 21');
    });
  });

  group('حقول التسجيل', () {
    test('الرقم التعريفي المكتوب بالعربي يتحقق ويتخزّن لاتيني', () {
      final nin = NinInput.dirty('١٢٣٤٥٦٧٨٩٠١٢٣٤٥٦٧٨');
      expect(nin.value, '123456789012345678');
      expect(nin.isValid, isTrue);
    });

    test('رقم الهاتف المكتوب بالعربي يتحقق ويتخزّن لاتيني', () {
      final phone = PhoneInput.dirty('٠٥٥١٢٣٤٥٦٧');
      expect(phone.value, '0551234567');
      expect(phone.isValid, isTrue);
    });

    test('كلمة السر بأرقام عربية تعدّي شرط الرقم', () {
      final password = NewPasswordInput.dirty('Mazayada@٢٠٢٦');
      expect(password.value, 'Mazayada@2026');
      expect(password.isValid, isTrue);
    });

    test('التأكيد يطابق حتى لو اتكتب بشكل مختلف عن الأصل', () {
      final confirm = ConfirmPasswordInput.dirty(
        password: 'Mazayada@٢٠٢٦',
        value: 'Mazayada@2026',
      );
      expect(confirm.isValid, isTrue);
    });

    test('معرّف الدخول (NIN) يتحوّل لاتيني قبل الإرسال', () {
      expect(RequiredInput.dirty('١٢٣').value, '123');
    });
  });
}
