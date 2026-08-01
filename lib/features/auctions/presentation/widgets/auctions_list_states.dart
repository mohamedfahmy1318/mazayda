import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:mazayada/l10n/app_localizations.dart';
import 'package:shimmer/shimmer.dart';
import '../../../../core/constants/app_colors.dart';
import '../cubit/auctions_cubit.dart';

/// أقل عدد عناصر يظهر بعده نص "لا مزيد من النتائج" (نتجنّبه للقوائم القصيرة).
const _minItemsForEndLabel = 6;

/// Skeleton قريب من شكل الكروت الحقيقي لتقليل القفزة البصرية أثناء التحميل.
class AuctionsLoadingList extends StatelessWidget {
  const AuctionsLoadingList({super.key});

  @override
  Widget build(BuildContext context) {
    final base = AppColors.border.withValues(alpha: 0.72);
    const highlight = AppColors.white;

    return ExcludeSemantics(
      child: Shimmer.fromColors(
        baseColor: base,
        highlightColor: highlight,
        period: const Duration(milliseconds: 1250),
        child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.fromLTRB(16.w, 18.h, 16.w, 16.h),
          itemCount: 3,
          itemBuilder: (_, __) => Container(
            height: 252.h,
            margin: EdgeInsets.only(bottom: 14.h),
            decoration: BoxDecoration(
              color: base,
              borderRadius: BorderRadius.circular(20.r),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 154.h,
                  decoration: BoxDecoration(
                    color: base,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20.r),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(14.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _SkeletonLine(width: 230.w, height: 13.h),
                      Gap(9.h),
                      _SkeletonLine(width: 108.w, height: 9.h),
                      Gap(14.h),
                      Row(
                        children: [
                          _SkeletonLine(width: 118.w, height: 18.h),
                          const Spacer(),
                          _SkeletonLine(width: 76.w, height: 25.h),
                        ],
                      ),
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

class AuctionsListFooter extends StatelessWidget {
  final AuctionsState state;
  const AuctionsListFooter({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    if (state.loading) {
      return Padding(
        padding: EdgeInsets.symmetric(vertical: 18.h),
        child: const Center(
          child: SizedBox(
            width: 22,
            height: 22,
            child: CircularProgressIndicator(
              strokeWidth: 2.2,
              color: AppColors.primary,
            ),
          ),
        ),
      );
    }
    if (!state.hasMore && state.auctions.length > _minItemsForEndLabel) {
      return Padding(
        padding: EdgeInsets.symmetric(vertical: 18.h),
        child: Center(
          child: Text(
            AppLocalizations.of(context).noMoreResults,
            style: TextStyle(fontSize: 11.5.sp, color: AppColors.textHint),
          ),
        ),
      );
    }
    return Gap(4.h);
  }
}

class AuctionsNoResults extends StatelessWidget {
  final VoidCallback onReset;
  const AuctionsNoResults({super.key, required this.onReset});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.search_off_rounded,
            size: 46.sp,
            color: AppColors.textHint,
          ),
          Gap(10.h),
          Text(
            t.noMatchingAuctions,
            style: TextStyle(fontSize: 13.5.sp, color: AppColors.textSecondary),
          ),
          Gap(4.h),
          Text(
            t.tryAdjustingFilters,
            style: TextStyle(fontSize: 11.5.sp, color: AppColors.textHint),
          ),
          Gap(16.h),
          OutlinedButton.icon(
            onPressed: onReset,
            icon: Icon(Icons.refresh_rounded, size: 17.sp),
            label: Text(t.resetFilters),
            style: OutlinedButton.styleFrom(
              foregroundColor: AppColors.primary,
              side: const BorderSide(color: AppColors.primary),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.r),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
