import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mazayada/l10n/app_localizations.dart';
import '../../../../core/constants/app_colors.dart';

/// زر "تعليم الكل كمقروء" في شريط الإشعارات.
class MarkAllReadButton extends StatelessWidget {
  final VoidCallback onPressed;

  const MarkAllReadButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.white.withValues(alpha: 0.11),
      borderRadius: BorderRadius.circular(13.r),
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(13.r),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 11.w, vertical: 8.h),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.done_all_rounded, size: 16.sp, color: AppColors.white),
              SizedBox(width: 6.w),
              Text(
                AppLocalizations.of(context).markAllRead,
                style: TextStyle(
                  fontSize: 10.5.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
