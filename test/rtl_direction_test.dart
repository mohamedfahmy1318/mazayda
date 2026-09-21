// اتجاه الأسهم مع اتجاه اللغة.
//
// أيقونات الأسهم في Material معرّفة بـ`matchTextDirection: true`، يعني
// `Icon` بيقلبها أفقيًا لوحده في RTL. الاختبارات دي بتثبّت الحقيقة دي،
// وبتمسك أي رجوع لنمط `isRtl ? arrow_forward : arrow_back` — النمط ده
// بيقلب تاني فوق قلب Flutter، فالسهم بيطلع عكس الصح في العربي.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mazayada/core/constants/app_icons.dart';

/// هل Flutter لفّ الأيقونة في `Transform` بمصفوفة `scaleX(-1)`؟
bool _isMirrored(WidgetTester tester) => tester
    .widgetList<Transform>(find.byType(Transform))
    .any((t) => t.transform.storage[0] == -1.0);

Future<bool> _render(
  WidgetTester tester,
  IconData icon,
  TextDirection direction,
) async {
  await tester.pumpWidget(
    Directionality(textDirection: direction, child: Icon(icon)),
  );
  return _isMirrored(tester);
}

void main() {
  group('أيقونات الاتجاه بتتقلب تلقائيًا', () {
    // القائمة دي هي كل الأيقونات اللي التطبيق بيعتمد على قلبها التلقائي.
    // لو Flutter شال `matchTextDirection` عن أي واحدة فيهم، الاختبار ده
    // بيقع بدل ما السهم يبان مقلوب في التطبيق من غير ما حد ياخد باله.
    const directional = <String, IconData>{
      'back': AppIcons.back,
      'backIos': AppIcons.backIos,
      'forward': AppIcons.forward,
      'openDetails': AppIcons.openDetails,
      'chevronForward': AppIcons.chevronForward,
      'chevronForwardIos': AppIcons.chevronForwardIos,
    };

    for (final entry in directional.entries) {
      testWidgets('${entry.key} بيتقلب في RTL ومابيتقلبش في LTR', (
        tester,
      ) async {
        expect(
          await _render(tester, entry.value, TextDirection.ltr),
          isFalse,
          reason: 'مالوش لازمة يتقلب في اللاتيني',
        );
        expect(
          await _render(tester, entry.value, TextDirection.rtl),
          isTrue,
          reason: 'لازم يتقلب لوحده في العربي — من غير أي تدخّل مننا',
        );
      });
    }
  });

  group('الأيقونة الأساسية هي اللي بتتكتب', () {
    // `AppIcons.back` لازم يفضل السهم اللي بيشاور **شمال** في الأصل.
    // لو حد بدّله بـ`arrow_forward` عشان «يظبّطه للعربي»، هيبقى غلط:
    // Flutter هيقلبه فيطلع بيشاور شمال في العربي بدل يمين.
    test('back مش arrow_forward', () {
      expect(AppIcons.back, Icons.arrow_back_rounded);
      expect(AppIcons.backIos, Icons.arrow_back_ios_new_rounded);
    });

    test('forward مش arrow_back', () {
      expect(AppIcons.forward, Icons.arrow_forward_rounded);
      expect(AppIcons.openDetails, Icons.arrow_forward_rounded);
      expect(AppIcons.chevronForward, Icons.chevron_right_rounded);
    });
  });
}
