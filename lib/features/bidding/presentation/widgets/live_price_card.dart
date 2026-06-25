import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mazayada/l10n/app_localizations.dart';
import '../../../../core/constants/app_colors.dart';
import 'live_indicator.dart';

/// كارت السعر الحي — مؤشّر مباشر + أعلى مزايدة حالية + عدد المزايدات.
class LivePriceCard extends StatelessWidget {
  final bool isLive;
  final int currentPrice;
  final String currentPriceFormatted;
  final int bidCount;

  const LivePriceCard({
    super.key,
    required this.isLive,
    required this.currentPrice,
    required this.currentPriceFormatted,
    required this.bidCount,
  });

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(16.w),
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(color: AppColors.border, width: 0.5),
      ),
      child: Column(
        children: [
          if (isLive) ...[const LiveIndicator(), SizedBox(height: 6.h)],
          Text(
            t.currentHighestBid,
            style: TextStyle(fontSize: 12.sp, color: AppColors.textSecondary),
          ),
          SizedBox(height: 4.h),
          Text(
                currentPriceFormatted.isEmpty ? '—' : currentPriceFormatted,
                style: TextStyle(
                  fontSize: 28.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.primary,
                ),
              )
              .animate(key: ValueKey(currentPrice))
              .scale(
                duration: 250.ms,
                begin: const Offset(1.08, 1.08),
                end: const Offset(1, 1),
              ),
          SizedBox(height: 6.h),
          Text(
            t.bidsCount(bidCount),
            style: TextStyle(fontSize: 12.sp, color: AppColors.success),
          ),
        ],
      ),
    );
  }
}
