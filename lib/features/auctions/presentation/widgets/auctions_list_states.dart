import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mazayada/l10n/app_localizations.dart';
import '../../../../core/constants/app_colors.dart';
import '../cubit/auctions_cubit.dart';

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
    if (!state.hasMore && state.auctions.length > 6) {
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
    return SizedBox(height: 4.h);
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
          SizedBox(height: 10.h),
          Text(
            t.noMatchingAuctions,
            style: TextStyle(fontSize: 13.5.sp, color: AppColors.textSecondary),
          ),
          SizedBox(height: 4.h),
          Text(
            t.tryAdjustingFilters,
            style: TextStyle(fontSize: 11.5.sp, color: AppColors.textHint),
          ),
          SizedBox(height: 16.h),
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
