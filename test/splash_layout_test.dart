// توسيط محتوى شاشة البداية.
//
// الـ`Stack` بيدّي العناصر غير الموضوعة (non-positioned) قيودًا **مرنة**،
// فالعمود بيتقلّص على عرض أعرض عنصر جوّاه بدل ما ياخد عرض الشاشة، وبعدين
// بيترصّ حسب `alignment` الافتراضي `AlignmentDirectional.topStart` — اللي
// هو **يمين** الشاشة في العربي. النتيجة إن الشعار والعنوان والشريط كلهم
// بيتزحلقوا ناحية اليمين.
//
// الاختبار بيتنفّذ على عرض **أوسع من المحتوى** عن قصد: على 375 كان النص
// بيملا السطر بالظبط فالعيب مكانش بيبان خالص.

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mazayada/core/di/injection.dart';
import 'package:mazayada/features/auth/presentation/pages/splash_page.dart';
import 'package:mazayada/l10n/app_localizations.dart';

const _secureStorageChannel = MethodChannel(
  'plugins.it_nomads.com/flutter_secure_storage',
);

/// عروض بتخلّي المحتوى أضيق من الشاشة — وهي الحالة اللي بتكشف العيب.
///
/// مهم: `designSize` بيتساوي بمقاس الشاشة عشان `.w` و`.sp` يبقوا 1:1.
/// لو سبناه 375 كان الخط هيكبر مع الشاشة والنص هيملا السطر دايمًا،
/// فالعيب ما كانش هيبان في أي عرض.
const _widths = <double>[440, 600, 834];

Future<void> _pumpSplash(WidgetTester tester, Size size, Locale locale) async {
  tester.view.physicalSize = size;
  tester.view.devicePixelRatio = 1.0;

  await tester.pumpWidget(
    ScreenUtilInit(
      designSize: size,
      builder: (_, _) => MaterialApp(
        locale: locale,
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: AppLocalizations.supportedLocales,
        home: const SplashPage(),
      ),
    ),
  );
  await tester.pump();
}

/// بنفكّ الشجرة وبعدين نعدّي الوقت، عشان مؤقّت الـ splash ما يفضلش معلّق.
Future<void> _settle(WidgetTester tester) async {
  await tester.pumpWidget(const SizedBox.shrink());
  await tester.pump(const Duration(seconds: 3));
}

void main() {
  final binding = TestWidgetsFlutterBinding.ensureInitialized();

  setUpAll(() async {
    binding.defaultBinaryMessenger.setMockMethodCallHandler(
      _secureStorageChannel,
      (call) async => call.method == 'readAll' ? <String, String>{} : null,
    );
    await configureDependencies();
  });

  tearDownAll(() {
    binding.defaultBinaryMessenger.setMockMethodCallHandler(
      _secureStorageChannel,
      null,
    );
  });

  group('محتوى شاشة البداية متوسّط', () {
    for (final locale in const [Locale('ar'), Locale('fr')]) {
      for (final width in _widths) {
        testWidgets(
          'العرض ${width.toInt()} · ${locale.languageCode} — الشعار والعنوان في النص',
          (tester) async {
            addTearDown(tester.view.reset);
            await _pumpSplash(tester, Size(width, 900), locale);

            final expected = width / 2;

            // اللوحة اللي جوّاها الشعار.
            final logo = find.byType(Image);
            expect(logo, findsOneWidget);
            expect(
              tester.getCenter(logo).dx,
              moreOrLessEquals(expected, epsilon: 1),
              reason: 'الشعار مزحزح عن نص الشاشة',
            );

            // اسم التطبيق وسطره التوضيحي.
            for (final text in tester.widgetList<Text>(find.byType(Text))) {
              final center = tester
                  .getCenter(find.byWidget(text))
                  .dx;
              expect(
                center,
                moreOrLessEquals(expected, epsilon: 1),
                reason: 'النص «${text.data}» مزحزح عن نص الشاشة',
              );
            }

            await _settle(tester);
          },
        );
      }
    }
  });
}
