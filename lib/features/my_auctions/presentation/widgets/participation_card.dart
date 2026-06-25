import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mazayada/l10n/app_localizations.dart';
import '../../../../core/constants/app_colors.dart';
import '../../domain/entities/participation.dart';
import 'participation_labels.dart';

/// كارت مشاركة في "مزايداتي" — الحالة بتغيّر اللون والأيقونة.
class ParticipationCard extends StatelessWidget {
  final Participation item;
  final VoidCallback? onTap;

  const ParticipationCard({super.key, required this.item, this.onTap});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);

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
                      color: AppColors.textPrimary,
                    ),
                  ),
                  SizedBox(height: 2.h),
                  Text(
                    item.status.priceLabel(t),
                    style: TextStyle(
                      fontSize: 10.sp,
                      color: AppColors.textHint,
                    ),
                  ),
                  Text(
                    item.price.formatted,
                    style: TextStyle(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.primary,
                    ),
                  ),
                  SizedBox(height: 5.h),
                  _StatusBadge(status: item.status),
                ],
              ),
            ),
            Icon(
              Icons.chevron_left,
              size: 20.sp,
              color: AppColors.borderStrong,
            ),
          ],
        ),
      ),
    );
  }
}

/// شارة الحالة الدلالية داخل الكارت (لون/أيقونة/نص حسب الحالة).
class _StatusBadge extends StatelessWidget {
  final ParticipationStatus status;

  const _StatusBadge({required this.status});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    final style = status.style;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 9.w, vertical: 3.h),
      decoration: BoxDecoration(
        color: style.bg,
        borderRadius: BorderRadius.circular(7.r),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(style.icon, size: 12.sp, color: style.fg),
          SizedBox(width: 4.w),
          Text(
            status.statusLabel(t),
            style: TextStyle(fontSize: 10.sp, color: style.fg),
          ),
        ],
      ),
    );
  }
}
