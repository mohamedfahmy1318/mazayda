import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:mazayada/l10n/app_localizations.dart';
import '../../../../core/constants/app_colors.dart';
import '../../domain/entities/commercial_register.dart';

/// مصدر اختيار المستند.
/// السيرفر بيقبل هنا pdf/jpg/jpeg/png — عكس الـ KYC اللي بيقبل صور بس.
enum CrPickSource { camera, gallery, file }

/// بطاقة مستند — بتوضّح إن فيه نسخة محفوظة على السيرفر ولا لأ،
/// وبتسمح بالتقاط/اختيار صورة تستبدلها.
class CrDocumentTile extends StatelessWidget {
  final CrDocumentType type;
  final String label;

  /// مسار ملف اتاختار دلوقتي (لسه مترفعش).
  final String? pickedPath;

  /// فيه نسخة محفوظة على السيرفر بالفعل.
  final bool onFile;

  final bool enabled;
  final String? errorText;
  final ValueChanged<CrPickSource> onPick;

  const CrDocumentTile({
    super.key,
    required this.type,
    required this.label,
    required this.pickedPath,
    required this.onFile,
    required this.onPick,
    this.enabled = true,
    this.errorText,
  });

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    final picked = pickedPath != null;
    final hasError = errorText != null;
    // اتاختار دلوقتي > محفوظ على السيرفر > مطلوب.
    final (Color fg, IconData icon, String hint) = picked
        ? (
            AppColors.success,
            Icons.check_circle_outline,
            // اسم الملف أوضح من «تم اختيار ملف» — المستخدم يتأكد إنه الصح.
            pickedPath!.split('/').last,
          )
        : onFile
        ? (AppColors.info, Icons.cloud_done_outlined, t.crDocumentOnFile)
        : (
            hasError ? AppColors.danger : AppColors.textHint,
            Icons.upload_file_outlined,
            t.crDocumentMissing,
          );

    return Padding(
      padding: EdgeInsets.only(bottom: 12.h),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 240),
        curve: Curves.easeOutCubic,
        padding: EdgeInsets.all(12.w),
        decoration: BoxDecoration(
          color: picked
              ? AppColors.successBg.withValues(alpha: 0.45)
              : AppColors.white,
          borderRadius: BorderRadius.circular(13.r),
          border: Border.all(
            color: hasError
                ? AppColors.danger
                : picked
                ? AppColors.success.withValues(alpha: 0.5)
                : AppColors.border,
            width: hasError || picked ? 1 : 0.5,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                AnimatedSwitcher(
                  duration: const Duration(milliseconds: 240),
                  transitionBuilder: (child, animation) =>
                      ScaleTransition(scale: animation, child: child),
                  child: Icon(
                    icon,
                    key: ValueKey(icon),
                    size: 20.sp,
                    color: fg,
                  ),
                ),
                Gap(9.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        label,
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Gap(2.h),
                      Text(
                        hint,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontSize: 10.sp, color: fg),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            if (enabled) ...[
              Gap(9.h),
              Row(
                children: [
                  _PickButton(
                    icon: Icons.photo_camera_outlined,
                    label: t.crCapture,
                    onTap: () => onPick(CrPickSource.camera),
                  ),
                  Gap(8.w),
                  _PickButton(
                    icon: Icons.photo_library_outlined,
                    label: t.crFromGallery,
                    onTap: () => onPick(CrPickSource.gallery),
                  ),
                  Gap(8.w),
                  _PickButton(
                    icon: Icons.picture_as_pdf_outlined,
                    label: t.crFromFiles,
                    onTap: () => onPick(CrPickSource.file),
                  ),
                ],
              ),
            ],
            AnimatedSize(
              duration: const Duration(milliseconds: 190),
              curve: Curves.easeOutCubic,
              alignment: Alignment.topCenter,
              child: hasError
                  ? Padding(
                      padding: EdgeInsets.only(top: 6.h),
                      child: Row(
                        children: [
                          Icon(
                            Icons.error_outline,
                            size: 13.sp,
                            color: AppColors.danger,
                          ),
                          Gap(4.w),
                          Expanded(
                            child: Text(
                              errorText!,
                              style: TextStyle(
                                fontSize: 10.sp,
                                color: AppColors.danger,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  : const SizedBox(width: double.infinity),
            ),
          ],
        ),
      ),
    );
  }
}

class _PickButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const _PickButton({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: OutlinedButton.icon(
        onPressed: onTap,
        icon: Icon(icon, size: 17.sp),
        label: Text(label, style: TextStyle(fontSize: 11.sp)),
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.primary,
          side: const BorderSide(color: AppColors.border),
          padding: EdgeInsets.symmetric(vertical: 9.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.r),
          ),
        ),
      ),
    );
  }
}
