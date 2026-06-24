import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mazayada/l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/widgets/primary_button.dart';
import '../cubit/login_cubit.dart';
import '../formz/auth_inputs.dart';
import '../widgets/app_text_field.dart';
import '../widgets/auth_circle_badge.dart';

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
    return Scaffold(
      appBar: AppBar(title: Text(t.login)),
      body: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {
          switch (state.status) {
            case LoginStatus.success:
              context.go(Routes.home);
            case LoginStatus.needsVerification:
              context.push('${Routes.otp}/${state.userId ?? ''}');
            case LoginStatus.failure:
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(state.errorMessage ?? t.errorGeneric)),
              );
            default:
              break;
          }
        },
        builder: (context, state) {
          final cubit = context.read<LoginCubit>();
          return SingleChildScrollView(
            padding: EdgeInsets.all(16.w),
            child: Column(
              children: [
                SizedBox(height: 30.h),
                const AuthCircleBadge(
                  icon: Icons.gavel,
                  color: AppColors.white,
                  backgroundColor: AppColors.primary,
                  radius: 36,
                ),
                SizedBox(height: 24.h),
                AppTextField(
                  label: t.ninOrEmail,
                  hint: t.ninOrEmail,
                  icon: Icons.person_outline,
                  onChanged: cubit.identifierChanged,
                  errorText:
                      state.identifier.isNotValid && !state.identifier.isPure
                      ? t.valRequired
                      : null,
                ),
                AppTextField(
                  label: t.password,
                  hint: '••••••••',
                  icon: Icons.lock_outline,
                  obscure: true,
                  onChanged: cubit.passwordChanged,
                  errorText: _passwordError(state.password, t),
                ),
                SizedBox(height: 12.h),
                PrimaryButton(
                  label: t.loginButton,
                  icon: Icons.arrow_back,
                  isLoading: state.status == LoginStatus.submitting,
                  // الزرار يتقفل لحد ما البيانات تبقى صحيحة
                  onPressed: state.canSubmit ? () => cubit.submit() : null,
                ),
                SizedBox(height: 16.h),
                TextButton(
                  onPressed: () => context.push(Routes.register),
                  child: Text(t.noAccountRegister),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  String? _passwordError(PasswordInput input, AppLocalizations t) {
    if (input.isPure || input.isValid) return null;
    return switch (input.error) {
      PasswordError.empty => t.valRequired,
      PasswordError.tooShort => t.valPasswordShort,
      _ => null,
    };
  }
}
