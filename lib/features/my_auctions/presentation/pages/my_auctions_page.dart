import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:mazayada/l10n/app_localizations.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/widgets/state_views.dart';
import '../cubit/my_auctions_cubit.dart';
import '../widgets/my_auction_tab_bar.dart';
import '../widgets/participation_card.dart';
import '../widgets/participation_labels.dart';

class MyAuctionsPage extends StatelessWidget {
  const MyAuctionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<MyAuctionsCubit>()..load(),
      child: const _MyAuctionsView(),
    );
  }
}

class _MyAuctionsView extends StatelessWidget {
  const _MyAuctionsView();

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(title: Text(t.navMyAuctions)),
      body: BlocBuilder<MyAuctionsCubit, MyAuctionsState>(
        builder: (context, state) {
          return Column(
            children: [
              MyAuctionTabBar(
                selected: state.tab,
                onSelect: context.read<MyAuctionsCubit>().changeTab,
              ),
              Gap(14.h),
              Expanded(child: _Content(state: state)),
            ],
          );
        },
      ),
    );
  }
}

class _Content extends StatelessWidget {
  final MyAuctionsState state;

  const _Content({required this.state});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<MyAuctionsCubit>();
    if (state.loading) return const LoadingView();
    if (state.error != null) {
      return ErrorView(message: state.error!, onRetry: cubit.load);
    }
    if (state.items.isEmpty) {
      return EmptyView(
        message: state.tab.emptyMessage(AppLocalizations.of(context)),
      );
    }
    return ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      itemCount: state.items.length,
      itemBuilder: (_, i) {
        final item = state.items[i];
        return ParticipationCard(
              item: item,
              onTap: () =>
                  context.push('${Routes.auctionDetail}/${item.auctionId}'),
            )
            .animate()
            .fadeIn(duration: 220.ms, delay: (40 * i).ms)
            .slideY(begin: 0.06, end: 0, curve: Curves.easeOut);
      },
    );
  }
}
