import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mazayada/features/bidding/presentation/widgets/bid_controls.dart';
import 'package:mazayada/l10n/app_localizations.dart';

Widget _host(Widget child) => ScreenUtilInit(
  designSize: const Size(375, 812),
  child: MaterialApp(
    locale: const Locale('ar'),
    localizationsDelegates: const [
      AppLocalizations.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ],
    supportedLocales: AppLocalizations.supportedLocales,
    home: Scaffold(
      backgroundColor: Colors.black,
      body: Padding(padding: const EdgeInsets.all(12), child: child),
    ),
  ),
);

void main() {
  testWidgets('المبلغ المكتوب بأرقام عربية بيتبعت كرقم صحيح', (tester) async {
    final placed = <int>[];
    await tester.pumpWidget(
      _host(
        BidControls(
          currentPrice: 10002,
          placingBid: false,
          onPlaceBid: placed.add,
        ),
      ),
    );
    await tester.pumpAndSettle();

    await tester.enterText(find.byType(TextField), '٢٥٠٠٠');
    await tester.pumpAndSettle();

    final t = await AppLocalizations.delegate.load(const Locale('ar'));
    await tester.tap(find.text(t.submitYourBid));
    await tester.pumpAndSettle();

    expect(placed, [25000]);
  });

  testWidgets('مبلغ تحت الحد الأدنى بيتمنع ويعرض خطأ', (tester) async {
    final placed = <int>[];
    await tester.pumpWidget(
      _host(
        BidControls(
          currentPrice: 10002,
          placingBid: false,
          onPlaceBid: placed.add,
        ),
      ),
    );
    await tester.pumpAndSettle();

    // ١٠٠٠٠ أقل من السعر الحالي — لازم يترفض قبل ما يروح للسيرفر.
    await tester.enterText(find.byType(TextField), '١٠٠٠٠');
    await tester.pumpAndSettle();

    final t = await AppLocalizations.delegate.load(const Locale('ar'));
    await tester.tap(find.text(t.submitYourBid));
    await tester.pumpAndSettle();

    expect(placed, isEmpty);
    expect(find.text(t.bidBelowMinimum), findsOneWidget);
  });
}
