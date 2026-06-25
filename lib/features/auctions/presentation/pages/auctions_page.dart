import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mazayada/l10n/app_localizations.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/widgets/state_views.dart';
import '../cubit/auctions_cubit.dart';
import '../widgets/auction_card.dart';
import '../widgets/auction_filter_options.dart';
import '../widgets/auction_search_field.dart';
import '../widgets/auction_status_strip.dart';
import '../widgets/auction_context_bar.dart';
import '../widgets/auctions_list_states.dart';
import '../widgets/auction_filter_sheet.dart';

class AuctionsPage extends StatelessWidget {
  const AuctionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<AuctionsCubit>()..init(),
      child: const _AuctionsBody(),
    );
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// Body
// ═══════════════════════════════════════════════════════════════════════════

class _AuctionsBody extends StatefulWidget {
  const _AuctionsBody();

  @override
  State<_AuctionsBody> createState() => _AuctionsBodyState();
}

class _AuctionsBodyState extends State<_AuctionsBody> {
  final _searchCtrl = TextEditingController();
  final _scroll = ScrollController();

  @override
  void initState() {
    super.initState();
    _scroll.addListener(_onScroll);
  }

  void _onScroll() {
    if (!mounted) return;
    final pos = _scroll.position;
    if (pos.pixels >= pos.maxScrollExtent - 240) {
      context.read<AuctionsCubit>().loadMore();
    }
  }

  @override
  void dispose() {
    _searchCtrl.dispose();
    _scroll.dispose();
    super.dispose();
  }

  Future<void> _openFilterSheet(AuctionsCubit cubit) async {
    final wilayas = await cubit.fetchWilayas();
    if (!mounted) return;
    final state = cubit.state;
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (_) => AuctionFilterSheet(
        wilayas: wilayas,
        initialType: state.typeFilter,
        initialWilayaId: state.wilayaId,
        initialWilayaName: state.wilayaName,
        onApply: (type, wid, wname) {
          cubit.applyFilters(type: type, wilayaId: wid, wilayaName: wname);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuctionsCubit, AuctionsState>(
      // لو تم مسح البحث من الـ cubit (مسح الكل) نفرّغ حقل النص
      listenWhen: (p, c) => c.query.isEmpty && _searchCtrl.text.isNotEmpty,
      listener: (_, __) => _searchCtrl.clear(),
      builder: (context, state) {
        final t = AppLocalizations.of(context);
        final cubit = context.read<AuctionsCubit>();
        final hasSecondary = state.typeFilter != null || state.wilayaId != null;
        final showContext = hasSecondary || state.query.isNotEmpty;

        return Scaffold(
          backgroundColor: AppColors.background,
          appBar: AppBar(title: Text(t.auctionsTitle), elevation: 0),
          body: Column(
            children: [
              // — رأس البحث والفلاتر (على خلفية بيضاء كبلوك واحد) —
              Container(
                color: AppColors.white,
                padding: EdgeInsets.only(bottom: 10.h),
                child: Column(
                  children: [
                    AuctionSearchField(
                      controller: _searchCtrl,
                      hasText: state.query.isNotEmpty,
                      onChanged: cubit.search,
                      onClear: () {
                        _searchCtrl.clear();
                        cubit.search('');
                      },
                    ),
                    SizedBox(height: 4.h),
                    AuctionStatusStrip(
                      current: state.statusFilter,
                      filterCount: cubit.activeFilterCount,
                      onSelectStatus: cubit.setStatus,
                      onOpenFilters: () => _openFilterSheet(cubit),
                    ),
                  ],
                ),
              ),
              // — شريط السياق (نتائج + فلاتر نشطة) —
              AuctionContextBar(
                visible: showContext,
                count: state.auctions.length,
                hasMore: state.hasMore,
                typeLabel: state.typeFilter == null
                    ? null
                    : auctionTypeFilterLabel(state.typeFilter, t),
                wilayaLabel: state.wilayaName,
                query: state.query,
                onClearType: () => cubit.applyFilters(
                  type: null,
                  wilayaId: state.wilayaId,
                  wilayaName: state.wilayaName,
                ),
                onClearWilaya: () => cubit.applyFilters(
                  type: state.typeFilter,
                  wilayaId: null,
                  wilayaName: null,
                ),
                onClearAll: cubit.clearFilters,
              ),
              // — القائمة —
              Expanded(child: _buildBody(context, cubit, state)),
            ],
          ),
        );
      },
    );
  }

  Widget _buildBody(
    BuildContext context,
    AuctionsCubit cubit,
    AuctionsState state,
  ) {
    if (state.loading && state.auctions.isEmpty) return const LoadingView();
    if (state.error != null && state.auctions.isEmpty) {
      return ErrorView(message: state.error!, onRetry: cubit.refresh);
    }
    if (state.auctions.isEmpty) {
      return AuctionsNoResults(onReset: cubit.clearFilters);
    }
    return RefreshIndicator(
      color: AppColors.primary,
      onRefresh: cubit.refresh,
      child: ListView.builder(
        controller: _scroll,
        padding: EdgeInsets.fromLTRB(16.w, 12.h, 16.w, 16.h),
        itemCount: state.auctions.length + 1,
        itemBuilder: (_, i) {
          if (i == state.auctions.length) {
            return AuctionsListFooter(state: state);
          }
          final a = state.auctions[i];
          return AuctionCard(
            auction: a,
            onTap: () => context.push('${Routes.auctionDetail}/${a.id}'),
          );
        },
      ),
    );
  }
}
