import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:mazayada/l10n/app_localizations.dart';
import 'package:shimmer/shimmer.dart';
import '../../../../core/constants/app_colors.dart';
import '../../domain/entities/my_auctions_result.dart';
import 'my_auction_labels.dart';

class MyAuctionsLoadingList extends StatelessWidget {
  const MyAuctionsLoadingList({super.key});

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
          itemCount: 4,
          itemBuilder: (_, __) => Container(
            height: 176.h,
            margin: EdgeInsets.only(bottom: 14.h),
            padding: EdgeInsets.all(13.w),
            decoration: BoxDecoration(
              color: base,
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 82.w,
                      height: 82.w,
                      decoration: BoxDecoration(
                        color: base,
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                    ),
                    Gap(11.w),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _SkeletonLine(width: 82.w, height: 20.h),
                          Gap(9.h),
                          _SkeletonLine(width: 170.w, height: 12.h),
                          Gap(7.h),
                          _SkeletonLine(width: 110.w, height: 9.h),
                        ],
                      ),
                    ),
                  ],
                ),
                Gap(13.h),
                Row(
                  children: [
                    _SkeletonLine(width: 105.w, height: 28.h),
                    Gap(14.w),
                    _SkeletonLine(width: 96.w, height: 28.h),
                    const Spacer(),
                    _SkeletonLine(width: 48.w, height: 28.h),
                  ],
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

class MyAuctionsEmptyState extends StatelessWidget {
  final MyAuctionTab tab;
  final VoidCallback onBrowseAuctions;

  const MyAuctionsEmptyState({
    super.key,
    required this.tab,
    required this.onBrowseAuctions,
  });

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    final icon = switch (tab) {
      MyAuctionTab.won => Icons.emoji_events_outlined,
      MyAuctionTab.lost => Icons.history_rounded,
      MyAuctionTab.upcoming => Icons.event_available_outlined,
      MyAuctionTab.active => Icons.bolt_outlined,
      MyAuctionTab.all => Icons.gavel_rounded,
    };

    return Center(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(28.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 82.w,
              height: 82.w,
              decoration: BoxDecoration(
                color: AppColors.primary.withValues(alpha: 0.075),
                shape: BoxShape.circle,
              ),
              child: Icon(icon, size: 36.sp, color: AppColors.primary),
            ),
            Gap(16.h),
            Text(
              tab.emptyMessage(t),
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14.sp,
                height: 1.5,
                fontWeight: FontWeight.w600,
                color: AppColors.textPrimary,
              ),
            ),
            Gap(18.h),
            OutlinedButton.icon(
              onPressed: onBrowseAuctions,
              icon: Icon(Icons.explore_outlined, size: 17.sp),
              label: Text(t.auctionsTitle),
              style: OutlinedButton.styleFrom(
                foregroundColor: AppColors.primary,
                side: const BorderSide(color: AppColors.primary),
                padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 10.h),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(13.r),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
