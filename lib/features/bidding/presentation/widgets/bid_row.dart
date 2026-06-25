import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/app_colors.dart';
import '../../domain/entities/bid_entities.dart';

/// صف مزايدة في السجل المباشر — alias + المبلغ.
class BidRow extends StatelessWidget {
  final BidEntry bid;
  final bool highlighted; // أعلى مزايدة

  const BidRow({super.key, required this.bid, this.highlighted = false});

  @override
  Widget build(BuildContext context) {
    final initials = bid.bidderAlias.length >= 2
        ? bid.bidderAlias.substring(0, 2)
        : bid.bidderAlias;

    return Container(
      margin: EdgeInsets.only(bottom: 8.h),
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 9.h),
      decoration: BoxDecoration(
        color: highlighted ? AppColors.successBg : AppColors.background,
        borderRadius: BorderRadius.circular(11.r),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 13.r,
            backgroundColor: AppColors.primary,
            child: Text(
              initials,
              style: TextStyle(fontSize: 11.sp, color: AppColors.white),
            ),
          ),
          SizedBox(width: 8.w),
          Expanded(
            child: Text(
              bid.bidderAlias,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 13.sp, color: AppColors.textPrimary),
            ),
          ),
          Text(
            bid.amount.formatted,
            style: TextStyle(
              fontSize: 13.sp,
              fontWeight: FontWeight.w500,
              color: AppColors.primary,
            ),
          ),
        ],
      ),
    );
  }
}
