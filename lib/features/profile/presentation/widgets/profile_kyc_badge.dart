import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:mazayada/l10n/app_localizations.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/router/app_router.dart';

/// شارة حالة التحقق — لون/أيقونة/نص حسب الحالة.
/// الموثّق غير قابل للضغط؛ باقي الحالات تفتح صفحة الـ KYC.
class ProfileKycBadge extends StatelessWidget {
  final String status;
  const ProfileKycBadge(this.status, {super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    final style = _styleFor(status, t);
    final pill = _BadgePill(
      icon: style.icon,
      label: style.label,
      fg: style.fg,
      bg: style.bg,
    );
    if (status == 'VERIFIED') return pill;
    return GestureDetector(onTap: () => context.push(Routes.kyc), child: pill);
  }

  ({IconData icon, String label, Color fg, Color bg}) _styleFor(
    String status,
    AppLocalizations t,
  ) => switch (status) {
    'VERIFIED' => (
      icon: Icons.verified,
      label: t.verifiedKyc,
      fg: AppColors.success,
      bg: AppColors.successBg,
    ),
    'UNDER_REVIEW' => (
      icon: Icons.hourglass_top_rounded,
      label: t.kycStatusUnderReview,
      fg: AppColors.info,
      bg: AppColors.infoBg,
    ),
    'REJECTED' => (
      icon: Icons.error_outline_rounded,
      label: t.kycBadgeRejected,
      fg: AppColors.danger,
      bg: AppColors.dangerBg,
    ),
    _ => (
      icon: Icons.warning_amber_rounded,
      label: t.kycBadgeComplete,
      fg: AppColors.warning,
      bg: AppColors.warningBg,
    ),
  };
}

class _BadgePill extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color fg;
  final Color bg;

  const _BadgePill({
    required this.icon,
    required this.label,
    required this.fg,
    required this.bg,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 14.sp, color: fg),
          Gap(5.w),
          Text(
            label,
            style: TextStyle(fontSize: 11.sp, color: fg),
          ),
        ],
      ),
    );
  }
}
