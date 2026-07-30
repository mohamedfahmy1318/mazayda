import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import '../../../../../core/constants/app_colors.dart';

/// بطاقة قسم في صفحة التفاصيل — عنوان + محتوى.
/// بترجّع `SizedBox.shrink()` لو المحتوى فاضي عشان الأقسام الفاضية ما تظهرش.
class DetailSection extends StatelessWidget {
  final String title;
  final IconData icon;
  final List<Widget> children;

  const DetailSection({
    super.key,
    required this.title,
    required this.icon,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    if (children.isEmpty) return const SizedBox.shrink();

    return Padding(
      padding: EdgeInsets.only(top: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, size: 17.sp, color: AppColors.primary),
              Gap(7.w),
              Text(
                title,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.textPrimary,
                ),
              ),
            ],
          ),
          Gap(9.h),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(13.w),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(12.r),
              border: Border.all(color: AppColors.border, width: 0.5),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: children,
            ),
          ),
        ],
      ),
    );
  }
}

/// صف «عنوان ← قيمة» داخل قسم.
class DetailFactRow extends StatelessWidget {
  final String label;
  final String value;
  final Color? tone;

  const DetailFactRow({
    super.key,
    required this.label,
    required this.value,
    this.tone,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12.sp,
                color: AppColors.textSecondary,
              ),
            ),
          ),
          Gap(8.w),
          Expanded(
            flex: 3,
            child: Text(
              value,
              textAlign: TextAlign.end,
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
                color: tone ?? AppColors.textPrimary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// فقرة نصية طويلة (شروط / وصف).
class DetailParagraph extends StatelessWidget {
  final String text;
  const DetailParagraph({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 12.sp,
        height: 1.7,
        color: AppColors.textSecondary,
      ),
    );
  }
}
