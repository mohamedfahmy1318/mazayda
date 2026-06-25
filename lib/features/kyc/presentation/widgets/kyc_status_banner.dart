import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mazayada/l10n/app_localizations.dart';
import '../../../../core/constants/app_colors.dart';
import '../../domain/entities/kyc_entities.dart';
import 'kyc_labels.dart';

/// بانر حالة الـ KYC — لون وأيقونة ونص حسب حالة الحساب.
class KycStatusBanner extends StatelessWidget {
  final KycAccountStatus? status;
  const KycStatusBanner({super.key, this.status});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    final s = status ?? KycAccountStatus.pending;
    final (Color bg, Color fg, IconData icon) = switch (s) {
      KycAccountStatus.verified => (
        AppColors.successBg,
        AppColors.success,
        Icons.verified_outlined,
      ),
      KycAccountStatus.underReview => (
        AppColors.infoBg,
        AppColors.info,
        Icons.hourglass_top_outlined,
      ),
      KycAccountStatus.rejected => (
        AppColors.dangerBg,
        AppColors.danger,
        Icons.cancel_outlined,
      ),
      _ => (AppColors.warningBg, AppColors.warning, Icons.info_outline),
    };
    return Container(
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Row(
        children: [
          Icon(icon, size: 18.sp, color: fg),
          SizedBox(width: 8.w),
          Expanded(
            child: Text(
              s == KycAccountStatus.pending
                  ? t.kycWarning
                  : t.kycStatusLabel(s.label(t)),
              style: TextStyle(fontSize: 11.sp, color: fg, height: 1.5),
            ),
          ),
        ],
      ),
    );
  }
}
