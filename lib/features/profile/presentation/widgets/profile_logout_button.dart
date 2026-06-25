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
      child: OutlinedButton.icon(
        onPressed: onPressed,
        icon: Icon(Icons.logout, size: 19.sp, color: AppColors.danger),
        label: Text(
          t.logout,
          style: TextStyle(fontSize: 15.sp, color: AppColors.danger),
        ),
        style: OutlinedButton.styleFrom(
          side: const BorderSide(color: AppColors.danger),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14.r),
          ),
        ),
      ),
    );
  }
}
