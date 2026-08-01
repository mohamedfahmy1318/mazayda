import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:mazayada/l10n/app_localizations.dart';
import '../../../../core/constants/app_colors.dart';
import '../../domain/entities/my_auctions_result.dart';

/// هيدر «مزايداتي» كلوحة متابعة مختصرة لحالة مشاركات المستخدم.
class MyAuctionsHeader extends StatelessWidget {
  final MyAuctionCounts counts;
  final VoidCallback onNotificationsTap;

  const MyAuctionsHeader({
    super.key,
    required this.counts,
    required this.onNotificationsTap,
  });

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    final topInset = MediaQuery.paddingOf(context).top;
    final reduceMotion = MediaQuery.disableAnimationsOf(context);

    final header = Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: AlignmentDirectional.topStart,
          end: AlignmentDirectional.bottomEnd,
          colors: [
            AppColors.primaryDeep,
            AppColors.primary,
            AppColors.primarySoft,
          ],
        ),
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(28.r)),
        boxShadow: [
          BoxShadow(
            color: AppColors.primary.withValues(alpha: 0.20),
            blurRadius: 24,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Stack(
        children: [
          PositionedDirectional(
            top: topInset + 22.h,
            end: -58.w,
            child: Container(
              width: 176.w,
              height: 176.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: AppColors.white.withValues(alpha: 0.065),
                  width: 32.w,
                ),
              ),
            ),
          ),
          PositionedDirectional(
            top: -54.h,
            start: -58.w,
            child: Container(
              width: 142.w,
              height: 142.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.gold.withValues(alpha: 0.075),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(18.w, topInset + 10.h, 18.w, 19.h),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 42.w,
                      height: 42.w,
                      decoration: BoxDecoration(
                        color: AppColors.white.withValues(alpha: 0.12),
                        borderRadius: BorderRadius.circular(14.r),
                        border: Border.all(
                          color: AppColors.white.withValues(alpha: 0.14),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.account_balance_wallet_outlined,
                        color: AppColors.gold,
                        size: 22.sp,
                      ),
                    ),
                    Gap(10.w),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            t.appName,
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w800,
                              height: 1.15,
                            ),
                          ),
                          Gap(2.h),
                          Text(
                            t.navMyAuctions,
                            style: TextStyle(
                              color: AppColors.white.withValues(alpha: 0.64),
                              fontSize: 10.5.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Tooltip(
                      message: t.notifications,
                      child: Material(
                        color: AppColors.white.withValues(alpha: 0.11),
                        borderRadius: BorderRadius.circular(14.r),
                        child: InkWell(
                          onTap: onNotificationsTap,
                          borderRadius: BorderRadius.circular(14.r),
                          child: SizedBox(
                            width: 42.w,
                            height: 42.w,
                            child: Icon(
                              Icons.notifications_none_rounded,
                              color: AppColors.white,
                              size: 22.sp,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Gap(20.h),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        t.navMyAuctions,
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: 24.sp,
                          height: 1.2,
                          fontWeight: FontWeight.w800,
                          letterSpacing: -0.3,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.w,
                        vertical: 5.h,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.white.withValues(alpha: 0.11),
                        borderRadius: BorderRadius.circular(20.r),
                        border: Border.all(
                          color: AppColors.white.withValues(alpha: 0.12),
                        ),
                      ),
                      child: Text(
                        t.auctionsCount('${counts.all}'),
                        style: TextStyle(
                          color: AppColors.white.withValues(alpha: 0.86),
                          fontSize: 10.5.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                Gap(14.h),
                Row(
                  children: [
                    Expanded(
                      child: _SummaryMetric(
                        label: t.myAuctionsActive,
                        count: counts.active,
                        icon: Icons.bolt_rounded,
                        accent: const Color(0xFF7DE2B8),
                      ),
                    ),
                    Gap(8.w),
                    Expanded(
                      child: _SummaryMetric(
                        label: t.myAuctionsWon,
                        count: counts.won,
                        icon: Icons.emoji_events_outlined,
                        accent: AppColors.gold,
                      ),
                    ),
                    Gap(8.w),
                    Expanded(
                      child: _SummaryMetric(
                        label: t.myAuctionsUpcoming,
                        count: counts.upcoming,
                        icon: Icons.schedule_rounded,
                        accent: const Color(0xFFAEC8FF),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );

    final styledHeader = AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Colors.transparent,
      ),
      child: header,
    );

    if (reduceMotion) return styledHeader;
    return styledHeader
        .animate()
        .fadeIn(duration: 420.ms)
        .slideY(
          begin: -0.025,
          end: 0,
          duration: 520.ms,
          curve: Curves.easeOutCubic,
        );
  }
}

class _SummaryMetric extends StatelessWidget {
  final String label;
  final int count;
  final IconData icon;
  final Color accent;

  const _SummaryMetric({
    required this.label,
    required this.count,
    required this.icon,
    required this.accent,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 62.h,
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
      decoration: BoxDecoration(
        color: AppColors.white.withValues(alpha: 0.085),
        borderRadius: BorderRadius.circular(15.r),
        border: Border.all(color: AppColors.white.withValues(alpha: 0.10)),
      ),
      child: Row(
        children: [
          Container(
            width: 29.w,
            height: 29.w,
            decoration: BoxDecoration(
              color: accent.withValues(alpha: 0.14),
              borderRadius: BorderRadius.circular(9.r),
            ),
            child: Icon(icon, size: 16.sp, color: accent),
          ),
          Gap(7.w),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AnimatedSwitcher(
                  duration: const Duration(milliseconds: 260),
                  child: Text(
                    '$count',
                    key: ValueKey(count),
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 16.sp,
                      height: 1,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                Gap(4.h),
                Text(
                  label,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: AppColors.white.withValues(alpha: 0.62),
                    fontSize: 8.5.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
