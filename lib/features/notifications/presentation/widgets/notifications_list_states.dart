import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:mazayada/l10n/app_localizations.dart';
import 'package:shimmer/shimmer.dart';
import '../../../../core/constants/app_colors.dart';

class NotificationsLoadingList extends StatelessWidget {
  const NotificationsLoadingList({super.key});

  @override
  Widget build(BuildContext context) {
    final base = AppColors.border.withValues(alpha: 0.72);

    return ExcludeSemantics(
      child: Shimmer.fromColors(
        baseColor: base,
        highlightColor: AppColors.white,
        period: const Duration(milliseconds: 1250),
        child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.fromLTRB(16.w, 16.h, 16.w, 16.h),
          itemCount: 5,
          itemBuilder: (_, __) => Container(
            height: 126.h,
            margin: EdgeInsets.only(bottom: 12.h),
            padding: EdgeInsets.all(13.w),
            decoration: BoxDecoration(
              color: base,
              borderRadius: BorderRadius.circular(18.r),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 46.w,
                  height: 46.w,
                  decoration: BoxDecoration(
                    color: base,
                    borderRadius: BorderRadius.circular(14.r),
                  ),
                ),
                Gap(11.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _SkeletonLine(width: 190.w, height: 12.h),
                      Gap(9.h),
                      _SkeletonLine(width: double.infinity, height: 9.h),
                      Gap(7.h),
                      _SkeletonLine(width: 170.w, height: 9.h),
                      Gap(11.h),
                      _SkeletonLine(width: 76.w, height: 20.h),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _SkeletonLine extends StatelessWidget {
  final double width;
  final double height;

  const _SkeletonLine({required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(8.r),
      ),
    );
  }
}

class NotificationsEmptyState extends StatelessWidget {
  final Future<void> Function() onRefresh;

  const NotificationsEmptyState({super.key, required this.onRefresh});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);

    return LayoutBuilder(
      builder: (context, constraints) => RefreshIndicator(
        color: AppColors.primary,
        onRefresh: onRefresh,
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(28.w),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 88.w,
                          height: 88.w,
                          decoration: BoxDecoration(
                            color: AppColors.primary.withValues(alpha: 0.075),
                            shape: BoxShape.circle,
                          ),
                        ),
                        Icon(
                          Icons.notifications_none_rounded,
                          size: 39.sp,
                          color: AppColors.primary,
                        ),
                        PositionedDirectional(
                          top: 11.h,
                          end: 13.w,
                          child: Container(
                            width: 12.w,
                            height: 12.w,
                            decoration: const BoxDecoration(
                              color: AppColors.gold,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Gap(17.h),
                    Text(
                      t.noNotifications,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColors.textPrimary,
                      ),
                    ),
                    Gap(18.h),
                    OutlinedButton.icon(
                      onPressed: onRefresh,
                      icon: Icon(Icons.refresh_rounded, size: 17.sp),
                      label: Text(t.retry),
                      style: OutlinedButton.styleFrom(
                        foregroundColor: AppColors.primary,
                        side: const BorderSide(color: AppColors.primary),
                        padding: EdgeInsets.symmetric(
                          horizontal: 18.w,
                          vertical: 10.h,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13.r),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
