import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mazayada/l10n/app_localizations.dart';
import '../../../../core/constants/app_colors.dart';
import '../../domain/entities/kyc_entities.dart';
import 'kyc_labels.dart';

/// خانة رفع مستند — بتعرض الحالة: فاضي / بيرفع / اترفع.
class DocUploadTile extends StatelessWidget {
  final KycDocType type;
  final bool isUploading;
  final bool isUploaded;
  final VoidCallback onTap;

  const DocUploadTile({
    super.key,
    required this.type,
    required this.isUploading,
    required this.isUploaded,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    final Color borderColor = isUploaded
        ? AppColors.success
        : AppColors.primary;

    return GestureDetector(
      onTap: isUploading ? null : onTap,
      child: Container(
        margin: EdgeInsets.only(bottom: 10.h),
        padding: EdgeInsets.all(14.w),
        decoration: BoxDecoration(
          color: isUploaded ? AppColors.successBg : AppColors.white,
          borderRadius: BorderRadius.circular(14.r),
          border: Border.all(color: borderColor, width: 0.8),
        ),
        child: Row(
          children: [
            _leadingIcon(),
            SizedBox(width: 12.w),
            Expanded(
              child: Text(
                type.label(t),
                style: TextStyle(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.textPrimary,
                ),
              ),
            ),
            _trailing(),
          ],
        ),
      ),
    );
  }

  Widget _leadingIcon() {
    final IconData icon = switch (type) {
      KycDocType.idFront || KycDocType.idBack => Icons.badge_outlined,
      KycDocType.selfieWithId => Icons.person_pin_outlined,
      KycDocType.photoBiometric => Icons.photo_camera_outlined,
    };
    return Container(
      width: 42.w,
      height: 42.w,
      decoration: BoxDecoration(
        color: isUploaded ? AppColors.success : AppColors.primary,
        borderRadius: BorderRadius.circular(11.r),
      ),
      child: Icon(icon, size: 21.sp, color: AppColors.white),
    );
  }

  Widget _trailing() {
    if (isUploading) {
      return SizedBox(
        width: 20.w,
        height: 20.w,
        child: const CircularProgressIndicator(
          strokeWidth: 2.5,
          color: AppColors.primary,
        ),
      );
    }
    if (isUploaded) {
      return Icon(
        Icons.check_circle,
        size: 22.sp,
        color: AppColors.success,
      ).animate().scale(
        duration: 250.ms,
        begin: const Offset(0.6, 0.6),
        end: const Offset(1, 1),
        curve: Curves.easeOutBack,
      );
    }
    return Icon(Icons.upload_outlined, size: 22.sp, color: AppColors.textHint);
  }
}
