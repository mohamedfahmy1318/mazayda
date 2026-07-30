import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:mazayada/l10n/app_localizations.dart';
import '../../../../core/constants/app_colors.dart';
import '../../domain/entities/appeal.dart';

/// شارة حالة الاعتراض — لون وأيقونة ونص مترجم حسب الحالة.
class AppealStatusChip extends StatelessWidget {
  final AppealStatus status;

  /// نص الحالة الجاهز من السيرفر (status_label) — لو موجود نعرضه بدل
  /// الترجمة المحلية، لأنه المصدر الرسمي وبيتفادى أي انحراف في الصياغة.
  final String? label;

  const AppealStatusChip(this.status, {this.label, super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    final (Color fg, Color bg, String fallback, IconData icon) = _style(
      status,
      t,
    );
    final label = this.label ?? fallback;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 9.w, vertical: 3.h),
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(7.r),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 12.sp, color: fg),
          Gap(4.w),
          Text(
            label,
            style: TextStyle(fontSize: 10.sp, color: fg),
          ),
        ],
      ),
    );
  }

  (Color, Color, String, IconData) _style(AppealStatus s, AppLocalizations t) =>
      switch (s) {
        AppealStatus.pending => (
          AppColors.warning,
          AppColors.warningBg,
          t.appealStatusPending,
          Icons.schedule,
        ),
        AppealStatus.approved => (
          AppColors.success,
          AppColors.successBg,
          t.appealStatusApproved,
          Icons.check_circle_outline,
        ),
        AppealStatus.rejected => (
          AppColors.danger,
          AppColors.dangerBg,
          t.appealStatusRejected,
          Icons.close,
        ),
        AppealStatus.unknown => (
          AppColors.neutral,
          AppColors.neutralBg,
          '—',
          Icons.info_outline,
        ),
      };
}
