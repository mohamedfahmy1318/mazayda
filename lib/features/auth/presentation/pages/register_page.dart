import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mazayada/l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/widgets/primary_button.dart';
import '../cubit/register_cubit.dart';
import '../formz/auth_inputs.dart';
import '../widgets/app_text_field.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<RegisterCubit>(),
      child: const _RegisterView(),
    );
  }
}

class _RegisterView extends StatelessWidget {
  const _RegisterView();

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(title: Text(t.register)),
      body: BlocConsumer<RegisterCubit, RegisterState>(
        listener: (context, state) {
          if (state.status == RegisterStatus.success) {
            context.push('${Routes.otp}/${state.userId}');
          } else if (state.status == RegisterStatus.failure &&
              state.serverErrors == null) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.errorMessage ?? t.errorGeneric)),
            );
          }
        },
        builder: (context, state) {
          final cubit = context.read<RegisterCubit>();
          final srv = state.serverErrors;

          return SingleChildScrollView(
            padding: EdgeInsets.all(16.w),
            child: Column(
              children: [
                AppTextField(
                  label: t.nin,
                  hint: '18 رقم',
                  icon: Icons.badge_outlined,
                  keyboardType: TextInputType.number,
                  maxLength: 18,
                  onChanged: cubit.ninChanged,
                  errorText: _ninErr(state.nin, t) ?? srv?['nin']?.first,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: AppTextField(
                        label: t.firstName,
                        hint: t.firstName,
                        onChanged: cubit.firstNameChanged,
                        errorText: _nameErr(state.firstName, t) ??
                            srv?['first_name_ar']?.first,
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Expanded(
                      child: AppTextField(
                        label: t.lastName,
                        hint: t.lastName,
                        onChanged: cubit.lastNameChanged,
                        errorText: _nameErr(state.lastName, t) ??
                            srv?['last_name_ar']?.first,
                      ),
                    ),
                  ],
                ),
                AppTextField(
                  label: t.phone,
                  hint: '05 / 06 / 07 ...',
                  icon: Icons.phone_outlined,
                  keyboardType: TextInputType.phone,
                  maxLength: 10,
                  onChanged: cubit.phoneChanged,
                  errorText: _phoneErr(state.phone, t) ?? srv?['phone']?.first,
                ),
                AppTextField(
                  label: t.email,
                  hint: 'example@mail.com',
                  icon: Icons.mail_outline,
                  keyboardType: TextInputType.emailAddress,
                  onChanged: cubit.emailChanged,
                  errorText: _emailErr(state.email, t) ?? srv?['email']?.first,
                ),
                AppTextField(
                  label: t.password,
                  hint: '••••••••',
                  icon: Icons.lock_outline,
                  obscure: true,
                  onChanged: cubit.passwordChanged,
                  errorText:
                      _passErr(state.password, t) ?? srv?['password']?.first,
                ),
                AppTextField(
                  label: t.confirmPassword,
                  hint: '••••••••',
                  icon: Icons.lock_outline,
                  obscure: true,
                  onChanged: cubit.confirmPasswordChanged,
                  errorText: _confirmPassErr(state.confirmPassword, t),
                ),
                SizedBox(height: 12.h),
                PrimaryButton(
                  label: t.nextVerify,
                  icon: Icons.arrow_back,
                  isLoading: state.status == RegisterStatus.submitting,
                  onPressed: state.canSubmit ? () => cubit.submit() : null,
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  String? _ninErr(NinInput i, AppLocalizations t) {
    if (i.isPure || i.isValid) return null;
    return switch (i.error) {
      NinError.empty => t.valRequired,
      NinError.invalid => t.valNinInvalid,
      _ => null,
    };
  }

  String? _nameErr(NameInput i, AppLocalizations t) {
    if (i.isPure || i.isValid) return null;
    return switch (i.error) {
      NameError.empty => t.valRequired,
      NameError.tooShort => t.valNameShort,
      _ => null,
    };
  }

  String? _phoneErr(PhoneInput i, AppLocalizations t) {
    if (i.isPure || i.isValid) return null;
    return switch (i.error) {
      PhoneError.empty => t.valRequired,
      PhoneError.invalid => t.valPhoneInvalid,
      _ => null,
    };
  }

  String? _emailErr(EmailInput i, AppLocalizations t) {
    if (i.isPure || i.isValid) return null;
    return switch (i.error) {
      EmailError.empty => t.valRequired,
      EmailError.invalid => t.valEmailInvalid,
      _ => null,
    };
  }

  String? _passErr(PasswordInput i, AppLocalizations t) {
    if (i.isPure || i.isValid) return null;
    return switch (i.error) {
      PasswordError.empty => t.valRequired,
      PasswordError.tooShort => t.valPasswordShort,
      _ => null,
    };
  }

  String? _confirmPassErr(ConfirmPasswordInput i, AppLocalizations t) {
    if (i.isPure || i.isValid) return null;
    return switch (i.error) {
      ConfirmPasswordError.empty => t.valRequired,
      ConfirmPasswordError.mismatch => t.valPasswordMismatch,
      _ => null,
    };
  }
}
