import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/app_colors.dart';
import '../../domain/entities/participation.dart';

/// كارت مشاركة في "مزايداتي" — الحالة بتغيّر اللون والأيقونة.
class ParticipationCard extends StatelessWidget {
  final Participation item;
  final VoidCallback? onTap;

  const ParticipationCard({super.key, required this.item, this.onTap});

  @override
  Widget build(BuildContext context) {
    final (Color fg, Color bg, IconData icon) = _statusStyle(item.statusKind);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(bottom: 10.h),
        padding: EdgeInsets.all(12.w),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(14.r),
          border: Border.all(color: AppColors.border, width: 0.5),
        ),
        child: Row(
          children: [
            Container(
              width: 48.w,
              height: 48.w,
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Icon(Icons.gavel, size: 24.sp, color: Colors.white),
            ),
            SizedBox(width: 12.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors.textPrimary),
                  ),
                  SizedBox(height: 2.h),
                  Text(item.priceLabel,
                      style: TextStyle(
                          fontSize: 10.sp, color: AppColors.textHint)),
                  Text(item.price.formatted,
                      style: TextStyle(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColors.primary)),
                  SizedBox(height: 5.h),
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: 9.w, vertical: 3.h),
                    decoration: BoxDecoration(
                      color: bg,
                      borderRadius: BorderRadius.circular(7.r),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(icon, size: 12.sp, color: fg),
                        SizedBox(width: 4.w),
                        Text(item.statusLabel,
                            style: TextStyle(fontSize: 10.sp, color: fg)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Icon(Icons.chevron_left,
                size: 20.sp, color: AppColors.borderStrong),
          ],
        ),
      ),
    );
  }

  (Color, Color, IconData) _statusStyle(String kind) => switch (kind) {
        'winning' => (
            AppColors.success,
            AppColors.successBg,
            Icons.emoji_events_outlined
          ),
        'outbid' => (
            AppColors.danger,
            AppColors.dangerBg,
            Icons.arrow_downward
          ),
        'awaiting_payment' => (
            AppColors.danger,
            AppColors.dangerBg,
            Icons.schedule
          ),
        'completed' => (
            AppColors.success,
            AppColors.successBg,
            Icons.check_circle_outline
          ),
        'refund' => (
            AppColors.info,
            AppColors.infoBg,
            Icons.replay
          ),
        'upcoming' => (
            AppColors.warning,
            AppColors.warningBg,
            Icons.calendar_today_outlined
          ),
        _ => (AppColors.neutral, AppColors.neutralBg, Icons.info_outline),
      };
}
