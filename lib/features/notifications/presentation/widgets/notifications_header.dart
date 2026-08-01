import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:mazayada/l10n/app_localizations.dart';
import '../../../../core/constants/app_colors.dart';
import 'mark_all_read_button.dart';
import 'unread_count_badge.dart';

/// هيدر صندوق الإشعارات مع عدّاد حي وإجراء سريع لتعليم الكل.
class NotificationsHeader extends StatelessWidget {
  final int unreadCount;
  final int totalCount;
  final bool loading;
  final VoidCallback onMarkAllRead;

  const NotificationsHeader({
    super.key,
    required this.unreadCount,
    required this.totalCount,
    required this.loading,
    required this.onMarkAllRead,
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
            top: topInset + 8.h,
            end: -44.w,
            child: Container(
              width: 154.w,
              height: 154.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: AppColors.white.withValues(alpha: 0.07),
                  width: 29.w,
                ),
              ),
            ),
          ),
          PositionedDirectional(
            top: -52.h,
            start: -56.w,
            child: Container(
              width: 138.w,
              height: 138.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.gold.withValues(alpha: 0.075),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(18.w, topInset + 10.h, 18.w, 20.h),
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
                        Icons.notifications_active_outlined,
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
                            t.notifications,
                            style: TextStyle(
                              color: AppColors.white.withValues(alpha: 0.64),
                              fontSize: 10.5.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    AnimatedSwitcher(
                      duration: const Duration(milliseconds: 240),
                      child: loading
                          ? Container(
                              key: const ValueKey('loading'),
                              width: 36.w,
                              height: 36.w,
                              padding: EdgeInsets.all(9.w),
                              decoration: BoxDecoration(
                                color: AppColors.white.withValues(alpha: 0.11),
                                shape: BoxShape.circle,
                              ),
                              child: const CircularProgressIndicator(
                                strokeWidth: 2,
                                color: AppColors.white,
                              ),
                            )
                          : unreadCount > 0
                          ? UnreadCountBadge(
                              key: ValueKey(unreadCount),
                              count: unreadCount,
                            )
                          : Container(
                              key: const ValueKey('all-read'),
                              width: 36.w,
                              height: 36.w,
                              decoration: BoxDecoration(
                                color: AppColors.white.withValues(alpha: 0.11),
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.done_all_rounded,
                                size: 19.sp,
                                color: const Color(0xFF8FE3BF),
                              ),
                            ),
                    ),
                  ],
                ),
                Gap(21.h),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            t.notifications,
                            style: TextStyle(
                              color: AppColors.white,
                              fontSize: 24.sp,
                              height: 1.2,
                              fontWeight: FontWeight.w800,
                              letterSpacing: -0.3,
                            ),
                          ),
                          Gap(4.h),
                          Text(
                            loading ? '—' : '$totalCount',
                            style: TextStyle(
                              color: AppColors.white.withValues(alpha: 0.62),
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    AnimatedSwitcher(
                      duration: const Duration(milliseconds: 220),
                      child: !loading && unreadCount > 0
                          ? MarkAllReadButton(
                              key: const ValueKey('mark-all'),
                              onPressed: onMarkAllRead,
                            )
                          : const SizedBox.shrink(
                              key: ValueKey('empty-action'),
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
