import 'package:equatable/equatable.dart';
import '../../../auctions/domain/entities/money.dart';

/// تبويبات مزايداتي — تطابق قيم الـ API (?tab=).
enum MyAuctionTab { active, won, lost, upcoming }

extension MyAuctionTabX on MyAuctionTab {
  String get apiValue => name; // active / won / lost / upcoming
}

/// حالة مشاركة المستخدم في المزاد — تحدد النص واللون والأيقونة في طبقة العرض.
enum ParticipationStatus {
  winning,
  outbid,
  awaitingPayment,
  completed,
  refund,
  upcoming,
}

/// مشاركة المستخدم في مزاد (عنصر في قائمة مزايداتي).
class Participation extends Equatable {
  final String auctionId;
  final String title;
  final String? coverPhotoUrl;
  final Money price; // السعر المعروض (يختلف حسب التبويب)
  final ParticipationStatus status;

  const Participation({
    required this.auctionId,
    required this.title,
    this.coverPhotoUrl,
    required this.price,
    required this.status,
  });

  @override
  List<Object?> get props => [auctionId, title, status];
}
