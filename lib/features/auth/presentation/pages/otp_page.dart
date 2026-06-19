import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/widgets/primary_button.dart';
import '../cubit/otp_cubit.dart';

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
  final List<TextEditingController> _ctrls =
      List.generate(6, (_) => TextEditingController());
  final List<FocusNode> _nodes = List.generate(6, (_) => FocusNode());

  String get _code => _ctrls.map((c) => c.text).join();

  @override
  void dispose() {
    for (final c in _ctrls) {
      c.dispose();
    }
    for (final n in _nodes) {
      n.dispose();
    }
    super.dispose();
  }

  void _onChanged(int i, String v) {
    if (v.isNotEmpty && i < 5) _nodes[i + 1].requestFocus();
    if (v.isEmpty && i > 0) _nodes[i - 1].requestFocus();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('تأكيد البريد الإلكتروني')),
      body: BlocConsumer<OtpCubit, OtpState>(
        listener: (context, state) {
          if (state is OtpVerified) {
            context.go(Routes.home);
          } else if (state is OtpError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.message)),
            );
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
                CircleAvatar(
                  radius: 32.r,
                  backgroundColor: AppColors.successBg,
                  child: Icon(Icons.mark_email_read_outlined,
                      size: 32.sp, color: AppColors.success),
                ),
                SizedBox(height: 12.h),
                Text(
                  'أدخل الرمز المكوّن من 6 أرقام المرسل إلى بريدك',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 13.sp, color: AppColors.textSecondary),
                ),
                SizedBox(height: 24.h),
                // 6 خانات
                Directionality(
                  textDirection: TextDirection.ltr,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(6, (i) {
                      return SizedBox(
                        width: 46.w,
                        height: 54.h,
                        child: TextField(
                          controller: _ctrls[i],
                          focusNode: _nodes[i],
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          maxLength: 1,
                          style: TextStyle(
                              fontSize: 22.sp,
                              fontWeight: FontWeight.w500,
                              color: AppColors.primary),
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          decoration: const InputDecoration(counterText: ''),
                          onChanged: (v) => _onChanged(i, v),
                        ),
                      );
                    }),
                  ),
                ),
                SizedBox(height: 20.h),
                // إعادة الإرسال
                cooldown > 0
                    ? Text(
                        'إعادة الإرسال خلال 0:${cooldown.toString().padLeft(2, '0')}',
                        style: TextStyle(
                            fontSize: 13.sp, color: AppColors.textHint))
                    : TextButton(
                        onPressed: () =>
                            context.read<OtpCubit>().resend(widget.userId),
                        child: const Text('إعادة إرسال الرمز'),
                      ),
                SizedBox(height: 20.h),
                PrimaryButton(
                  label: 'تأكيد',
                  icon: Icons.check,
                  isLoading: isVerifying,
                  onPressed: _code.length == 6
                      ? () => context.read<OtpCubit>().verify(
                            userId: widget.userId,
                            otp: _code,
                          )
                      : null,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
