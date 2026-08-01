import 'package:flutter_test/flutter_test.dart';
import 'package:mazayada/core/utils/money_format.dart';
import 'package:mazayada/features/auctions/data/models/money_model.dart';

void main() {
  group('formatAmount', () {
    test('بيجمّع الآلاف بفاصل آمن مع اتجاه النص', () {
      expect(formatAmount(1200000), '1${kThinNbsp}200${kThinNbsp}000');
      expect(formatAmount(50900), '50${kThinNbsp}900');
      expect(formatAmount(999), '999');
      expect(formatAmount(0), '0');
      expect(formatAmount(-1500), '-1${kThinNbsp}500');
    });

    test('الفاصل هو U+202F مش مسافة عادية', () {
      // ده بيت القصيد: المسافة العادية تصنيفها محايد فبتقلب مجموعات الأرقام
      // جوه فقرة عربية، بينما U+202F تصنيفه CS فبيفضل جزء من الرقم.
      expect(kThinNbsp, '\u202F');
      expect(formatAmount(1200000).contains('\u0020'), isFalse);
    });
  });

  group('bidiSafeNumber', () {
    test('بيصلّح نصوص الباك بمسافات عادية', () {
      expect(
        bidiSafeNumber('6 100 000 دج'),
        '6${kThinNbsp}100${kThinNbsp}000 دج',
      );
    });

    test('بيسيب المسافة اللي قبل العملة زي ما هي', () {
      final out = bidiSafeNumber('900 دج');
      expect(out, '900 دج');
    });

    test('بيشتغل على المسافة غير القابلة للكسر كمان', () {
      expect(bidiSafeNumber('1\u00A0500'), '1${kThinNbsp}500');
    });
  });

  test('MoneyModel.toEntity بيصلّح formatted عند حدود البيانات', () {
    const model = MoneyModel(amount: 1200000, formatted: '1 200 000 دج');
    expect(
      model.toEntity().formatted,
      '1${kThinNbsp}200${kThinNbsp}000 دج',
    );
  });

  test('formatMoney بيلزق العملة بمسافة عادية', () {
    expect(formatMoney(1200001, 'دج'), '1${kThinNbsp}200${kThinNbsp}001 دج');
  });
}
