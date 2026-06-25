import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mazayada/l10n/app_localizations.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/widgets/state_views.dart';
import '../../../kyc/domain/entities/kyc_entities.dart';
import '../cubit/auctions_cubit.dart';
import '../widgets/auction_card.dart';
import '../widgets/auction_filter_options.dart';

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
      builder: (_) => _FilterSheet(
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
                    _SearchField(
                      controller: _searchCtrl,
                      hasText: state.query.isNotEmpty,
                      onChanged: cubit.search,
                      onClear: () {
                        _searchCtrl.clear();
                        cubit.search('');
                      },
                    ),
                    SizedBox(height: 4.h),
                    _StatusStrip(
                      current: state.statusFilter,
                      filterCount: cubit.activeFilterCount,
                      onSelectStatus: cubit.setStatus,
                      onOpenFilters: () => _openFilterSheet(cubit),
                    ),
                  ],
                ),
              ),
              // — شريط السياق (نتائج + فلاتر نشطة) —
              _ContextBar(
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
      return _NoResults(onReset: cubit.clearFilters);
    }
    return RefreshIndicator(
      color: AppColors.primary,
      onRefresh: cubit.refresh,
      child: ListView.builder(
        controller: _scroll,
        padding: EdgeInsets.fromLTRB(16.w, 12.h, 16.w, 16.h),
        itemCount: state.auctions.length + 1,
        itemBuilder: (_, i) {
          if (i == state.auctions.length) return _Footer(state: state);
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

// ═══════════════════════════════════════════════════════════════════════════
// Search field
// ═══════════════════════════════════════════════════════════════════════════

class _SearchField extends StatelessWidget {
  final TextEditingController controller;
  final bool hasText;
  final ValueChanged<String> onChanged;
  final VoidCallback onClear;

  const _SearchField({
    required this.controller,
    required this.hasText,
    required this.onChanged,
    required this.onClear,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(16.w, 12.h, 16.w, 0),
      child: SizedBox(
        height: 46.h,
        child: TextField(
          controller: controller,
          textDirection: TextDirection.rtl,
          textAlignVertical: TextAlignVertical.center,
          style: TextStyle(fontSize: 14.sp, color: AppColors.textPrimary),
          decoration: InputDecoration(
            hintText: AppLocalizations.of(context).searchAuctionHint,
            hintStyle: TextStyle(fontSize: 13.sp, color: AppColors.textHint),
            prefixIcon: Icon(
              Icons.search_rounded,
              size: 22.sp,
              color: AppColors.textHint,
            ),
            suffixIcon: hasText
                ? IconButton(
                    icon: Icon(
                      Icons.close_rounded,
                      size: 18.sp,
                      color: AppColors.textSecondary,
                    ),
                    onPressed: onClear,
                  )
                : null,
            filled: true,
            fillColor: AppColors.background,
            isDense: true,
            contentPadding: EdgeInsets.zero,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(13.r),
              borderSide: BorderSide.none,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(13.r),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(13.r),
              borderSide: const BorderSide(
                color: AppColors.primary,
                width: 1.3,
              ),
            ),
          ),
          onChanged: onChanged,
        ),
      ),
    );
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// Status strip (pinned filter button + scrolling status pills)
// ═══════════════════════════════════════════════════════════════════════════

class _StatusStrip extends StatelessWidget {
  final String? current;
  final int filterCount;
  final ValueChanged<String?> onSelectStatus;
  final VoidCallback onOpenFilters;

  const _StatusStrip({
    required this.current,
    required this.filterCount,
    required this.onSelectStatus,
    required this.onOpenFilters,
  });

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    return SizedBox(
      height: 50.h,
      child: Row(
        children: [
          // زر التصفية (ثابت)
          Padding(
            padding: EdgeInsets.only(right: 16.w, left: 4.w),
            child: _FilterButton(count: filterCount, onTap: onOpenFilters),
          ),
          // شيبس الحالة (قابلة للتمرير)
          Expanded(
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsetsDirectional.only(end: 16.w),
              itemCount: auctionStatusKeys.length,
              separatorBuilder: (_, __) => SizedBox(width: 8.w),
              itemBuilder: (_, i) {
                final key = auctionStatusKeys[i];
                return Center(
                  child: _Pill(
                    label: auctionStatusFilterLabel(key, t),
                    selected: current == key,
                    onTap: () => onSelectStatus(key),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _FilterButton extends StatelessWidget {
  final int count;
  final VoidCallback onTap;

  const _FilterButton({required this.count, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final active = count > 0;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 36.h,
        padding: EdgeInsets.symmetric(horizontal: 14.w),
        decoration: BoxDecoration(
          color: active ? AppColors.primary : AppColors.background,
          borderRadius: BorderRadius.circular(20.r),
          border: Border.all(
            color: active ? AppColors.primary : AppColors.border,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.tune_rounded,
              size: 17.sp,
              color: active ? AppColors.white : AppColors.textSecondary,
            ),
            SizedBox(width: 6.w),
            Text(
              AppLocalizations.of(context).filter,
              style: TextStyle(
                fontSize: 12.5.sp,
                fontWeight: FontWeight.w600,
                color: active ? AppColors.white : AppColors.textSecondary,
              ),
            ),
            if (active) ...[
              SizedBox(width: 6.w),
              Container(
                constraints: BoxConstraints(minWidth: 18.w),
                height: 18.w,
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(9.w),
                ),
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    '$count',
                    style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColors.primary,
                      height: 1,
                    ),
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class _Pill extends StatelessWidget {
  final String label;
  final bool selected;
  final VoidCallback onTap;

  const _Pill({
    required this.label,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 160),
        curve: Curves.easeOut,
        height: 36.h,
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        decoration: BoxDecoration(
          color: selected ? AppColors.primary : AppColors.background,
          borderRadius: BorderRadius.circular(20.r),
          border: Border.all(
            color: selected ? AppColors.primary : AppColors.border,
          ),
        ),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 12.5.sp,
            fontWeight: selected ? FontWeight.w600 : FontWeight.w400,
            color: selected ? AppColors.white : AppColors.textSecondary,
          ),
        ),
      ),
    );
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// Context bar (results count + active secondary filters + clear)
// ═══════════════════════════════════════════════════════════════════════════

class _ContextBar extends StatelessWidget {
  final bool visible;
  final int count;
  final bool hasMore;
  final String? typeLabel;
  final String? wilayaLabel;
  final String query;
  final VoidCallback onClearType;
  final VoidCallback onClearWilaya;
  final VoidCallback onClearAll;

  const _ContextBar({
    required this.visible,
    required this.count,
    required this.hasMore,
    required this.typeLabel,
    required this.wilayaLabel,
    required this.query,
    required this.onClearType,
    required this.onClearWilaya,
    required this.onClearAll,
  });

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    return AnimatedSize(
      duration: const Duration(milliseconds: 180),
      curve: Curves.easeOut,
      alignment: Alignment.topCenter,
      child: !visible
          ? const SizedBox(width: double.infinity)
          : Padding(
              padding: EdgeInsets.fromLTRB(16.w, 10.h, 12.w, 2.h),
              child: Row(
                children: [
                  // عدد النتائج
                  Text(
                    t.auctionsCount('$count${hasMore ? '+' : ''}'),
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textSecondary,
                    ),
                  ),
                  SizedBox(width: 10.w),
                  // الفلاتر النشطة (قابلة للحذف)
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          if (typeLabel != null)
                            _RemovableTag(
                              label: typeLabel!,
                              onRemove: onClearType,
                            ),
                          if (wilayaLabel != null)
                            _RemovableTag(
                              label: wilayaLabel!,
                              onRemove: onClearWilaya,
                            ),
                        ],
                      ),
                    ),
                  ),
                  // مسح الكل
                  TextButton(
                    style: TextButton.styleFrom(
                      minimumSize: Size.zero,
                      padding: EdgeInsets.symmetric(horizontal: 8.w),
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    onPressed: onClearAll,
                    child: Text(
                      t.clearAll,
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColors.primary,
                      ),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}

class _RemovableTag extends StatelessWidget {
  final String label;
  final VoidCallback onRemove;

  const _RemovableTag({required this.label, required this.onRemove});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(end: 6.w),
      child: Container(
        padding: EdgeInsetsDirectional.only(start: 10.w, end: 5.w),
        height: 28.h,
        decoration: BoxDecoration(
          color: AppColors.primary.withValues(alpha: 0.08),
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              label,
              style: TextStyle(
                fontSize: 11.5.sp,
                fontWeight: FontWeight.w500,
                color: AppColors.primary,
              ),
            ),
            SizedBox(width: 3.w),
            GestureDetector(
              onTap: onRemove,
              child: Icon(
                Icons.close_rounded,
                size: 14.sp,
                color: AppColors.primary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// List footer + empty results
// ═══════════════════════════════════════════════════════════════════════════

class _Footer extends StatelessWidget {
  final AuctionsState state;
  const _Footer({required this.state});

  @override
  Widget build(BuildContext context) {
    if (state.loading) {
      return Padding(
        padding: EdgeInsets.symmetric(vertical: 18.h),
        child: const Center(
          child: SizedBox(
            width: 22,
            height: 22,
            child: CircularProgressIndicator(
              strokeWidth: 2.2,
              color: AppColors.primary,
            ),
          ),
        ),
      );
    }
    if (!state.hasMore && state.auctions.length > 6) {
      return Padding(
        padding: EdgeInsets.symmetric(vertical: 18.h),
        child: Center(
          child: Text(
            AppLocalizations.of(context).noMoreResults,
            style: TextStyle(fontSize: 11.5.sp, color: AppColors.textHint),
          ),
        ),
      );
    }
    return SizedBox(height: 4.h);
  }
}

class _NoResults extends StatelessWidget {
  final VoidCallback onReset;
  const _NoResults({required this.onReset});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.search_off_rounded,
            size: 46.sp,
            color: AppColors.textHint,
          ),
          SizedBox(height: 10.h),
          Text(
            t.noMatchingAuctions,
            style: TextStyle(fontSize: 13.5.sp, color: AppColors.textSecondary),
          ),
          SizedBox(height: 4.h),
          Text(
            t.tryAdjustingFilters,
            style: TextStyle(fontSize: 11.5.sp, color: AppColors.textHint),
          ),
          SizedBox(height: 16.h),
          OutlinedButton.icon(
            onPressed: onReset,
            icon: Icon(Icons.refresh_rounded, size: 17.sp),
            label: Text(t.resetFilters),
            style: OutlinedButton.styleFrom(
              foregroundColor: AppColors.primary,
              side: const BorderSide(color: AppColors.primary),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.r),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// Filter bottom sheet (draft → apply)
// ═══════════════════════════════════════════════════════════════════════════

class _FilterSheet extends StatefulWidget {
  final List<Wilaya> wilayas;
  final String? initialType;
  final int? initialWilayaId;
  final String? initialWilayaName;
  final void Function(String? type, int? wilayaId, String? wilayaName) onApply;

  const _FilterSheet({
    required this.wilayas,
    required this.initialType,
    required this.initialWilayaId,
    required this.initialWilayaName,
    required this.onApply,
  });

  @override
  State<_FilterSheet> createState() => _FilterSheetState();
}

class _FilterSheetState extends State<_FilterSheet> {
  final _wilayaSearch = TextEditingController();
  late String? _type = widget.initialType;
  late int? _wilayaId = widget.initialWilayaId;
  late String? _wilayaName = widget.initialWilayaName;
  late List<Wilaya> _filtered = widget.wilayas;

  @override
  void initState() {
    super.initState();
    _wilayaSearch.addListener(_filterWilayas);
  }

  void _filterWilayas() {
    final q = _wilayaSearch.text.trim().toLowerCase();
    setState(() {
      _filtered = q.isEmpty
          ? widget.wilayas
          : widget.wilayas
                .where((w) => w.name.toLowerCase().contains(q))
                .toList();
    });
  }

  @override
  void dispose() {
    _wilayaSearch.dispose();
    super.dispose();
  }

  void _reset() {
    setState(() {
      _type = null;
      _wilayaId = null;
      _wilayaName = null;
      _wilayaSearch.clear();
      _filtered = widget.wilayas;
    });
  }

  void _apply() {
    widget.onApply(_type, _wilayaId, _wilayaName);
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.78,
      minChildSize: 0.5,
      maxChildSize: 0.92,
      expand: false,
      builder: (context, scrollController) {
        final t = AppLocalizations.of(context);
        return Container(
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(22.r)),
          ),
          child: Column(
            children: [
              // مقبض + عنوان
              SizedBox(height: 10.h),
              Container(
                width: 38.w,
                height: 4.h,
                decoration: BoxDecoration(
                  color: AppColors.borderStrong,
                  borderRadius: BorderRadius.circular(2.r),
                ),
              ),
              SizedBox(height: 14.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Row(
                  children: [
                    Text(
                      t.filterAuctions,
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Icon(
                        Icons.close_rounded,
                        size: 22.sp,
                        color: AppColors.textSecondary,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8.h),
              const Divider(height: 1, color: AppColors.border),
              // المحتوى القابل للتمرير
              Expanded(
                child: ListView(
                  controller: scrollController,
                  padding: EdgeInsets.fromLTRB(20.w, 18.h, 20.w, 8.h),
                  children: [
                    _sectionTitle(t.type),
                    SizedBox(height: 10.h),
                    _Segmented(
                      options: auctionTypeKeys
                          .map((k) => (k, auctionTypeFilterLabel(k, t)))
                          .toList(),
                      selected: _type,
                      onSelect: (v) => setState(() => _type = v),
                    ),
                    SizedBox(height: 22.h),
                    Row(
                      children: [
                        _sectionTitle(t.wilaya),
                        const Spacer(),
                        if (_wilayaId != null)
                          GestureDetector(
                            onTap: () => setState(() {
                              _wilayaId = null;
                              _wilayaName = null;
                            }),
                            child: Text(
                              t.clearSelection,
                              style: TextStyle(
                                fontSize: 11.5.sp,
                                color: AppColors.primary,
                              ),
                            ),
                          ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    _wilayaSearchField(),
                    SizedBox(height: 10.h),
                    _wilayaList(),
                  ],
                ),
              ),
              // الأزرار السفلية
              _footerButtons(),
            ],
          ),
        );
      },
    );
  }

  Widget _sectionTitle(String text) => Text(
    text,
    style: TextStyle(fontSize: 13.5.sp, fontWeight: FontWeight.w700),
  );

  Widget _wilayaSearchField() {
    return SizedBox(
      height: 42.h,
      child: TextField(
        controller: _wilayaSearch,
        style: TextStyle(fontSize: 13.sp),
        decoration: InputDecoration(
          hintText: AppLocalizations.of(context).searchWilayaHint,
          hintStyle: TextStyle(fontSize: 12.sp, color: AppColors.textHint),
          prefixIcon: Icon(
            Icons.search_rounded,
            size: 19.sp,
            color: AppColors.textHint,
          ),
          filled: true,
          fillColor: AppColors.background,
          isDense: true,
          contentPadding: EdgeInsets.zero,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(11.r),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(11.r),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(11.r),
            borderSide: const BorderSide(color: AppColors.primary, width: 1.2),
          ),
        ),
      ),
    );
  }

  Widget _wilayaList() {
    if (widget.wilayas.isEmpty) {
      return Padding(
        padding: EdgeInsets.symmetric(vertical: 20.h),
        child: Center(
          child: Text(
            AppLocalizations.of(context).wilayasLoadError,
            style: TextStyle(fontSize: 12.sp, color: AppColors.textHint),
          ),
        ),
      );
    }
    if (_filtered.isEmpty) {
      return Padding(
        padding: EdgeInsets.symmetric(vertical: 20.h),
        child: Center(
          child: Text(
            AppLocalizations.of(context).noWilayaMatch,
            style: TextStyle(fontSize: 12.sp, color: AppColors.textHint),
          ),
        ),
      );
    }
    return Wrap(
      spacing: 8.w,
      runSpacing: 8.h,
      children: _filtered.map((w) {
        final sel = w.id == _wilayaId;
        return GestureDetector(
          onTap: () => setState(() {
            _wilayaId = w.id;
            _wilayaName = w.name;
          }),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 9.h),
            decoration: BoxDecoration(
              color: sel
                  ? AppColors.primary.withValues(alpha: 0.10)
                  : AppColors.background,
              borderRadius: BorderRadius.circular(11.r),
              border: Border.all(
                color: sel ? AppColors.primary : AppColors.border,
                width: sel ? 1.2 : 1,
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (sel) ...[
                  Icon(
                    Icons.check_rounded,
                    size: 15.sp,
                    color: AppColors.primary,
                  ),
                  SizedBox(width: 4.w),
                ],
                Text(
                  w.name,
                  style: TextStyle(
                    fontSize: 12.5.sp,
                    fontWeight: sel ? FontWeight.w600 : FontWeight.w400,
                    color: sel ? AppColors.primary : AppColors.textSecondary,
                  ),
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }

  Widget _footerButtons() {
    return Container(
      padding: EdgeInsets.fromLTRB(20.w, 12.h, 20.w, 16.h),
      decoration: const BoxDecoration(
        color: AppColors.white,
        border: Border(top: BorderSide(color: AppColors.border, width: 0.5)),
      ),
      child: SafeArea(
        top: false,
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: SizedBox(
                height: 48.h,
                child: OutlinedButton(
                  onPressed: _reset,
                  style: OutlinedButton.styleFrom(
                    foregroundColor: AppColors.textSecondary,
                    side: const BorderSide(color: AppColors.borderStrong),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13.r),
                    ),
                  ),
                  child: Text(
                    AppLocalizations.of(context).reset,
                    style: TextStyle(
                      fontSize: 13.5.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: 10.w),
            Expanded(
              flex: 3,
              child: SizedBox(
                height: 48.h,
                child: ElevatedButton(
                  onPressed: _apply,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    foregroundColor: AppColors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13.r),
                    ),
                  ),
                  child: Text(
                    AppLocalizations.of(context).showResults,
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// Segmented control
// ═══════════════════════════════════════════════════════════════════════════

class _Segmented extends StatelessWidget {
  final List<(String?, String)> options;
  final String? selected;
  final ValueChanged<String?> onSelect;

  const _Segmented({
    required this.options,
    required this.selected,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44.h,
      padding: EdgeInsets.all(4.r),
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(13.r),
      ),
      child: Row(
        children: options.map((o) {
          final sel = o.$1 == selected;
          return Expanded(
            child: GestureDetector(
              onTap: () => onSelect(o.$1),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 160),
                curve: Curves.easeOut,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: sel ? AppColors.white : Colors.transparent,
                  borderRadius: BorderRadius.circular(10.r),
                  boxShadow: sel
                      ? [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.06),
                            blurRadius: 4,
                            offset: const Offset(0, 1),
                          ),
                        ]
                      : null,
                ),
                child: Text(
                  o.$2,
                  style: TextStyle(
                    fontSize: 13.sp,
                    fontWeight: sel ? FontWeight.w700 : FontWeight.w400,
                    color: sel ? AppColors.primary : AppColors.textSecondary,
                  ),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
