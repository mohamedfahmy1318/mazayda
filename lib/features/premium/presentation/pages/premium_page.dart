import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:mazayada/l10n/app_localizations.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/widgets/state_views.dart';
import '../../../payments/presentation/pages/subscription_payment_flow.dart';
import '../../domain/entities/subscription.dart';
import '../cubit/premium_cubit.dart';
import '../widgets/subscription_plan_card.dart';
import '../widgets/subscription_status_card.dart';

/// شاشة العضوية المميّزة — تعديلات العميل 24 · 25 · 26.
///
/// بتجمع إدارة الاشتراك القائم (الحالة والمدة والتجديد) مع شراء باقة جديدة،
/// عشان المواطن يلاقي كل حاجة في مكان واحد بدل شاشتين.
class PremiumPage extends StatelessWidget {
  const PremiumPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<PremiumCubit>()..load(),
      child: const _PremiumView(),
    );
  }
}

class _PremiumView extends StatelessWidget {
  const _PremiumView();

  /// يبدأ الدفع ثم يعيد القراءة لو الاشتراك اتفعّل فعلًا.
  Future<void> _subscribe(BuildContext context, SubscriptionPlan plan) async {
    final cubit = context.read<PremiumCubit>();
    final init = await cubit.startSubscription(plan.code);
    if (init == null || !context.mounted) return;

    final paid = await SubscriptionPaymentFlow.run(context, init);
    if (!context.mounted) return;
    if (paid) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(AppLocalizations.of(context).premiumPaymentDone),
          backgroundColor: AppColors.success,
        ),
      );
    }
    await cubit.load();
  }

  Future<void> _confirmCancel(BuildContext context) async {
    final t = AppLocalizations.of(context);
    final cubit = context.read<PremiumCubit>();

    final ok = await showDialog<bool>(
      context: context,
      builder: (dialogCtx) => AlertDialog(
        title: Text(t.premiumStopAutoRenew, style: TextStyle(fontSize: 15.sp)),
        content: Text(
          t.premiumStopAutoRenewConfirm,
          style: TextStyle(fontSize: 12.5.sp, height: 1.7),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogCtx, false),
            child: Text(t.cancel),
          ),
          TextButton(
            onPressed: () => Navigator.pop(dialogCtx, true),
            child: Text(
              t.confirm,
              style: const TextStyle(color: AppColors.danger),
            ),
          ),
        ],
      ),
    );
    if (ok == true) await cubit.cancelAutoRenew();
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(title: Text(t.premiumTitle)),
      body: BlocConsumer<PremiumCubit, PremiumState>(
        listenWhen: (a, b) => b.error != null && a.error != b.error,
        listener: (context, state) =>
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.error!),
                backgroundColor: AppColors.danger,
              ),
            ),
        builder: (context, state) {
          final cubit = context.read<PremiumCubit>();
          if (state.loading && state.overview == null) {
            return const LoadingView();
          }
          if (state.overview == null) {
            return ErrorView(
              message: state.error ?? t.errorGeneric,
              onRetry: cubit.load,
            );
          }

          final subscription = state.subscription;
          final showPlans = !state.isPremium || (subscription?.autoRenew == false);

          return RefreshIndicator(
            color: AppColors.primary,
            onRefresh: cubit.load,
            child: ListView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: EdgeInsets.fromLTRB(16.w, 16.h, 16.w, 24.h),
              children: [
                _PremiumHeader(isPremium: state.isPremium),
                Gap(16.h),
                if (subscription != null) ...[
                  SubscriptionStatusCard(
                    subscription: subscription,
                    cancelling: state.cancelling,
                    onStopAutoRenew: () => _confirmCancel(context),
                  ),
                  Gap(18.h),
                ],
                // الباقات بتتعرض لما مفيش اشتراك فعّال، أو لما التجديد
                // التلقائي متوقف فالمواطن محتاج يجدّد يدويًا.
                if (showPlans) ...[
                  Text(
                    t.premiumChoosePlan,
                    style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Gap(10.h),
                  if (state.plans.isEmpty)
                    EmptyView(
                      message: t.premiumNoPlans,
                      icon: Icons.workspace_premium_outlined,
                    )
                  else
                    for (final plan in state.plans) ...[
                      SubscriptionPlanCard(
                        plan: plan,
                        isBusy: state.busyPlanCode == plan.code,
                        isDisabled:
                            state.busyPlanCode != null &&
                            state.busyPlanCode != plan.code,
                        actionLabel: state.isPremium
                            ? t.premiumRenew
                            : t.premiumSubscribe,
                        onSubscribe: () => _subscribe(context, plan),
                      ),
                      Gap(12.h),
                    ],
                ],
              ],
            ),
          );
        },
      ),
    );
  }
}

/// رأس الشاشة — شارة العضوية والوعد الأساسي منها.
class _PremiumHeader extends StatelessWidget {
  final bool isPremium;
  const _PremiumHeader({required this.isPremium});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);

    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(18.w),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: AlignmentDirectional.topStart,
          end: AlignmentDirectional.bottomEnd,
          colors: [AppColors.primary, AppColors.primaryDeep],
        ),
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Column(
        children: [
          Container(
            width: 56.w,
            height: 56.w,
            decoration: BoxDecoration(
              color: AppColors.gold.withValues(alpha: 0.18),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.workspace_premium_rounded,
              size: 30.sp,
              color: AppColors.gold,
            ),
          ),
          Gap(10.h),
          Text(
            isPremium ? t.premiumActive : t.premiumInactive,
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w700,
              color: AppColors.white,
            ),
          ),
          Gap(5.h),
          Text(
            t.premiumTagline,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 11.5.sp,
              height: 1.7,
              color: AppColors.white.withValues(alpha: 0.75),
            ),
          ),
        ],
      ),
    );
  }
}

/// تنسيق تاريخ مشترك بين بطاقات الاشتراك.
String formatSubscriptionDate(DateTime d) => DateFormat('yyyy/MM/dd').format(d);
