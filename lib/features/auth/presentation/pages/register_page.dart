import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:mazayada/l10n/app_localizations.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/utils/arabic_numerals.dart';
import '../../../../core/widgets/primary_button.dart';
import '../auth_constants.dart';
import '../cubit/register_cubit.dart';
import '../formz/auth_input_errors.dart';
import '../widgets/app_text_field.dart';
import '../widgets/auth_page_shell.dart';
import '../../../../core/constants/app_icons.dart';

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

    return BlocConsumer<RegisterCubit, RegisterState>(
      listener: (context, state) {
        if (state.status == RegisterStatus.success) {
          context.push('${Routes.otp}/${state.userId}');
        }
      },
      builder: (context, state) {
        final cubit = context.read<RegisterCubit>();
        final srv = state.serverErrors;
        final submitting = state.status == RegisterStatus.submitting;

        return AuthPageShell(
          title: t.register,
          subtitle: t.splashTagline,
          icon: Icons.person_add_alt_1_rounded,
          child: AutofillGroup(
            child: ListView(
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              padding: EdgeInsets.fromLTRB(18.w, 22.h, 18.w, 28.h),
              children: [
                AuthFormSectionTitle(
                  text: t.personalData,
                  icon: Icons.badge_outlined,
                ),
                Gap(17.h),
                AppTextField(
                  label: t.nin,
                  hint: t.ninHint,
                  icon: Icons.badge_outlined,
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.next,
                  maxLength: AuthConstants.ninLength,
                  // نقبل الأرقام العربية زي اللاتينية — التحويل بيحصل في الـ cubit.
                  inputFormatters: [AppInputFormatters.anyNumeralDigitsOnly],
                  enabled: !submitting,
                  onChanged: cubit.ninChanged,
                  errorText: state.nin.errorText(t) ?? srv?['nin']?.first,
                ),
                AppTextField(
                  label: t.firstName,
                  hint: t.firstName,
                  icon: Icons.person_outline_rounded,
                  textInputAction: TextInputAction.next,
                  textCapitalization: TextCapitalization.words,
                  autofillHints: const [AutofillHints.givenName],
                  enabled: !submitting,
                  onChanged: cubit.firstNameChanged,
                  errorText:
                      state.firstName.errorText(t) ??
                      srv?['first_name_ar']?.first,
                ),
                AppTextField(
                  label: t.lastName,
                  hint: t.lastName,
                  icon: Icons.person_outline_rounded,
                  textInputAction: TextInputAction.next,
                  textCapitalization: TextCapitalization.words,
                  autofillHints: const [AutofillHints.familyName],
                  enabled: !submitting,
                  onChanged: cubit.lastNameChanged,
                  errorText:
                      state.lastName.errorText(t) ??
                      srv?['last_name_ar']?.first,
                ),
                AppTextField(
                  label: t.phone,
                  hint: '05 / 06 / 07 ...',
                  icon: Icons.phone_outlined,
                  keyboardType: TextInputType.phone,
                  textInputAction: TextInputAction.next,
                  autofillHints: const [AutofillHints.telephoneNumber],
                  maxLength: AuthConstants.phoneLength,
                  inputFormatters: [AppInputFormatters.anyNumeralDigitsOnly],
                  enabled: !submitting,
                  onChanged: cubit.phoneChanged,
                  errorText: state.phone.errorText(t) ?? srv?['phone']?.first,
                ),
                AppTextField(
                  label: t.email,
                  hint: 'example@mail.com',
                  icon: Icons.mail_outline_rounded,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  autofillHints: const [AutofillHints.email],
                  enabled: !submitting,
                  onChanged: cubit.emailChanged,
                  errorText: state.email.errorText(t) ?? srv?['email']?.first,
                ),
                _BirthDateField(
                  value: state.birthDate.value,
                  enabled: !submitting,
                  errorText:
                      state.birthDate.errorText(t) ?? srv?['birth_date']?.first,
                  onPicked: cubit.birthDateChanged,
                ),
                Gap(9.h),
                AuthFormSectionTitle(
                  text: t.password,
                  icon: Icons.security_rounded,
                ),
                Gap(17.h),
                AppTextField(
                  label: t.password,
                  hint: '••••••••••••',
                  icon: Icons.lock_outline_rounded,
                  obscure: true,
                  textInputAction: TextInputAction.next,
                  autofillHints: const [AutofillHints.newPassword],
                  enabled: !submitting,
                  onChanged: cubit.passwordChanged,
                  errorText:
                      state.password.errorText(t) ?? srv?['password']?.first,
                ),
                AppTextField(
                  label: t.confirmPassword,
                  hint: '••••••••••••',
                  icon: Icons.lock_reset_rounded,
                  obscure: true,
                  textInputAction: TextInputAction.done,
                  autofillHints: const [AutofillHints.newPassword],
                  enabled: !submitting,
                  onChanged: cubit.confirmPasswordChanged,
                  onSubmitted: (_) {
                    if (state.canSubmit) cubit.submit();
                  },
                  errorText: state.confirmPassword.errorText(t),
                ),
                AnimatedSize(
                  duration: const Duration(milliseconds: 220),
                  child: state.status == RegisterStatus.failure
                      ? Padding(
                          padding: EdgeInsets.only(bottom: 13.h),
                          child: AuthErrorBanner(
                            message: state.errorMessage ?? t.errorGeneric,
                          ),
                        )
                      : const SizedBox.shrink(),
                ),
                PrimaryButton(
                  label: t.nextVerify,
                  icon: AppIcons.forward,
                  isLoading: submitting,
                  onPressed: state.canSubmit ? cubit.submit : null,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _BirthDateField extends StatefulWidget {
  final String value;
  final String? errorText;
  final ValueChanged<String> onPicked;
  final bool enabled;

  const _BirthDateField({
    required this.value,
    required this.errorText,
    required this.onPicked,
    required this.enabled,
  });

  @override
  State<_BirthDateField> createState() => _BirthDateFieldState();
}

class _BirthDateFieldState extends State<_BirthDateField> {
  late final TextEditingController _controller = TextEditingController(
    text: widget.value,
  );

  static String _fmt(DateTime d) =>
      '${d.year.toString().padLeft(4, '0')}-'
      '${d.month.toString().padLeft(2, '0')}-'
      '${d.day.toString().padLeft(2, '0')}';

  @override
  void didUpdateWidget(_BirthDateField oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.value != widget.value && _controller.text != widget.value) {
      _controller.text = widget.value;
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    final now = DateTime.now();
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
      enabled: widget.enabled,
      controller: _controller,
      errorText: widget.errorText,
      onTap: () async {
        final picked = await showDatePicker(
          context: context,
          initialDate: DateTime.tryParse(widget.value) ?? lastAllowed,
          firstDate: DateTime(1900),
          lastDate: lastAllowed,
          helpText: t.selectBirthDate,
        );
        if (picked != null) widget.onPicked(_fmt(picked));
      },
    );
  }
}
