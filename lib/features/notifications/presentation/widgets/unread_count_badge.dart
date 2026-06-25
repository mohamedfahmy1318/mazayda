import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/app_colors.dart';

/// شارة عدد الإشعارات غير المقروءة بجوار العنوان.
class UnreadCountBadge extends StatelessWidget {
  final int count;

  const UnreadCountBadge({super.key, required this.count});

  @override
  Widget build(BuildContext context) {
    return Container(
          padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.h),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: Text(
            '$count',
            style: TextStyle(
              fontSize: 11.sp,
              fontWeight: FontWeight.w500,
              color: AppColors.primary,
            ),
          ),
        )
        .animate(key: ValueKey(count))
        .fadeIn(duration: 200.ms)
        .scale(
          begin: const Offset(0.7, 0.7),
          end: const Offset(1, 1),
          curve: Curves.easeOut,
        );
  }
}
