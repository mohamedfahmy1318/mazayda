import 'package:equatable/equatable.dart';
import '../../../auctions/domain/entities/auction_list_item.dart';

/// تبويبات «مزاداتي» — تطابق قيم الـ API (?tab=).
///
/// ⚠️ التبويبات **مناظير مش تقسيم حصري**: المزاد المكسوب مقفول كمان، فهو
/// موجود في `won` و`all`. `all` هو الشامل — المشاركة في مزاد اتلغى
/// (`CANCELLED`) بتظهر فيه هو بس.
enum MyAuctionTab { all, active, won, lost, upcoming }

extension MyAuctionTabX on MyAuctionTab {
  String get apiValue => name; // all / active / won / lost / upcoming
}

/// أعداد كل تبويب — بتيجي في `meta.counts` مع كل طلب.
class MyAuctionCounts extends Equatable {
  final int all;
  final int active;
  final int won;
  final int lost;
  final int upcoming;

  const MyAuctionCounts({
    this.all = 0,
    this.active = 0,
    this.won = 0,
    this.lost = 0,
    this.upcoming = 0,
  });

  static const empty = MyAuctionCounts();

  int of(MyAuctionTab tab) => switch (tab) {
    MyAuctionTab.all => all,
    MyAuctionTab.active => active,
    MyAuctionTab.won => won,
    MyAuctionTab.lost => lost,
    MyAuctionTab.upcoming => upcoming,
  };

  @override
  List<Object?> get props => [all, active, won, lost, upcoming];
}

/// شارة حالة الصف في «مزاداتي».
///
/// `winning`/`outbid` بيعتمدوا على `is_winning` من `MyAuctionResource`
/// (BE-3). لو المفتاح غاب (رد قديم) بنرجع لحالة المزاد ومابندّعيش حاجة.
enum MyAuctionBadge {
  live,
  ended,
  participating,
  won,
  lost,
  upcoming,

  /// المستخدم صاحب أعلى مزايدة حاليًا.
  winning,

  /// اتجاوزوه.
  outbid,
}

/// نتيجة `GET /my-auctions?tab=` — عناصر + التبويب + الأعداد.
class MyAuctionsResult extends Equatable {
  final List<AuctionListItem> items;
  final MyAuctionTab tab;
  final MyAuctionCounts counts;

  const MyAuctionsResult({
    required this.items,
    required this.tab,
    this.counts = MyAuctionCounts.empty,
  });

  @override
  List<Object?> get props => [items, tab, counts];
}

/// اشتقاق الشارة من التبويب + حالة المشاركة الحقيقية.
///
/// في التبويبات الحصرية (`won`/`lost`/`upcoming`) الشارة معروفة من التبويب
/// نفسه. في `all`/`active` بنشتقّها من `is_winning` + حالة المزاد.
MyAuctionBadge badgeFor(MyAuctionTab tab, AuctionListItem item) => switch (tab) {
  MyAuctionTab.won => MyAuctionBadge.won,
  MyAuctionTab.lost => MyAuctionBadge.lost,
  MyAuctionTab.upcoming => MyAuctionBadge.upcoming,
  // `all` فيه المفتوح والمقفول والملغى مع بعض، فبنفصل على حالة المزاد الأول.
  MyAuctionTab.all || MyAuctionTab.active => _openTabBadge(item),
};

MyAuctionBadge _openTabBadge(AuctionListItem item) {
  // مزاد خلص: نتيجته معروفة من `is_winning` (الباك بيحوّل معناها للفائز بعد
  // الإقفال). `is_winner` نفسه مكسور في الباك — راجع AuctionListItem.isWinner.
  if (item.isOver) {
    return switch (item.isWinnerResolved) {
      true => MyAuctionBadge.won,
      false => MyAuctionBadge.lost,
      null => MyAuctionBadge.ended,
    };
  }

  if (!item.isLive) return MyAuctionBadge.upcoming;

  // مزاد شغّال: موقف المزايدة هو المعلومة المهمة.
  return switch (item.isWinning) {
    true => MyAuctionBadge.winning,
    // مسجّل بس مزايدش لسه — «تم تجاوزك» هنا هتبقى كذب.
    false => item.myHighestBid != null
        ? MyAuctionBadge.outbid
        : MyAuctionBadge.participating,
    null => MyAuctionBadge.live,
  };
}
