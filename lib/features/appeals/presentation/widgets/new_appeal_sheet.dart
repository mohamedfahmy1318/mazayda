import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:formz/formz.dart';
import 'package:gap/gap.dart';
import 'package:mazayada/l10n/app_localizations.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/widgets/primary_button.dart';
import '../../domain/usecases/submit_appeal.dart';
import '../cubit/appeals_cubit.dart';
import '../formz/appeal_inputs.dart';

/// نموذج تقديم اعتراض جديد — يُعرض كـ bottom sheet.
class NewAppealSheet extends StatefulWidget {
  const NewAppealSheet({super.key});

  @override
  State<NewAppealSheet> createState() => _NewAppealSheetState();
}

class _NewAppealSheetState extends State<NewAppealSheet> {
  AppealTextInput _subject = const AppealTextInput.pure();
  AppealTextInput _reason = const AppealTextInput.pure();

  bool get _isValid => Formz.validate([_subject, _reason]);

  void _submit() {
    if (!_isValid) return;
    context.read<AppealsCubit>().submit(
      SubmitAppealParams(
        subject: _subject.value.trim(),
        reason: _reason.value.trim(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    return BlocListener<AppealsCubit, AppealsState>(
      // نقفل الـ sheet عند نجاح الإرسال، ونعرض الخطأ لو فشل (بدل ما يتبلع بصمت).
      listenWhen: (p, c) =>
          (c.submitted && !p.submitted) ||
          (!c.submitting && c.error != null && c.error != p.error),
      listener: (context, state) {
        if (state.submitted) {
          Navigator.pop(context);
        } else if (state.error != null) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(state.error!)));
        }
      },
      child: Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: Container(
          padding: EdgeInsets.fromLTRB(18.w, 12.h, 18.w, 18.h),
          decoration: BoxDecoration(
            color: AppColors.background,
            borderRadius: BorderRadius.vertical(top: Radius.circular(22.r)),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const _SheetGrabber(),
              Gap(16.h),
              Text(
                t.newAppealTitle,
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
              ),
              Gap(16.h),
              _AppealField(
                label: t.appealSubject,
                hint: t.appealSubjectHint,
                errorText: _subject.displayError == null ? null : t.valRequired,
                onChanged: (v) =>
                    setState(() => _subject = AppealTextInput.dirty(v)),
              ),
              Gap(14.h),
              _AppealField(
                label: t.appealReason,
                hint: t.appealReasonHint,
                maxLines: 4,
                errorText: _reason.displayError == null ? null : t.valRequired,
                onChanged: (v) =>
                    setState(() => _reason = AppealTextInput.dirty(v)),
              ),
              Gap(18.h),
              BlocBuilder<AppealsCubit, AppealsState>(
                builder: (context, state) => PrimaryButton(
                  label: t.submitAppeal,
                  icon: Icons.send,
                  isLoading: state.submitting,
                  // الزرار يتقفل لحد ما الحقول تتملا
                  onPressed: _isValid ? _submit : null,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// حقل بعنوان داخل فورم الاعتراض.
class _AppealField extends StatelessWidget {
  final String label;
  final String hint;
  final String? errorText;
  final int maxLines;
  final ValueChanged<String> onChanged;

  const _AppealField({
    required this.label,
    required this.hint,
    required this.onChanged,
    this.errorText,
    this.maxLines = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500),
        ),
        Gap(6.h),
        TextField(
          maxLines: maxLines,
          onChanged: onChanged,
          decoration: InputDecoration(hintText: hint, errorText: errorText),
        ),
      ],
    );
  }
}

/// المقبض العلوي للـ bottom sheet.
class _SheetGrabber extends StatelessWidget {
  const _SheetGrabber();

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
