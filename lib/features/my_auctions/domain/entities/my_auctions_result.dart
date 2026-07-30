import 'package:equatable/equatable.dart';
import '../../../auctions/domain/entities/auction_list_item.dart';

/// تبويبات «مزاداتي» — تطابق قيم الـ API (?tab=).
enum MyAuctionTab { active, won, lost, upcoming }

extension MyAuctionTabX on MyAuctionTab {
  String get apiValue => name; // active / won / lost / upcoming
}

/// أعداد كل تبويب — بتيجي في `meta.counts` مع كل طلب.
class MyAuctionCounts extends Equatable {
  final int active;
  final int won;
  final int lost;
  final int upcoming;

  const MyAuctionCounts({
    this.active = 0,
    this.won = 0,
    this.lost = 0,
    this.upcoming = 0,
  });

  static const empty = MyAuctionCounts();

  int of(MyAuctionTab tab) => switch (tab) {
    MyAuctionTab.active => active,
    MyAuctionTab.won => won,
    MyAuctionTab.lost => lost,
    MyAuctionTab.upcoming => upcoming,
  };

  @override
  List<Object?> get props => [active, won, lost, upcoming];
}

/// شارة حالة الصف في «مزاداتي».
///
/// ⚠️ **مفيش `winning` ولا `outbid`.** الـ API (`AuctionListResource`) مش
/// بيرجّع أي بيانات عن مشاركة المستخدم نفسه — لا `my_bid` ولا `is_winning`
/// ولا `deposit_paid`. الكود القديم كان بيفترضها فبيعرض «تم تجاوزك» على كل
/// صف نشط حتى وأنت الأعلى. الشارات دي مشتقّة من بيانات حقيقية بس.
/// لما يوصل طلب BE-3 نضيف الحالتين.
enum MyAuctionBadge {
  live,
  ended,
  participating,
  won,
  lost,
  upcoming,

  /// المستخدم صاحب أعلى مزايدة — بيظهر **فقط** لما الـ API يبعت
  /// `is_winning` (طلب BE-3).
  winning,

  /// اتجاوزوه — نفس الشرط.
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

/// اشتقاق الشارة من التبويب + حالة المزاد الحقيقية.
MyAuctionBadge badgeFor(MyAuctionTab tab, AuctionListItem item) => switch (tab) {
  MyAuctionTab.won => MyAuctionBadge.won,
  MyAuctionTab.lost => MyAuctionBadge.lost,
  MyAuctionTab.upcoming => MyAuctionBadge.upcoming,
  // لو الـ API بعت حالة المزايدة الحقيقية (BE-3) بنعرضها — وإلا بنكتفي
  // بحالة المزاد. **ما بندّعيش** فوز أو تجاوز من غير بيانات.
  MyAuctionTab.active => switch (item.isWinning) {
    true => MyAuctionBadge.winning,
    false => MyAuctionBadge.outbid,
    null =>
      item.isLive
          ? MyAuctionBadge.live
          : item.hasEnded
          ? MyAuctionBadge.ended
          : MyAuctionBadge.participating,
  },
};
