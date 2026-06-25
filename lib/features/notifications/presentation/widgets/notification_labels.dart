import 'package:flutter/material.dart';
import 'package:mazayada/l10n/app_localizations.dart';
import '../../../../core/constants/app_colors.dart';
import '../../domain/entities/app_notification.dart';

/// شكل الإشعار الدلالي (لون النص/الخلفية + الأيقونة) حسب نوعه — طبقة العرض.
typedef NotificationStyle = ({Color fg, Color bg, IconData icon});

extension NotificationKindStyle on NotificationKind {
  NotificationStyle get style => switch (this) {
    NotificationKind.won => (
      fg: AppColors.warning,
      bg: AppColors.warningBg,
      icon: Icons.emoji_events_outlined,
    ),
    NotificationKind.outbid => (
      fg: AppColors.danger,
      bg: AppColors.dangerBg,
      icon: Icons.arrow_downward,
    ),
    NotificationKind.refund => (
      fg: AppColors.info,
      bg: AppColors.infoBg,
      icon: Icons.replay,
    ),
    NotificationKind.newAuction => (
      fg: AppColors.success,
      bg: AppColors.successBg,
      icon: Icons.gavel,
    ),
    NotificationKind.reminder => (
      fg: AppColors.neutral,
      bg: AppColors.neutralBg,
      icon: Icons.schedule,
    ),
    NotificationKind.payment => (
      fg: AppColors.danger,
      bg: AppColors.dangerBg,
      icon: Icons.credit_card,
    ),
    NotificationKind.generic => (
      fg: AppColors.neutral,
      bg: AppColors.neutralBg,
      icon: Icons.notifications_outlined,
    ),
  };
}

/// صياغة "منذ كذا" مترجمة لوقت الإشعار (طبقة العرض — الـ domain لا يعرف اللغة).
/// نفس عتبات السلوك السابق: دقيقة / ساعة / يوم / تاريخ.
String notificationTimeAgo(DateTime createdAt, AppLocalizations t) {
  final diff = DateTime.now().difference(createdAt);
  if (diff.inMinutes < 1) return t.timeNow;
  if (diff.inMinutes < 60) return t.timeMinutesAgo(diff.inMinutes);
  if (diff.inHours < 24) return t.timeHoursAgo(diff.inHours);
  if (diff.inDays < 7) return t.timeDaysAgo(diff.inDays);
  return '${createdAt.year}/${createdAt.month}/${createdAt.day}';
}
