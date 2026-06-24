import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mazayada/l10n/app_localizations.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/widgets/primary_button.dart';
import '../cubit/otp_cubit.dart';
import '../widgets/auth_circle_badge.dart';
import '../widgets/otp_code_field.dart';

/// طول كود التحقق المتوقّع من السيرفر.
const _otpLength = 6;

class OtpPage extends StatelessWidget {
  final String userId;
  const OtpPage({super.key, required this.userId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<OtpCubit>()..startCooldown(),
      child: _OtpView(userId: userId),
    );
  }
}

class _OtpView extends StatefulWidget {
  final String userId;
  const _OtpView({required this.userId});
  @override
  State<_OtpView> createState() => _OtpViewState();
}

class _OtpViewState extends State<_OtpView> {
  String _code = '';

  bool get _isComplete => _code.length == _otpLength;

  void _verify() {
    context.read<OtpCubit>().verify(userId: widget.userId, otp: _code);
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(title: Text(t.verifyEmailTitle)),
      body: BlocConsumer<OtpCubit, OtpState>(
        listener: (context, state) {
          if (state is OtpVerified) {
            context.go(Routes.home);
          } else if (state is OtpError) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(state.message)));
          }
        },
        builder: (context, state) {
          final cooldown = state is OtpInitial ? state.cooldown : 0;
          final isVerifying = state is OtpVerifying;

          return Padding(
            padding: EdgeInsets.all(16.w),
            child: Column(
              children: [
                SizedBox(height: 20.h),
                const AuthCircleBadge(
                      icon: Icons.mark_email_read_outlined,
                      color: AppColors.success,
                      backgroundColor: AppColors.successBg,
                    )
                    .animate()
                    .fadeIn(duration: 400.ms)
                    .scale(
                      begin: const Offset(0.8, 0.8),
                      end: const Offset(1, 1),
                      curve: Curves.easeOutBack,
                    ),
                SizedBox(height: 12.h),
                Text(
                  t.otpHint,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 13.sp,
                    color: AppColors.textSecondary,
                  ),
                ),
                SizedBox(height: 24.h),
                OtpCodeField(
                  length: _otpLength,
                  onChanged: (code) => setState(() => _code = code),
                ),
                SizedBox(height: 20.h),
                _ResendControl(userId: widget.userId, cooldown: cooldown),
                SizedBox(height: 20.h),
                PrimaryButton(
                  label: t.confirm,
                  icon: Icons.check,
                  isLoading: isVerifying,
                  onPressed: _isComplete ? _verify : null,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

/// عدّاد إعادة الإرسال — يعرض الوقت المتبقّي أو زر إعادة الإرسال.
class _ResendControl extends StatelessWidget {
  final String userId;
  final int cooldown;

  const _ResendControl({required this.userId, required this.cooldown});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    if (cooldown > 0) {
      return Text(
        t.resendIn(cooldown),
        style: TextStyle(fontSize: 13.sp, color: AppColors.textHint),
      );
    }
    return TextButton(
      onPressed: () => context.read<OtpCubit>().resend(userId),
      child: Text(t.resendCode),
    );
  }
}
