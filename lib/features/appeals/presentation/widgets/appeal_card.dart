import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/app_colors.dart';
import '../../domain/entities/appeal.dart';
import 'appeal_status_chip.dart';

/// كارت اعتراض واحد في القائمة — الموضوع + شارة الحالة + المزاد + التاريخ.
class AppealCard extends StatelessWidget {
  final Appeal appeal;
  const AppealCard(this.appeal, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 9.h),
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(13.r),
        border: Border.all(color: AppColors.border, width: 0.5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  appeal.subject,
                  style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              AppealStatusChip(appeal.status),
            ],
          ),
          if (appeal.auctionTitle != null) ...[
            SizedBox(height: 5.h),
            Row(
              children: [
                Icon(Icons.gavel, size: 13.sp, color: AppColors.textHint),
                SizedBox(width: 4.w),
                Text(
                  appeal.auctionTitle!,
                  style: TextStyle(
                    fontSize: 11.sp,
                    color: AppColors.textSecondary,
                  ),
                ),
              ],
            ),
          ],
          SizedBox(height: 5.h),
          Text(
            '${appeal.createdAt.year}/${appeal.createdAt.month}/${appeal.createdAt.day}',
            style: TextStyle(fontSize: 10.sp, color: AppColors.textHint),
          ),
        ],
      ),
    );
  }
}
