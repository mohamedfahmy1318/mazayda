import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mazayada/l10n/app_localizations.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/widgets/list_entrance_animation.dart';
import '../../../../core/widgets/primary_button.dart';
import '../../../../core/widgets/state_views.dart';
import '../cubit/appeals_cubit.dart';
import '../widgets/appeal_card.dart';
import '../widgets/new_appeal_sheet.dart';

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
    final t = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(title: Text(t.appealsTitle)),
      body: BlocConsumer<AppealsCubit, AppealsState>(
        // نعرض الإشعار مرة واحدة فقط عند أول انتقال لحالة "تم الإرسال"،
        // وإلا تكرّر الـ snackbar مع كل emit أثناء إعادة التحميل.
        listenWhen: (p, c) => c.submitted && !p.submitted,
        listener: (context, state) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(t.appealSubmitted)));
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
                    ? EmptyView(
                        message: t.appealsEmpty,
                        icon: Icons.gavel_outlined,
                      )
                    : ListView.builder(
                        padding: EdgeInsets.all(16.w),
                        itemCount: state.items.length,
                        itemBuilder: (_, i) =>
                            AppealCard(state.items[i]).staggeredEntrance(i),
                      ),
              ),
              Padding(
                padding: EdgeInsets.all(16.w),
                child: PrimaryButton(
                  label: t.newAppeal,
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
      builder: (_) =>
          BlocProvider.value(value: cubit, child: const NewAppealSheet()),
    );
  }
}
