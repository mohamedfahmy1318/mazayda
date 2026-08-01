import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:mazayada/l10n/app_localizations.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/widgets/primary_button.dart';
import '../cubit/login_cubit.dart';
import '../formz/auth_input_errors.dart';
import '../widgets/app_text_field.dart';
import '../widgets/auth_page_shell.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<LoginCubit>(),
      child: const _LoginView(),
    );
  }
}

class _LoginView extends StatelessWidget {
  const _LoginView();

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        switch (state.status) {
          case LoginStatus.success:
            context.go(Routes.home);
          case LoginStatus.needsVerification:
            context.push('${Routes.otp}/${state.userId ?? ''}');
          default:
            break;
        }
      },
      builder: (context, state) {
        final cubit = context.read<LoginCubit>();
        final submitting = state.status == LoginStatus.submitting;

        return AuthPageShell(
          title: t.login,
          subtitle: t.splashTagline,
          icon: Icons.login_rounded,
          showBackButton: false,
          child: AutofillGroup(
            child: ListView(
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              padding: EdgeInsets.fromLTRB(18.w, 22.h, 18.w, 24.h),
              children: [
                AuthFormSectionTitle(
                  text: t.login,
                  icon: Icons.lock_open_rounded,
                ),
                Gap(18.h),
                AppTextField(
                  label: t.ninOrEmail,
                  hint: t.ninOrEmail,
                  icon: Icons.person_outline_rounded,
                  textInputAction: TextInputAction.next,
                  autofillHints: const [AutofillHints.username],
                  enabled: !submitting,
                  onChanged: cubit.identifierChanged,
                  errorText: state.identifier.errorText(t),
                ),
                AppTextField(
                  label: t.password,
                  hint: '••••••••••••',
                  icon: Icons.lock_outline_rounded,
                  obscure: true,
                  textInputAction: TextInputAction.done,
                  autofillHints: const [AutofillHints.password],
                  enabled: !submitting,
                  onChanged: cubit.passwordChanged,
                  onSubmitted: (_) {
                    if (state.canSubmit) cubit.submit();
                  },
                  errorText: state.password.errorText(t),
                ),
                Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: TextButton(
                    onPressed: submitting
                        ? null
                        : () => context.push(Routes.forgotPassword),
                    child: Text(
                      t.forgotPassword,
                      style: TextStyle(
                        fontSize: 11.5.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColors.primary,
                      ),
                    ),
                  ),
                ),
                AnimatedSize(
                  duration: const Duration(milliseconds: 220),
                  child: state.status == LoginStatus.failure
                      ? Padding(
                          padding: EdgeInsets.only(bottom: 13.h),
                          child: AuthErrorBanner(
                            message: state.errorMessage ?? t.errorGeneric,
                          ),
                        )
                      : const SizedBox.shrink(),
                ),
                PrimaryButton(
                  label: t.loginButton,
                  icon: Icons.login_rounded,
                  isLoading: submitting,
                  onPressed: state.canSubmit ? cubit.submit : null,
                ),
                Gap(12.h),
                Center(
                  child: TextButton.icon(
                    onPressed: submitting
                        ? null
                        : () => context.push(Routes.recoverAccount),
                    icon: Icon(Icons.help_outline_rounded, size: 16.sp),
                    label: Text(
                      t.recoverWithSecret,
                      style: TextStyle(fontSize: 11.sp),
                    ),
                  ),
                ),
                Gap(8.h),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 12.w,
                    vertical: 5.h,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.primary.withValues(alpha: 0.065),
                    borderRadius: BorderRadius.circular(14.r),
                  ),
                  child: TextButton(
                    onPressed: submitting
                        ? null
                        : () => context.push(Routes.register),
                    child: Text(
                      t.noAccountRegister,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w700,
                        color: AppColors.primary,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
