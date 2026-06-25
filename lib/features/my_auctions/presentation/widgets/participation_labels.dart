import 'package:flutter/material.dart';
import 'package:mazayada/l10n/app_localizations.dart';
import '../../../../core/constants/app_colors.dart';
import '../../domain/entities/participation.dart';

/// تسميات مترجمة لتبويبات مزايداتي (طبقة العرض — الـ domain لا يعرف اللغة).
extension MyAuctionTabLabel on MyAuctionTab {
  String label(AppLocalizations t) => switch (this) {
    MyAuctionTab.active => t.myAuctionsActive,
    MyAuctionTab.won => t.myAuctionsWon,
    MyAuctionTab.lost => t.myAuctionsLost,
    MyAuctionTab.upcoming => t.myAuctionsUpcoming,
  };

  String emptyMessage(AppLocalizations t) => switch (this) {
    MyAuctionTab.active => t.myAuctionsEmptyActive,
    MyAuctionTab.won => t.myAuctionsEmptyWon,
    MyAuctionTab.lost => t.myAuctionsEmptyLost,
    MyAuctionTab.upcoming => t.myAuctionsEmptyUpcoming,
  };
}

/// شكل الشارة الدلالية للحالة (لون النص/الخلفية + الأيقونة).
typedef ParticipationStatusStyle = ({Color fg, Color bg, IconData icon});

/// تحويل حالة المشاركة إلى نصوص مترجمة وشكل الشارة (طبقة العرض).
extension ParticipationStatusX on ParticipationStatus {
  String statusLabel(AppLocalizations t) => switch (this) {
    ParticipationStatus.winning => t.myAuctionsStatusWinning,
    ParticipationStatus.outbid => t.myAuctionsStatusOutbid,
    ParticipationStatus.awaitingPayment => t.myAuctionsStatusAwaitingPayment,
    ParticipationStatus.completed => t.myAuctionsStatusCompleted,
    ParticipationStatus.refund => t.myAuctionsStatusRefund,
    ParticipationStatus.upcoming => t.myAuctionsStatusUpcoming,
  };

  String priceLabel(AppLocalizations t) => switch (this) {
    ParticipationStatus.winning ||
    ParticipationStatus.outbid => t.myAuctionsPriceCurrentBid,
    ParticipationStatus.awaitingPayment ||
    ParticipationStatus.completed => t.myAuctionsPriceKnockdown,
    ParticipationStatus.refund => t.myAuctionsPriceFinal,
    ParticipationStatus.upcoming => t.openingPrice,
  };

  ParticipationStatusStyle get style => switch (this) {
    ParticipationStatus.winning => (
      fg: AppColors.success,
      bg: AppColors.successBg,
      icon: Icons.emoji_events_outlined,
    ),
    ParticipationStatus.outbid => (
      fg: AppColors.danger,
      bg: AppColors.dangerBg,
      icon: Icons.arrow_downward,
    ),
    ParticipationStatus.awaitingPayment => (
      fg: AppColors.danger,
      bg: AppColors.dangerBg,
      icon: Icons.schedule,
    ),
    ParticipationStatus.completed => (
      fg: AppColors.success,
      bg: AppColors.successBg,
      icon: Icons.check_circle_outline,
    ),
    ParticipationStatus.refund => (
      fg: AppColors.info,
      bg: AppColors.infoBg,
      icon: Icons.replay,
    ),
    ParticipationStatus.upcoming => (
      fg: AppColors.warning,
      bg: AppColors.warningBg,
      icon: Icons.calendar_today_outlined,
    ),
  };
}
