// اختبارات التعديلات الجديدة المطلوبة من العميل — المنطق النقي فقط.
//
// التركيز على القواعد اللي لو اتكسرت هتغيّر سلوك المستخدم من غير ما أي
// شاشة تبان غلط: سلّم الأزرار، وإقفال المزايدة بالوقت، وحد المزايدة الأدنى.

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mazayada/core/session/account_cache.dart';
import 'package:mazayada/features/auctions/domain/entities/auction.dart';
import 'package:mazayada/features/auctions/domain/entities/auction_viewer.dart';
import 'package:mazayada/features/auctions/domain/entities/money.dart';
import 'package:mazayada/features/bidding/presentation/widgets/bid_controls.dart';
import 'package:mazayada/l10n/app_localizations.dart';

const _zero = Money(amount: 0, formatted: '0 دج');

Auction _auction({
  DateTime? endTime,
  bool hasEnded = false,
  AuctionStatus status = AuctionStatus.active,
  bool isBiddable = true,
}) => Auction(
  id: 'a1',
  title: 'مزايدة',
  status: status,
  auctionType: 'SALE',
  openingPrice: _zero,
  currentPrice: _zero,
  depositAmount: _zero,
  endTime: endTime,
  hasEnded: hasEnded,
  isBiddable: isBiddable,
);

const _citizen = AuctionViewer(canBid: true);

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
  group('تعديل 3 — تعطيل شراء دفتر الشروط بانتهاء الوقت', () {
    test('وقت الإقفال عدّى → المزاد منتهي حتى لو has_ended لسه false', () {
      final auction = _auction(
        endTime: DateTime.now().subtract(const Duration(seconds: 5)),
      );
      expect(auction.isEndedNow, isTrue);
    });

    test('وقت الإقفال لسه جاي → المزاد شغّال', () {
      final auction = _auction(
        endTime: DateTime.now().add(const Duration(hours: 2)),
      );
      expect(auction.isEndedNow, isFalse);
    });

    test('من غير وقت إقفال بنعتمد على علم السيرفر', () {
      expect(_auction().isEndedNow, isFalse);
      expect(_auction(hasEnded: true).isEndedNow, isTrue);
    });

    test('زرار شراء الدفتر بيختفي بمجرد ما الوقت يعدّي', () {
      final live = _auction(
        endTime: DateTime.now().add(const Duration(minutes: 5)),
      );
      expect(
        ctaFor(live, _citizen, isAuthenticated: true),
        AuctionCta.buyBook,
      );

      final justClosed = _auction(
        endTime: DateTime.now().subtract(const Duration(seconds: 1)),
      );
      expect(
        ctaFor(justClosed, _citizen, isAuthenticated: true),
        isNot(AuctionCta.buyBook),
      );
    });
  });

  group('تعديل 4 — إخفاء المشاركة عن حسابات الإدارة', () {
    test('حساب موظّف مايشوفش أي إجراء مشاركة', () {
      expect(
        ctaFor(
          _auction(endTime: DateTime.now().add(const Duration(hours: 1))),
          _citizen,
          isAuthenticated: true,
          account: const ViewerAccountFlags(isStaff: true),
        ),
        AuctionCta.none,
      );
    });

    test('المواطن العادي مايتأثرش', () {
      expect(
        ctaFor(
          _auction(endTime: DateTime.now().add(const Duration(hours: 1))),
          _citizen,
          isAuthenticated: true,
          account: const ViewerAccountFlags(canBid: true),
        ),
        AuctionCta.buyBook,
      );
    });

    test('تصنيف الأدوار مطابق لـ UserRole::isStaff', () {
      expect(AccountRoles.isStaff('CITIZEN'), isFalse);
      expect(AccountRoles.isStaff('PREMIUM_CITIZEN'), isFalse);
      expect(AccountRoles.isStaff('SUPER_ADMIN'), isTrue);
      expect(AccountRoles.isStaff('ENTITY_VIEWER'), isTrue);
      // دور غير معروف = نتعامل معاه كموظّف (الأأمن)، وnull = مش معروف.
      expect(AccountRoles.isStaff('SOMETHING_NEW'), isTrue);
      expect(AccountRoles.isStaff(null), isFalse);
    });
  });

  group('تعديل 12 — الحد الأدنى للمزايدة حسب نسبة القطاع', () {
    test('minBidAmount بياخد قيمة السيرفر لما ترجع', () {
      const auction = Auction(
        id: 'a1',
        title: 'مزايدة',
        status: AuctionStatus.active,
        auctionType: 'SALE',
        openingPrice: _zero,
        currentPrice: Money(amount: 100000, formatted: '100 000 دج'),
        depositAmount: _zero,
        minBid: Money(amount: 105000, formatted: '105 000 دج'),
      );
      expect(auction.minBidAmount, 105000);
    });

    test('من غير min_bid بنرجع لأي زيادة فوق السعر الحالي', () {
      const auction = Auction(
        id: 'a1',
        title: 'مزايدة',
        status: AuctionStatus.active,
        auctionType: 'SALE',
        openingPrice: _zero,
        currentPrice: Money(amount: 100000, formatted: '100 000 دج'),
        depositAmount: _zero,
      );
      expect(auction.minBidAmount, 100001);
    });

    testWidgets('عرض أقل من حد القطاع بيتمنع مع رسالة توضيحية', (
      tester,
    ) async {
      final placed = <int>[];
      await tester.pumpWidget(
        _host(
          BidControls(
            currentPrice: 100000,
            placingBid: false,
            onPlaceBid: placed.add,
            minBid: 105000,
            minBidFormatted: '105 000 دج',
            minIncrementPercent: 5,
          ),
        ),
      );
      await tester.pumpAndSettle();

      // فوق السعر الحالي لكن تحت حد القطاع — لازم يتمنع.
      await tester.enterText(find.byType(TextField), '101000');
      await tester.pumpAndSettle();

      final t = await AppLocalizations.delegate.load(const Locale('ar'));
      await tester.tap(find.text(t.submitYourBid));
      await tester.pumpAndSettle();

      expect(placed, isEmpty);
      // الرسالة بتذكر الحد والنسبة عشان المواطن يفهم إن ده قاعدة مش عطل.
      expect(
        find.text(t.bidBelowSectorMinimum('105 000 دج', '5')),
        findsOneWidget,
      );
    });

    testWidgets('عرض مساوٍ لحد القطاع بيعدّي', (tester) async {
      final placed = <int>[];
      await tester.pumpWidget(
        _host(
          BidControls(
            currentPrice: 100000,
            placingBid: false,
            onPlaceBid: placed.add,
            minBid: 105000,
            minBidFormatted: '105 000 دج',
            minIncrementPercent: 5,
          ),
        ),
      );
      await tester.pumpAndSettle();

      await tester.enterText(find.byType(TextField), '105000');
      await tester.pumpAndSettle();

      final t = await AppLocalizations.delegate.load(const Locale('ar'));
      await tester.tap(find.text(t.submitYourBid));
      await tester.pumpAndSettle();

      expect(placed, [105000]);
    });

    testWidgets('حد أدنى غلط من السيرفر (تحت السعر الحالي) بيتتجاهل', (
      tester,
    ) async {
      final placed = <int>[];
      await tester.pumpWidget(
        _host(
          BidControls(
            currentPrice: 100000,
            placingBid: false,
            onPlaceBid: placed.add,
            minBid: 90000,
          ),
        ),
      );
      await tester.pumpAndSettle();

      await tester.enterText(find.byType(TextField), '100001');
      await tester.pumpAndSettle();

      final t = await AppLocalizations.delegate.load(const Locale('ar'));
      await tester.tap(find.text(t.submitYourBid));
      await tester.pumpAndSettle();

      expect(placed, [100001]);
    });
  });
}
