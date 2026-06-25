import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mazayada/l10n/app_localizations.dart';
import '../../../../core/constants/app_colors.dart';

/// مؤشّر "مباشر" — نقطة نابضة + نص، يظهر عند الاتصال بالـ realtime.
class LiveIndicator extends StatelessWidget {
  const LiveIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
              width: 7.w,
              height: 7.w,
              decoration: const BoxDecoration(
                color: AppColors.danger,
                shape: BoxShape.circle,
              ),
            )
            .animate(onPlay: (c) => c.repeat(reverse: true))
            .fadeIn(duration: 700.ms)
            .then()
            .fadeOut(duration: 700.ms),
        SizedBox(width: 5.w),
        Text(
          t.live,
          style: TextStyle(
            fontSize: 10.sp,
            fontWeight: FontWeight.w500,
            color: AppColors.danger,
          ),
        ),
      ],
    );
  }
}
