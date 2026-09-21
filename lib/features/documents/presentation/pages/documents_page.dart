import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:mazayada/l10n/app_localizations.dart';
import 'package:open_filex/open_filex.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/widgets/state_views.dart';
import '../../domain/entities/document.dart';
import '../cubit/documents_cubit.dart';
import '../widgets/document_card.dart';
import '../widgets/document_filter_sheet.dart';
import '../widgets/documents_summary_tiles.dart';

/// مكتبة وثائق المستخدم — كل PDF مولّد ومرتبط بمزاد شارك فيه.
class DocumentsPage extends StatelessWidget {
  const DocumentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<DocumentsCubit>()..init(),
      child: const _DocumentsView(),
    );
  }
}

class _DocumentsView extends StatelessWidget {
  const _DocumentsView();

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(t.docsTitle),
        actions: [
          BlocBuilder<DocumentsCubit, DocumentsState>(
            buildWhen: (a, b) => a.filters != b.filters,
            builder: (context, state) => _FilterButton(
              count: state.filters.activeCount,
              onTap: () => _openFilters(context, state),
            ),
          ),
        ],
      ),
      body: BlocConsumer<DocumentsCubit, DocumentsState>(
        listenWhen: (a, b) => b.error != null && a.error != b.error,
        listener: (context, state) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.error!),
              backgroundColor: AppColors.danger,
            ),
          );
        },
        builder: (context, state) => _Body(state: state),
      ),
    );
  }

  void _openFilters(BuildContext context, DocumentsState state) {
    final cubit = context.read<DocumentsCubit>();
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (_) => DocumentFilterSheet(
        initial: state.filters,
        options: state.filterOptions,
        onApply: cubit.applyFilters,
      ),
    );
  }
}

class _Body extends StatelessWidget {
  final DocumentsState state;
  const _Body({required this.state});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    final cubit = context.read<DocumentsCubit>();

    if (state.loading && state.items.isEmpty) return const LoadingView();
    if (state.error != null && state.items.isEmpty) {
      return ErrorView(message: state.error!, onRetry: cubit.refresh);
    }

    return RefreshIndicator(
      color: AppColors.primary,
      onRefresh: cubit.refresh,
      child: NotificationListener<ScrollNotification>(
        onNotification: (n) {
          // تحميل الصفحة التالية قبل الوصول للنهاية بقليل.
          if (n.metrics.pixels >= n.metrics.maxScrollExtent - 320) {
            cubit.loadMore();
          }
          return false;
        },
        child: ListView(
          padding: EdgeInsets.all(16.w),
          children: [
            _SearchField(onChanged: cubit.search),
            Gap(12.h),
            if (state.summary != null) ...[
              DocumentsSummaryTiles(summary: state.summary!),
              Gap(14.h),
            ],
            if (state.isEmpty)
              Padding(
                padding: EdgeInsets.only(top: 40.h),
                child: EmptyView(
                  message: state.filters.isActive
                      ? t.docsNoResults
                      : t.docsEmpty,
                  icon: Icons.folder_open_outlined,
                ),
              )
            else ...[
              for (final (i, doc) in state.items.indexed)
                DocumentCard(
                      document: doc,
                      isDownloading: state.downloadingId == doc.id,
                      onDownload: () => _download(context, doc),
                      onVerify: doc.isVerifiable
                          ? () => _verify(doc)
                          : null,
                    )
                    .animate()
                    .fadeIn(duration: 200.ms, delay: (30 * (i % 12)).ms)
                    .slideY(begin: 0.05, end: 0, curve: Curves.easeOut),
              if (state.loading)
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.h),
                  child: const Center(child: CircularProgressIndicator()),
                ),
            ],
          ],
        ),
      ),
    );
  }

  /// ينزّل الوثيقة بالتوكن ثم يفتحها بعارض النظام.
  Future<void> _download(BuildContext context, UserDocument doc) async {
    final t = AppLocalizations.of(context);
    final messenger = ScaffoldMessenger.of(context);
    final path = await context.read<DocumentsCubit>().download(doc);
    if (path == null) return; // الخطأ اتعرض من الـ listener

    final result = await OpenFilex.open(path);
    if (result.type != ResultType.done) {
      messenger.showSnackBar(SnackBar(content: Text(t.docsCannotOpen)));
    }
  }

  /// صفحة التحقق عامة (HTML موقّع) — تُفتح في المتصفح بدون مصادقة.
  Future<void> _verify(UserDocument doc) async {
    final uri = Uri.tryParse(doc.verifyUrl ?? '');
    if (uri == null) return;
    await launchUrl(uri, mode: LaunchMode.externalApplication);
  }
}

class _SearchField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const _SearchField({required this.onChanged});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: t.docsSearchHint,
        prefixIcon: Icon(Icons.search, size: 19.sp, color: AppColors.textHint),
        filled: true,
        fillColor: AppColors.white,
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
    return Stack(
      alignment: Alignment.center,
      children: [
        IconButton(
          onPressed: onTap,
          icon: const Icon(Icons.tune),
        ),
        if (count > 0)
          PositionedDirectional(
            top: 8.h,
            // عدّاد الفلاتر بيقعد في الركن الخارجي للأيقونة — شمال في
            // العربي ويمين في اللاتيني، مش مثبّت على اليمين.
            end: 6.w,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 1.h),
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Text(
                '$count',
                style: TextStyle(
                  fontSize: 9.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.white,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
