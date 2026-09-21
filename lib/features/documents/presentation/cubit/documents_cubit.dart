import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/usecase/usecase.dart';
import '../../domain/entities/document.dart';
import '../../domain/entities/document_filter_options.dart';
import '../../domain/entities/document_filters.dart';
import '../../domain/usecases/documents_usecases.dart';

part 'documents_cubit.freezed.dart';

@freezed
abstract class DocumentsState with _$DocumentsState {
  const DocumentsState._();

  const factory DocumentsState({
    @Default(false) bool loading,
    @Default(<UserDocument>[]) List<UserDocument> items,
    DocumentsSummary? summary,
    @Default(DocumentFilters()) DocumentFilters filters,

    /// خيارات الفلاتر المتاحة للمستخدم ده (BE-4) — فاضية لو النداء فشل
    /// أو المستخدم ملوش وثائق، وساعتها ما نعرضش الشرائح دي أصلًا.
    @Default(DocumentFilterOptions.empty) DocumentFilterOptions filterOptions,
    @Default(1) int page,
    @Default(false) bool hasMore,
    @Default(0) int total,
    String? error,

    /// معرّف الوثيقة اللي بتتنزّل حاليًا (عشان نعرض مؤشّر عليها هي بس).
    String? downloadingId,
  }) = _DocumentsState;

  bool get isEmpty => !loading && items.isEmpty && error == null;
}

@injectable
class DocumentsCubit extends Cubit<DocumentsState> {
  final GetDocuments _getDocuments;
  final GetDocumentsSummary _getSummary;
  final DownloadDocument _download;
  final GetDocumentFilterOptions _getFilterOptions;

  Timer? _debounce;

  DocumentsCubit(
    this._getDocuments,
    this._getSummary,
    this._download,
    this._getFilterOptions,
  ) : super(const DocumentsState());

  Future<void> init() async {
    await Future.wait([
      _fetch(page: 1, reset: true),
      _loadSummary(),
      _loadFilterOptions(),
    ]);
  }

  Future<void> refresh() async {
    // الخيارات مشتقّة من وثائق المستخدم، فبتتغيّر لما وثيقة جديدة تنزل.
    await Future.wait([
      _fetch(page: 1, reset: true),
      _loadSummary(),
      _loadFilterOptions(),
    ]);
  }

  /// فشل تحميل الخيارات ما يوقّفش الشاشة — الشرائح بتختفي وبس.
  Future<void> _loadFilterOptions() async {
    final res = await _getFilterOptions(const NoParams());
    if (isClosed) return;
    res.fold(
      (_) {},
      (options) => emit(state.copyWith(filterOptions: options)),
    );
  }

  /// بحث نصّي — بتأخير بسيط عشان ما نضربش الـ API مع كل حرف.
  void search(String q) {
    _debounce?.cancel();
    emit(state.copyWith(filters: state.filters.copyWith(search: q)));
    _debounce = Timer(const Duration(milliseconds: 350), () {
      if (!isClosed) _fetch(page: 1, reset: true);
    });
  }

  void applyFilters(DocumentFilters filters) {
    emit(state.copyWith(filters: filters));
    _fetch(page: 1, reset: true);
  }

  void setSort(DocumentSort sort) =>
      applyFilters(state.filters.copyWith(sort: sort));

  void clearFilters() => applyFilters(
    // نحافظ على نص البحث — المستخدم عادةً عايز يمسح الفلاتر مش بحثه.
    DocumentFilters(search: state.filters.search),
  );

  Future<void> loadMore() {
    if (state.loading || !state.hasMore) return Future.value();
    return _fetch(page: state.page + 1, reset: false);
  }

  /// ينزّل الوثيقة ويرجّع المسار المحلي — الواجهة هي اللي بتفتحه.
  Future<String?> download(UserDocument doc) async {
    emit(state.copyWith(downloadingId: doc.id, error: null));
    final res = await _download(
      DownloadDocumentParams(id: doc.id, title: doc.title),
    );
    if (isClosed) return null;

    return res.fold(
      (f) {
        emit(state.copyWith(downloadingId: null, error: f.message));
        return null;
      },
      (path) {
        emit(state.copyWith(downloadingId: null));
        return path;
      },
    );
  }

  Future<void> _loadSummary() async {
    final res = await _getSummary(const NoParams());
    if (isClosed) return;
    // فشل الإحصاءات ما يمنعش عرض القائمة — بنتجاهله بصمت.
    res.fold((_) {}, (s) => emit(state.copyWith(summary: s)));
  }

  Future<void> _fetch({required int page, required bool reset}) async {
    if (isClosed) return;
    emit(state.copyWith(loading: true, error: null));

    final res = await _getDocuments(
      GetDocumentsParams(filters: state.filters, page: page),
    );

    if (isClosed) return;
    res.fold(
      (f) => emit(state.copyWith(loading: false, error: f.message)),
      (paged) => emit(
        state.copyWith(
          loading: false,
          items: reset ? paged.items : [...state.items, ...paged.items],
          hasMore: paged.hasMore,
          page: paged.currentPage,
          total: paged.total,
        ),
      ),
    );
  }

  @override
  Future<void> close() {
    _debounce?.cancel();
    return super.close();
  }
}
