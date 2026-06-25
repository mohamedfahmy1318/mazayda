import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mazayada/l10n/app_localizations.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/widgets/primary_button.dart';
import '../../domain/repositories/appeals_repository.dart';
import '../cubit/appeals_cubit.dart';

/// نموذج تقديم اعتراض جديد — يُعرض كـ bottom sheet.
class NewAppealSheet extends StatefulWidget {
  const NewAppealSheet({super.key});

  @override
  State<NewAppealSheet> createState() => _NewAppealSheetState();
}

class _NewAppealSheetState extends State<NewAppealSheet> {
  final _subject = TextEditingController();
  final _reason = TextEditingController();

  @override
  void dispose() {
    _subject.dispose();
    _reason.dispose();
    super.dispose();
  }

  void _submit() {
    final subject = _subject.text.trim();
    final reason = _reason.text.trim();
    if (subject.isEmpty || reason.isEmpty) return;
    context.read<AppealsCubit>().submit(
      SubmitAppealParams(subject: subject, reason: reason),
    );
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    return BlocListener<AppealsCubit, AppealsState>(
      listenWhen: (p, c) => c.submitted && !p.submitted,
      listener: (context, _) => Navigator.pop(context),
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
              SizedBox(height: 16.h),
              Text(
                t.newAppealTitle,
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 16.h),
              Text(
                t.appealSubject,
                style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 6.h),
              TextField(
                controller: _subject,
                decoration: InputDecoration(hintText: t.appealSubjectHint),
              ),
              SizedBox(height: 14.h),
              Text(
                t.appealReason,
                style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 6.h),
              TextField(
                controller: _reason,
                maxLines: 4,
                decoration: InputDecoration(hintText: t.appealReasonHint),
              ),
              SizedBox(height: 18.h),
              BlocBuilder<AppealsCubit, AppealsState>(
                builder: (context, state) => PrimaryButton(
                  label: t.submitAppeal,
                  icon: Icons.send,
                  isLoading: state.submitting,
                  onPressed: _submit,
                ),
              ),
            ],
          ),
        ),
      ),
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
