import 'package:flutter/services.dart';

/// أدوات التعامل مع الأرقام العربية-الهندية (٠١٢٣…) والفارسية/الأردية (۰۱۲۳…)
/// اللي بتطلع من الكيبورد العربي على أندرويد و iOS.
///
/// القاعدة في التطبيق: الحقل يعرض اللي كتبه المستخدم زي ما هو (عربي)، والتحويل
/// للاتيني بيحصل عند حدود التحقق والإرسال — يعني الـ state والـ request دايمًا
/// بأرقام لاتينية زي ما الـ API متوقّع.

const int _arabicIndicZero = 0x0660; // ٠ .. ٩
const int _extendedArabicIndicZero = 0x06F0; // ۰ .. ۹
const int _latinZero = 0x30; // 0 .. 9

/// يحوّل أي رقم عربي-هندي أو فارسي في [input] لما يقابله لاتينيًا،
/// ويسيب باقي الحروف زي ما هي (مفيد لكلمة السر اللي فيها حروف ورموز).
String toLatinDigits(String input) {
  if (input.isEmpty) return input;

  var changed = false;
  final buffer = StringBuffer();

  for (final rune in input.runes) {
    if (rune >= _arabicIndicZero && rune <= _arabicIndicZero + 9) {
      buffer.writeCharCode(_latinZero + rune - _arabicIndicZero);
      changed = true;
    } else if (rune >= _extendedArabicIndicZero &&
        rune <= _extendedArabicIndicZero + 9) {
      buffer.writeCharCode(_latinZero + rune - _extendedArabicIndicZero);
      changed = true;
    } else {
      buffer.writeCharCode(rune);
    }
  }

  return changed ? buffer.toString() : input;
}

/// فورماترات الإدخال المشتركة.
class AppInputFormatters {
  AppInputFormatters._();

  /// يسمح بالأرقام فقط — لاتينية أو عربية أو فارسية — من غير ما يحوّلها،
  /// عشان الحقل يفضل يعرض الشكل اللي كتبه المستخدم.
  ///
  /// ملاحظة: [FilteringTextInputFormatter.digitsOnly] بيرمي الأرقام العربية
  /// لأن الـ regex بتاعه `[^0-9]`، فما ينفعش نستخدمه هنا.
  static final TextInputFormatter anyNumeralDigitsOnly =
      FilteringTextInputFormatter.allow(
        RegExp(r'[0-9٠-٩۰-۹]'),
      );
}
