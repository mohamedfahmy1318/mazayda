import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mazayada/l10n/app_localizations.dart';
import '../../../../core/constants/app_colors.dart';

/// زر تسجيل الخروج.
class ProfileLogoutButton extends StatelessWidget {
  final VoidCallback onPressed;
  const ProfileLogoutButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    return SizedBox(
      width: double.infinity,
      height: 48.h,
      child: Material(
        color: AppColors.dangerBg,
        borderRadius: BorderRadius.circular(14.r),
        child: InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(14.r),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.logout_rounded, size: 18.sp, color: AppColors.danger),
              SizedBox(width: 7.w),
              Text(
                t.logout,
                style: TextStyle(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w700,
                  color: AppColors.danger,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
