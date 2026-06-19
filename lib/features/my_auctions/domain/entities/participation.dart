import 'package:equatable/equatable.dart';
import '../../../auctions/domain/entities/money.dart';

/// تبويبات مزايداتي — تطابق قيم الـ API (?tab=).
enum MyAuctionTab { active, won, lost, upcoming }

extension MyAuctionTabX on MyAuctionTab {
  String get apiValue => name; // active / won / lost / upcoming

  String get labelAr => switch (this) {
        MyAuctionTab.active => 'نشطة',
        MyAuctionTab.won => 'رابحة',
        MyAuctionTab.lost => 'خاسرة',
        MyAuctionTab.upcoming => 'قادمة',
      };
}

/// مشاركة المستخدم في مزاد (عنصر في قائمة مزايداتي).
class Participation extends Equatable {
  final String auctionId;
  final String title;
  final String? coverPhotoUrl;
  final Money price; // السعر المعروض (يختلف حسب التبويب)
  final String priceLabel; // "مزايدتك الحالية" / "سعر الرسو" / ...
  final String statusLabel; // "أنت الأعلى" / "بانتظار الدفع" / ...
  final String statusKind; // winning / outbid / awaiting_payment / completed / refund / upcoming

  const Participation({
    required this.auctionId,
    required this.title,
    this.coverPhotoUrl,
    required this.price,
    required this.priceLabel,
    required this.statusLabel,
    required this.statusKind,
  });

  @override
  List<Object?> get props => [auctionId, title, statusKind];
}
