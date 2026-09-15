import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mazayada/core/utils/arabic_numerals.dart';
import 'package:mazayada/features/commercial_register/presentation/widgets/cr_field.dart';

/// نلفّ الحقل بنفس بيئة التطبيق (ScreenUtil + RTL) عشان الـ .sp/.w تشتغل.
Widget _host(Widget child) => ScreenUtilInit(
  designSize: const Size(375, 812),
  child: MaterialApp(
    home: Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(body: SingleChildScrollView(child: child)),
    ),
  ),
);

void main() {
  testWidgets('يعرض الـ hint ورسالة الخطأ ويرجّع اللي اتكتب', (tester) async {
    final typed = <String>[];

    await tester.pumpWidget(
      _host(
        CrField(
          label: 'الرقم الجبائي',
          hint: '15 رقمًا',
          value: '',
          errorText: 'هذا الحقل مطلوب',
          inputFormatters: [AppInputFormatters.anyNumeralDigitsOnly],
          onChanged: typed.add,
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.text('15 رقمًا'), findsOneWidget);
    expect(find.text('هذا الحقل مطلوب'), findsOneWidget);

    // الأرقام العربية بتعدّي من الفورماتر وتفضل ظاهرة زي ما اتكتبت.
    await tester.enterText(find.byType(TextField), '٠٠٠١١٦');
    expect(typed.last, '٠٠٠١١٦');
    expect(find.text('٠٠٠١١٦'), findsOneWidget);
  });

  testWidgets('الحروف مرفوضة في حقل الأرقام', (tester) async {
    final typed = <String>[];
    await tester.pumpWidget(
      _host(
        CrField(
          label: 'الرقم الجبائي',
          value: '',
          inputFormatters: [AppInputFormatters.anyNumeralDigitsOnly],
          onChanged: typed.add,
        ),
      ),
    );
    await tester.pumpAndSettle();

    await tester.enterText(find.byType(TextField), 'A1ب٢');
    expect(typed.last, '1٢');
  });

  testWidgets('علامة الصح بتظهر لما الحقل يكتمل', (tester) async {
    Widget field({required bool done}) => _host(
      CrField(
        label: 'اسم الشركة',
        value: 'ذ.م.م مزايدة',
        isDone: done,
        onChanged: (_) {},
      ),
    );

    await tester.pumpWidget(field(done: false));
    await tester.pumpAndSettle();
    expect(find.byIcon(Icons.check_circle), findsNothing);

    await tester.pumpWidget(field(done: true));
    await tester.pumpAndSettle();
    expect(find.byIcon(Icons.check_circle), findsOneWidget);
  });

  testWidgets('onBlur بيتنده لما الحقل يفقد التركيز', (tester) async {
    var blurred = 0;
    await tester.pumpWidget(
      _host(
        Column(
          children: [
            CrField(
              label: 'اسم الشركة',
              value: '',
              onChanged: (_) {},
              onBlur: () => blurred++,
            ),
            const TextField(key: Key('other')),
          ],
        ),
      ),
    );
    await tester.pumpAndSettle();

    await tester.tap(find.byType(TextField).first);
    await tester.pumpAndSettle();
    expect(blurred, 0);

    await tester.tap(find.byKey(const Key('other')));
    await tester.pumpAndSettle();
    expect(blurred, 1);
  });
}
