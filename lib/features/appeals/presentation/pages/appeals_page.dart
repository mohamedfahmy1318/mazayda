import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/widgets/primary_button.dart';
import '../../../../core/widgets/state_views.dart';
import '../../domain/entities/appeal.dart';
import '../../domain/repositories/appeals_repository.dart';
import '../cubit/appeals_cubit.dart';

class AppealsPage extends StatelessWidget {
  const AppealsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<AppealsCubit>()..load(),
      child: const _AppealsView(),
    );
  }
}

class _AppealsView extends StatelessWidget {
  const _AppealsView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('الاعتراضات')),
      body: BlocConsumer<AppealsCubit, AppealsState>(
        listener: (context, state) {
          if (state.submitted) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('تم إرسال اعتراضك')),
            );
          }
        },
        builder: (context, state) {
          if (state.loading) return const LoadingView();
          if (state.error != null && state.items.isEmpty) {
            return ErrorView(
              message: state.error!,
              onRetry: () => context.read<AppealsCubit>().load(),
            );
          }
          return Column(
            children: [
              Expanded(
                child: state.items.isEmpty
                    ? const EmptyView(
                        message: 'لا توجد اعتراضات',
                        icon: Icons.gavel_outlined,
                      )
                    : ListView.builder(
                        padding: EdgeInsets.all(16.w),
                        itemCount: state.items.length,
                        itemBuilder: (_, i) => _AppealCard(state.items[i]),
                      ),
              ),
              Padding(
                padding: EdgeInsets.all(16.w),
                child: PrimaryButton(
                  label: 'تقديم اعتراض جديد',
                  icon: Icons.add,
                  onPressed: () => _showNewAppealSheet(context),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  void _showNewAppealSheet(BuildContext context) {
    final cubit = context.read<AppealsCubit>();
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (_) => BlocProvider.value(
        value: cubit,
        child: const _NewAppealSheet(),
      ),
    );
  }
}

class _AppealCard extends StatelessWidget {
  final Appeal appeal;
  const _AppealCard(this.appeal);

  @override
  Widget build(BuildContext context) {
    final (Color fg, Color bg, String label, IconData icon) =
        _statusStyle(appeal.status);
    return Container(
      margin: EdgeInsets.only(bottom: 9.h),
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(13.r),
        border: Border.all(color: AppColors.border, width: 0.5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(appeal.subject,
                    style: TextStyle(
                        fontSize: 13.sp, fontWeight: FontWeight.w500)),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 9.w, vertical: 3.h),
                decoration: BoxDecoration(
                    color: bg, borderRadius: BorderRadius.circular(7.r)),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(icon, size: 12.sp, color: fg),
                    SizedBox(width: 4.w),
                    Text(label, style: TextStyle(fontSize: 10.sp, color: fg)),
                  ],
                ),
              ),
            ],
          ),
          if (appeal.auctionTitle != null) ...[
            SizedBox(height: 5.h),
            Row(
              children: [
                Icon(Icons.gavel, size: 13.sp, color: AppColors.textHint),
                SizedBox(width: 4.w),
                Text(appeal.auctionTitle!,
                    style: TextStyle(
                        fontSize: 11.sp, color: AppColors.textSecondary)),
              ],
            ),
          ],
          SizedBox(height: 5.h),
          Text(
            '${appeal.createdAt.year}/${appeal.createdAt.month}/${appeal.createdAt.day}',
            style: TextStyle(fontSize: 10.sp, color: AppColors.textHint),
          ),
        ],
      ),
    );
  }

  (Color, Color, String, IconData) _statusStyle(AppealStatus s) => switch (s) {
        AppealStatus.pending => (
            AppColors.warning,
            AppColors.warningBg,
            'قيد المراجعة',
            Icons.schedule
          ),
        AppealStatus.answered => (
            AppColors.success,
            AppColors.successBg,
            'تمت الإجابة',
            Icons.check_circle_outline
          ),
        AppealStatus.rejected => (
            AppColors.danger,
            AppColors.dangerBg,
            'مرفوض',
            Icons.close
          ),
        AppealStatus.unknown => (
            AppColors.neutral,
            AppColors.neutralBg,
            '—',
            Icons.info_outline
          ),
      };
}

class _NewAppealSheet extends StatefulWidget {
  const _NewAppealSheet();
  @override
  State<_NewAppealSheet> createState() => _NewAppealSheetState();
}

class _NewAppealSheetState extends State<_NewAppealSheet> {
  final _subject = TextEditingController();
  final _reason = TextEditingController();

  @override
  void dispose() {
    _subject.dispose();
    _reason.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
              Center(
                child: Container(
                  width: 38.w,
                  height: 4.h,
                  decoration: BoxDecoration(
                    color: AppColors.borderStrong,
                    borderRadius: BorderRadius.circular(2.r),
                  ),
                ),
              ),
              SizedBox(height: 16.h),
              Text('اعتراض جديد',
                  style:
                      TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w500)),
              SizedBox(height: 16.h),
              Text('الموضوع',
                  style:
                      TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500)),
              SizedBox(height: 6.h),
              TextField(
                controller: _subject,
                decoration: const InputDecoration(
                    hintText: 'مثال: اعتراض على نتيجة المزاد'),
              ),
              SizedBox(height: 14.h),
              Text('السبب التفصيلي',
                  style:
                      TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500)),
              SizedBox(height: 6.h),
              TextField(
                controller: _reason,
                maxLines: 4,
                decoration: const InputDecoration(
                    hintText: 'اشرح سبب الاعتراض بالتفصيل...'),
              ),
              SizedBox(height: 18.h),
              BlocBuilder<AppealsCubit, AppealsState>(
                builder: (context, state) => PrimaryButton(
                  label: 'إرسال الاعتراض',
                  icon: Icons.send,
                  isLoading: state.submitting,
                  onPressed: () {
                    if (_subject.text.trim().isEmpty ||
                        _reason.text.trim().isEmpty) {
                      return;
                    }
                    context.read<AppealsCubit>().submit(
                          SubmitAppealParams(
                            subject: _subject.text.trim(),
                            reason: _reason.text.trim(),
                          ),
                        );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
