import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:mazayada/l10n/app_localizations.dart';
import '../../../../core/constants/app_colors.dart';
import '../../domain/entities/commercial_register.dart';

/// لافتة حالة السجل التجاري + سبب الرفض لو موجود.
class CrStatusBanner extends StatelessWidget {
  final CommercialRegister? register;
  const CrStatusBanner({super.key, required this.register});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    final status = register?.status ?? CommercialRegisterStatus.none;
    final (Color fg, Color bg, IconData icon, String label, String note) =
        switch (status) {
          CommercialRegisterStatus.approved => (
            AppColors.success,
            AppColors.successBg,
            Icons.verified_outlined,
            t.crStatusApproved,
            t.crApprovedNote,
          ),
          CommercialRegisterStatus.pending => (
            AppColors.warning,
            AppColors.warningBg,
            Icons.schedule,
            t.crStatusPending,
            t.crPendingNote,
          ),
          CommercialRegisterStatus.rejected => (
            AppColors.danger,
            AppColors.dangerBg,
            Icons.error_outline,
            t.crStatusRejected,
            register?.rejectionReason ?? t.crRejectedNote,
          ),
          CommercialRegisterStatus.none => (
            AppColors.info,
            AppColors.infoBg,
            Icons.store_outlined,
            t.crStatusNone,
            t.crIntro,
          ),
        };

    return Container(
      padding: EdgeInsets.all(14.w),
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(13.r),
        border: Border.all(color: fg.withValues(alpha: 0.25), width: 0.5),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 20.sp, color: fg),
          Gap(10.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w500,
                    color: fg,
                  ),
                ),
                Gap(3.h),
                Text(
                  note,
                  style: TextStyle(
                    fontSize: 11.sp,
                    color: AppColors.textSecondary,
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
