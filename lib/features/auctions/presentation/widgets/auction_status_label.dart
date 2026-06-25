import 'package:mazayada/l10n/app_localizations.dart';
import '../../domain/entities/auction.dart';

/// تحويل حالة المزاد إلى نص شارة مترجم (طبقة العرض — الـ domain لا يعرف اللغة).
/// يرجّع نصًا فارغًا للحالات التي لا تُعرض لها شارة (draft/unknown).
extension AuctionStatusBadgeLabel on AuctionStatus {
  String badgeLabel(AppLocalizations t) => switch (this) {
    AuctionStatus.active || AuctionStatus.extended => t.live,
    AuctionStatus.published => t.comingSoon,
    AuctionStatus.closed => t.ended,
    AuctionStatus.cancelled => t.cancelled,
    AuctionStatus.draft || AuctionStatus.unknown => '',
  };
}
