import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:mazayada/l10n/app_localizations.dart';
import '../../../../core/constants/app_colors.dart';
import '../../domain/entities/subscription.dart';
import '../pages/premium_page.dart';

/// بطاقة إدارة الاشتراك القائم — تعديل العميل رقم 25.
///
/// بتعرض النوع والحالة وتاريخ البداية والانتهاء والتجديد، وبتدّي مخرج
/// واحد للمواطن: إيقاف التجديد التلقائي.
class SubscriptionStatusCard extends StatelessWidget {
  final Subscription subscription;
  final bool cancelling;
  final VoidCallback onStopAutoRenew;

  const SubscriptionStatusCard({
    super.key,
    required this.subscription,
    required this.cancelling,
    required this.onStopAutoRenew,
  });

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    final s = subscription;

    return Container(
      padding: EdgeInsets.all(15.w),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(18.r),
        border: Border.all(
          color: s.isActive ? AppColors.success : AppColors.border,
          width: s.isActive ? 1 : 0.5,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (s.plan != null) _Row(label: t.premiumPlanLabel, value: s.plan!.name),
          _Row(
            label: t.premiumStatus,
            // نص السيرفر أدق — بيغطّي حالات ما نعرفهاش في الإصدار ده.
            value: s.statusLabel ?? _statusText(s.status, t),
            tone: s.isActive ? AppColors.success : AppColors.textSecondary,
          ),
          if (s.startedAt != null)
            _Row(
              label: t.premiumStartedAt,
              value: formatSubscriptionDate(s.startedAt!),
            ),
          if (s.expiresAt != null)
            _Row(
              label: t.premiumExpiresAt,
              value: formatSubscriptionDate(s.expiresAt!),
            ),
          _Row(
            label: t.premiumAutoRenew,
            value: s.autoRenew ? t.premiumAutoRenewOn : t.premiumAutoRenewOff,
            tone: s.autoRenew ? AppColors.success : AppColors.warning,
          ),
          if (s.daysRemaining != null && s.isActive) ...[
            Gap(6.h),
            Text(
              t.premiumDaysRemaining(s.daysRemaining!),
              style: TextStyle(fontSize: 11.sp, color: AppColors.textSecondary),
            ),
          ],
          if (s.isExpiringSoon) ...[
            Gap(9.h),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(10.w),
              decoration: BoxDecoration(
                color: AppColors.warningBg,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Text(
                t.premiumExpiringSoon,
                style: TextStyle(
                  fontSize: 11.sp,
                  height: 1.6,
                  color: AppColors.textPrimary,
                ),
              ),
            ),
          ],
          if (s.isActive && s.autoRenew) ...[
            Gap(10.h),
            Align(
              alignment: AlignmentDirectional.centerStart,
              child: TextButton.icon(
                onPressed: cancelling ? null : onStopAutoRenew,
                icon: cancelling
                    ? SizedBox(
                        width: 14.w,
                        height: 14.w,
                        child: const CircularProgressIndicator(strokeWidth: 2),
                      )
                    : Icon(Icons.autorenew_rounded, size: 16.sp),
                label: Text(
                  t.premiumStopAutoRenew,
                  style: TextStyle(fontSize: 11.5.sp),
                ),
                style: TextButton.styleFrom(
                  foregroundColor: AppColors.danger,
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }

  /// احتياطي لو السيرفر ما بعتش `status_label`.
  String _statusText(SubscriptionStatus status, AppLocalizations t) =>
      switch (status) {
        SubscriptionStatus.active => t.premiumActive,
        _ => t.premiumInactive,
      };
}

class _Row extends StatelessWidget {
  final String label;
  final String value;
  final Color? tone;

  const _Row({required this.label, required this.value, this.tone});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Text(
              label,
              style: TextStyle(fontSize: 12.sp, color: AppColors.textSecondary),
            ),
          ),
          Gap(8.w),
          Expanded(
            flex: 3,
            child: Text(
              value,
              textAlign: TextAlign.end,
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w600,
                color: tone ?? AppColors.textPrimary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
