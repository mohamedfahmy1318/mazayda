import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:mazayada/l10n/app_localizations.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/widgets/primary_button.dart';
import '../../domain/entities/subscription.dart';

/// بطاقة باقة اشتراك — تعديل العميل رقم 24.
class SubscriptionPlanCard extends StatelessWidget {
  final SubscriptionPlan plan;

  /// الباقة دي بيتم شراؤها دلوقتي.
  final bool isBusy;

  /// باقة تانية بيتم شراؤها — بنعطّل دي لحد ما تخلص.
  final bool isDisabled;

  final String actionLabel;
  final VoidCallback onSubscribe;

  const SubscriptionPlanCard({
    super.key,
    required this.plan,
    required this.isBusy,
    required this.isDisabled,
    required this.actionLabel,
    required this.onSubscribe,
  });

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    final highlighted = plan.isRecommended;

    return Container(
      padding: EdgeInsets.all(15.w),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(18.r),
        border: Border.all(
          color: highlighted ? AppColors.gold : AppColors.border,
          width: highlighted ? 1.4 : 0.5,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  plan.name,
                  style: TextStyle(
                    fontSize: 14.5.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColors.textPrimary,
                  ),
                ),
              ),
              if (highlighted)
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 9.w,
                    vertical: 3.h,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.gold,
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Text(
                    t.premiumRecommended,
                    style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColors.white,
                    ),
                  ),
                ),
            ],
          ),
          Gap(6.h),
          Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                plan.price.formatted,
                style: TextStyle(
                  fontSize: 19.sp,
                  fontWeight: FontWeight.w700,
                  color: AppColors.primary,
                ),
              ),
              Gap(5.w),
              Text(
                _periodLabel(plan.period, t),
                style: TextStyle(
                  fontSize: 11.sp,
                  color: AppColors.textSecondary,
                ),
              ),
            ],
          ),
          if (plan.description?.isNotEmpty ?? false) ...[
            Gap(6.h),
            Text(
              plan.description!,
              style: TextStyle(
                fontSize: 11.5.sp,
                height: 1.65,
                color: AppColors.textSecondary,
              ),
            ),
          ],
          if (plan.features.isNotEmpty) ...[
            Gap(10.h),
            for (final feature in plan.features) ...[
              Padding(
                padding: EdgeInsets.only(bottom: 5.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.check_circle_outline,
                      size: 15.sp,
                      color: AppColors.success,
                    ),
                    Gap(7.w),
                    Expanded(
                      child: Text(
                        feature,
                        style: TextStyle(
                          fontSize: 11.5.sp,
                          height: 1.6,
                          color: AppColors.textPrimary,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ],
          Gap(12.h),
          PrimaryButton(
            label: actionLabel,
            icon: Icons.workspace_premium_outlined,
            isLoading: isBusy,
            onPressed: isDisabled ? null : onSubscribe,
          ),
        ],
      ),
    );
  }

  /// نص الدورة — بنرجع لاسم الباقة لو السيرفر بعت دورة مش معروفة للإصدار ده.
  String _periodLabel(SubscriptionPeriod period, AppLocalizations t) =>
      switch (period) {
        SubscriptionPeriod.monthly => t.premiumPeriodMonthly,
        SubscriptionPeriod.yearly => t.premiumPeriodYearly,
        SubscriptionPeriod.unknown => '',
      };
}
