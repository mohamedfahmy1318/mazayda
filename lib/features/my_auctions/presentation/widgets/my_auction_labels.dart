import 'package:flutter/material.dart';
import 'package:mazayada/l10n/app_localizations.dart';
import '../../../../core/constants/app_colors.dart';
import '../../domain/entities/my_auctions_result.dart';

/// تسميات مترجمة لتبويبات «مزاداتي» (طبقة العرض — الـ domain لا يعرف اللغة).
extension MyAuctionTabLabel on MyAuctionTab {
  String label(AppLocalizations t) => switch (this) {
    MyAuctionTab.all => t.myAuctionsAll,
    MyAuctionTab.active => t.myAuctionsActive,
    MyAuctionTab.won => t.myAuctionsWon,
    MyAuctionTab.lost => t.myAuctionsLost,
    MyAuctionTab.upcoming => t.myAuctionsUpcoming,
  };

  String emptyMessage(AppLocalizations t) => switch (this) {
    MyAuctionTab.all => t.myAuctionsEmptyAll,
    MyAuctionTab.active => t.myAuctionsEmptyActive,
    MyAuctionTab.won => t.myAuctionsEmptyWon,
    MyAuctionTab.lost => t.myAuctionsEmptyLost,
    MyAuctionTab.upcoming => t.myAuctionsEmptyUpcoming,
  };
}

/// حالة الدفع النهائي كنص — `final_payment_status` من `MyAuctionResource`.
/// `null` معناها «مبدأش دفع نهائي» فمافيش سطر يتعرض أصلًا.
String? finalPaymentLabel(String? status, AppLocalizations t) =>
    switch (status) {
      'PENDING' => t.myAuctionsFinalPaymentPending,
      'CONFIRMED' => t.myAuctionsFinalPaymentDone,
      'FAILED' => t.myAuctionsFinalPaymentFailed,
      null => null,
      // حالة جديدة من الباك (REFUNDED/FORFEITED …) — ما نخترعش لها نص.
      _ => null,
    };

/// شكل الشارة (لون النص/الخلفية + الأيقونة).
typedef MyAuctionBadgeStyle = ({Color fg, Color bg, IconData icon});

extension MyAuctionBadgeX on MyAuctionBadge {
  String statusLabel(AppLocalizations t) => switch (this) {
    MyAuctionBadge.live => t.myAuctionsStatusLive,
    MyAuctionBadge.ended => t.myAuctionsStatusEnded,
    MyAuctionBadge.participating => t.myAuctionsStatusParticipating,
    MyAuctionBadge.won => t.myAuctionsStatusWon,
    MyAuctionBadge.lost => t.myAuctionsStatusLost,
    MyAuctionBadge.upcoming => t.myAuctionsStatusUpcoming,
    MyAuctionBadge.winning => t.myAuctionsStatusWinning,
    MyAuctionBadge.outbid => t.myAuctionsStatusOutbid,
  };

  /// عنوان السعر المعروض. للمزادات المقفولة بنعرض `final_price` الحقيقي
  /// (BE-6) عبر `AuctionListItem.resultPrice`.
  ///
  /// المزادات الشغّالة بتقول **«السعر الحالي»** مش «مزايدتك الحالية»: الرقم
  /// ده سعر المزاد مش عرض المستخدم، وبقى فيه سطر منفصل لأعلى مزايدة له
  /// (`my_highest_bid` من BE-3) — فالعنوان القديم بقى مضلّل جنبه.
  String priceLabel(AppLocalizations t) => switch (this) {
    MyAuctionBadge.live ||
    MyAuctionBadge.ended ||
    MyAuctionBadge.participating ||
    MyAuctionBadge.winning ||
    MyAuctionBadge.outbid => t.currentPrice,
    MyAuctionBadge.won || MyAuctionBadge.lost => t.myAuctionsPriceKnockdown,
    MyAuctionBadge.upcoming => t.openingPrice,
  };

  MyAuctionBadgeStyle get style => switch (this) {
    MyAuctionBadge.live => (
      fg: AppColors.success,
      bg: AppColors.successBg,
      icon: Icons.podcasts,
    ),
    MyAuctionBadge.ended => (
      fg: AppColors.neutral,
      bg: AppColors.neutralBg,
      icon: Icons.hourglass_bottom,
    ),
    MyAuctionBadge.participating => (
      fg: AppColors.info,
      bg: AppColors.infoBg,
      icon: Icons.how_to_reg_outlined,
    ),
    MyAuctionBadge.won => (
      fg: AppColors.success,
      bg: AppColors.successBg,
      icon: Icons.emoji_events_outlined,
    ),
    MyAuctionBadge.lost => (
      fg: AppColors.neutral,
      bg: AppColors.neutralBg,
      icon: Icons.do_not_disturb_alt,
    ),
    MyAuctionBadge.upcoming => (
      fg: AppColors.warning,
      bg: AppColors.warningBg,
      icon: Icons.calendar_today_outlined,
    ),
    MyAuctionBadge.winning => (
      fg: AppColors.success,
      bg: AppColors.successBg,
      icon: Icons.trending_up,
    ),
    MyAuctionBadge.outbid => (
      fg: AppColors.danger,
      bg: AppColors.dangerBg,
      icon: Icons.trending_down,
    ),
  };
}
