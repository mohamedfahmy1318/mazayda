import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:mazayada/l10n/app_localizations.dart';
import '../../../../core/constants/app_colors.dart';
import '../../domain/entities/document.dart';

/// بطاقات إحصاء المكتبة — إجمالي / دفاتر / ترسيات / إيصالات.
class DocumentsSummaryTiles extends StatelessWidget {
  final DocumentsSummary summary;
  const DocumentsSummaryTiles({super.key, required this.summary});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    return Row(
      children: [
        _Tile(
          value: '${summary.total}',
          label: t.docsTotal,
          icon: Icons.folder_outlined,
          color: AppColors.primary,
        ),
        Gap(8.w),
        _Tile(
          value: '${summary.books}',
          label: t.docsBooks,
          icon: Icons.menu_book_outlined,
          color: AppColors.info,
        ),
        Gap(8.w),
        _Tile(
          value: '${summary.awards}',
          label: t.docsAwards,
          icon: Icons.emoji_events_outlined,
          color: AppColors.warning,
        ),
        Gap(8.w),
        // الباك بيجمع إيصالات الدفع + محاضر التسليم في عدّاد واحد.
        _Tile(
          value: '${summary.receipts}',
          label: t.docsReceipts,
          icon: Icons.receipt_long_outlined,
          color: AppColors.success,
        ),
      ],
    );
  }
}

class _Tile extends StatelessWidget {
  final String value;
  final String label;
  final IconData icon;
  final Color color;

  const _Tile({
    required this.value,
    required this.label,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 11.h, horizontal: 6.w),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(color: AppColors.border, width: 0.5),
        ),
        child: Column(
          children: [
            Icon(icon, size: 18.sp, color: color),
            Gap(4.h),
            Text(
              value,
              style: TextStyle(
                fontSize: 15.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.textPrimary,
              ),
            ),
            Gap(1.h),
            Text(
              label,
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 9.sp, color: AppColors.textSecondary),
            ),
          ],
        ),
      ),
    );
  }
}
