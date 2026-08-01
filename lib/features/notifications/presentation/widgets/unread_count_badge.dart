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
    final badge = Container(
      constraints: BoxConstraints(minWidth: 36.w, minHeight: 36.w),
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(18.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.10),
            blurRadius: 12,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      alignment: Alignment.center,
      child: Text(
        '$count',
        style: TextStyle(
          fontSize: 12.sp,
          fontWeight: FontWeight.w800,
          color: AppColors.primary,
        ),
      ),
    );

    if (MediaQuery.disableAnimationsOf(context)) return badge;
    return badge
        .animate(key: ValueKey(count))
        .fadeIn(duration: 200.ms)
        .scale(
          begin: const Offset(0.7, 0.7),
          end: const Offset(1, 1),
          curve: Curves.easeOut,
        );
  }
}
