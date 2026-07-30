import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:mazayada/l10n/app_localizations.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/widgets/primary_button.dart';
import '../../../../core/widgets/state_views.dart';
import '../../domain/entities/final_payment_preview.dart';
import '../cubit/final_payment_preview_cubit.dart';

/// شيت معاينة الدفع النهائي — بيعرض تفصيل الرسوم قبل فتح بوابة الدفع.
///
/// الويب بيـ POST على طول من غير معاينة؛ الـ endpoint ده مخصّص للموبايل
/// عشان الفايز يشوف الرسوم والمهلة قبل ما يدفع.
class FinalPaymentSheet extends StatelessWidget {
  final String auctionId;

  /// بتتنادى لما المستخدم يأكّد — عادةً PaymentFlow.startFinalPayment.
  final VoidCallback onConfirm;

  const FinalPaymentSheet({
    super.key,
    required this.auctionId,
    required this.onConfirm,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<FinalPaymentPreviewCubit>()..load(auctionId),
      child: _SheetBody(onConfirm: onConfirm),
    );
  }
}

class _SheetBody extends StatelessWidget {
  final VoidCallback onConfirm;
  const _SheetBody({required this.onConfirm});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);

    return Container(
      padding: EdgeInsets.fromLTRB(18.w, 12.h, 18.w, 18.h),
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.vertical(top: Radius.circular(22.r)),
      ),
      child: BlocBuilder<FinalPaymentPreviewCubit, FinalPaymentPreviewState>(
        builder: (context, state) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const _Grabber(),
              Gap(14.h),
              Text(
                t.fpTitle,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Gap(14.h),
              if (state.loading)
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 28.h),
                  child: const LoadingView(),
                )
              else if (state.error != null)
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.h),
                  child: Text(
                    state.error!,
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: AppColors.danger,
                      height: 1.6,
                    ),
                  ),
                )
              else if (state.preview != null)
                _Breakdown(preview: state.preview!, onConfirm: onConfirm),
            ],
          );
        },
      ),
    );
  }
}

class _Breakdown extends StatelessWidget {
  final FinalPaymentPreview preview;
  final VoidCallback onConfirm;

  const _Breakdown({required this.preview, required this.onConfirm});

  /// نفس تنسيق الباك (`dzd`): تجميع بالمسافات + « دج».
  static String _dzd(int dinars) =>
      '${NumberFormat('#,###', 'en').format(dinars).replaceAll(',', ' ')} دج';

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(14.w),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(12.r),
            border: Border.all(color: AppColors.border, width: 0.5),
          ),
          child: Column(
            children: [
              // النصوص جاية مترجمة من السيرفر — بنعرضها زي ما هي.
              for (final line in preview.lines)
                _Row(
                  label: line.label,
                  value: line.formatted,
                  emphasized: line.isTotal,
                ),
              if (preview.hasDeposit) ...[
                const Divider(height: 18),
                _Row(
                  label: t.fpConfirmedDeposit,
                  value: '- ${_dzd(preview.confirmedDeposit)}',
                  tone: AppColors.success,
                ),
              ],
              const Divider(height: 18),
              _Row(
                label: t.fpAmountDue,
                value: preview.amountDueFormatted,
                emphasized: true,
                tone: AppColors.primary,
              ),
            ],
          ),
        ),
        if (preview.hasCustomsDue) ...[
          Gap(10.h),
          _Note(
            icon: Icons.local_shipping_outlined,
            color: AppColors.warning,
            text:
                '${t.fpCustomsImmediate}: '
                '${_dzd(preview.customsImmediateDue!)}',
          ),
        ],
        if (preview.dueAt != null) ...[
          Gap(10.h),
          _Note(
            icon: Icons.event_busy_outlined,
            color: AppColors.danger,
            text: t.fpDeadline(
              DateFormat('yyyy/MM/dd').format(preview.dueAt!),
              preview.deadlineDays,
            ),
          ),
        ],
        Gap(16.h),
        if (preview.alreadyPaid)
          _Note(
            icon: Icons.check_circle_outline,
            color: AppColors.success,
            text: t.fpAlreadyPaid,
          )
        else
          PrimaryButton(
            label: t.fpPay,
            icon: Icons.open_in_new,
            onPressed: () {
              Navigator.pop(context);
              onConfirm();
            },
          ),
      ],
    );
  }
}

class _Row extends StatelessWidget {
  final String label;
  final String value;
  final bool emphasized;
  final Color? tone;

  const _Row({
    required this.label,
    required this.value,
    this.emphasized = false,
    this.tone,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12.sp,
                color: emphasized
                    ? AppColors.textPrimary
                    : AppColors.textSecondary,
                fontWeight: emphasized ? FontWeight.w500 : null,
              ),
            ),
          ),
          Gap(8.w),
          Text(
            value,
            style: TextStyle(
              fontSize: emphasized ? 14.sp : 12.sp,
              fontWeight: FontWeight.w500,
              color: tone ?? AppColors.textPrimary,
            ),
          ),
        ],
      ),
    );
  }
}

class _Note extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _Note({required this.icon, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, size: 16.sp, color: color),
        Gap(7.w),
        Expanded(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 11.sp,
              color: AppColors.textSecondary,
              height: 1.5,
            ),
          ),
        ),
      ],
    );
  }
}

class _Grabber extends StatelessWidget {
  const _Grabber();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 38.w,
        height: 4.h,
        decoration: BoxDecoration(
          color: AppColors.borderStrong,
          borderRadius: BorderRadius.circular(2.r),
        ),
      ),
    );
  }
}
