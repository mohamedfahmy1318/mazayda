import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:mazayada/l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/widgets/primary_button.dart';
import '../auth_constants.dart';
import '../cubit/register_cubit.dart';
import '../formz/auth_input_errors.dart';
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
                  hint: t.ninHint,
                  icon: Icons.badge_outlined,
                  keyboardType: TextInputType.number,
                  maxLength: AuthConstants.ninLength,
                  onChanged: cubit.ninChanged,
                  errorText: state.nin.errorText(t) ?? srv?['nin']?.first,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: AppTextField(
                        label: t.firstName,
                        hint: t.firstName,
                        onChanged: cubit.firstNameChanged,
                        errorText:
                            state.firstName.errorText(t) ??
                            srv?['first_name_ar']?.first,
                      ),
                    ),
                    Gap(10.w),
                    Expanded(
                      child: AppTextField(
                        label: t.lastName,
                        hint: t.lastName,
                        onChanged: cubit.lastNameChanged,
                        errorText:
                            state.lastName.errorText(t) ??
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
                  maxLength: AuthConstants.phoneLength,
                  onChanged: cubit.phoneChanged,
                  errorText: state.phone.errorText(t) ?? srv?['phone']?.first,
                ),
                AppTextField(
                  label: t.email,
                  hint: 'example@mail.com',
                  icon: Icons.mail_outline,
                  keyboardType: TextInputType.emailAddress,
                  onChanged: cubit.emailChanged,
                  errorText: state.email.errorText(t) ?? srv?['email']?.first,
                ),
                _BirthDateField(
                  value: state.birthDate.value,
                  errorText:
                      state.birthDate.errorText(t) ?? srv?['birth_date']?.first,
                  onPicked: cubit.birthDateChanged,
                ),
                AppTextField(
                  label: t.password,
                  hint: '••••••••',
                  icon: Icons.lock_outline,
                  obscure: true,
                  onChanged: cubit.passwordChanged,
                  errorText:
                      state.password.errorText(t) ?? srv?['password']?.first,
                ),
                AppTextField(
                  label: t.confirmPassword,
                  hint: '••••••••',
                  icon: Icons.lock_outline,
                  obscure: true,
                  onChanged: cubit.confirmPasswordChanged,
                  errorText: state.confirmPassword.errorText(t),
                ),
                Gap(12.h),
                PrimaryButton(
                  label: t.nextVerify,
                  // سهم "للأمام" يتقلب حسب اتجاه اللغة (RTL: لليسار، LTR: لليمين).
                  icon: Directionality.of(context) == TextDirection.rtl
                      ? Icons.arrow_back
                      : Icons.arrow_forward,
                  isLoading: state.status == RegisterStatus.submitting,
                  onPressed: state.canSubmit ? () => cubit.submit() : null,
                ),
              ],
            ).animate().fadeIn(duration: 350.ms),
          );
        },
      ),
    );
  }
}

/// حقل تاريخ الميلاد — يفتح date picker ويرجّع القيمة بصيغة YYYY-MM-DD
/// (الصيغة اللي بيتوقّعها الـ API). الـ picker نفسه بيمنع اختيار أي تاريخ
/// يخلّي العمر أقل من 18 سنة، فالقاعدة متطبّقة في الواجهة قبل السيرفر.
class _BirthDateField extends StatelessWidget {
  final String value;
  final String? errorText;
  final ValueChanged<String> onPicked;

  const _BirthDateField({
    required this.value,
    required this.errorText,
    required this.onPicked,
  });

  static String _fmt(DateTime d) =>
      '${d.year.toString().padLeft(4, '0')}-'
      '${d.month.toString().padLeft(2, '0')}-'
      '${d.day.toString().padLeft(2, '0')}';

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    final now = DateTime.now();
    // آخر تاريخ مسموح = (اليوم - 18 سنة) - يوم، مطابقة لـ before: في الـ API.
    final lastAllowed = DateTime(
      now.year - AuthConstants.minAgeYears,
      now.month,
      now.day,
    ).subtract(const Duration(days: 1));

    return AppTextField(
      label: t.birthDate,
      hint: t.selectBirthDate,
      icon: Icons.cake_outlined,
      readOnly: true,
      controller: TextEditingController(text: value),
      errorText: errorText,
      onTap: () async {
        final picked = await showDatePicker(
          context: context,
          initialDate: DateTime.tryParse(value) ?? lastAllowed,
          firstDate: DateTime(1900),
          lastDate: lastAllowed,
          helpText: t.selectBirthDate,
        );
        if (picked != null) onPicked(_fmt(picked));
      },
    );
  }
}
