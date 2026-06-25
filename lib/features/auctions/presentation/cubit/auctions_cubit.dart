import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/usecase/usecase.dart';
import '../../../kyc/domain/entities/kyc_entities.dart';
import '../../../kyc/domain/usecases/kyc_usecases.dart';
import '../../domain/entities/auction.dart';
import '../../domain/usecases/get_auctions.dart';

part 'auctions_cubit.freezed.dart';
part 'auctions_state.dart';

@injectable
class AuctionsCubit extends Cubit<AuctionsState> {
  final GetAuctions _getAuctions;
  final GetWilayas _getWilayas;
  Timer? _debounce;

  // الولايات محلية فقط — لا حاجة لتخزينها في الـ state
  List<Wilaya> _wilayas = [];
  bool _wilayasLoaded = false;

  AuctionsCubit(this._getAuctions, this._getWilayas)
    : super(const AuctionsState());

  List<Wilaya> get wilayas => _wilayas;

  void init() {
    emit(state.copyWith(statusFilter: 'ACTIVE'));
    _fetch(page: 1, reset: true);
  }

  void search(String q) {
    _debounce?.cancel();
    emit(state.copyWith(query: q));
    _debounce = Timer(const Duration(milliseconds: 350), () {
      if (isClosed) return;
      _fetch(page: 1, reset: true);
    });
  }

  void setStatus(String? status) {
    emit(state.copyWith(statusFilter: status));
    _fetch(page: 1, reset: true);
  }

  void setType(String? type) {
    emit(state.copyWith(typeFilter: type));
    _fetch(page: 1, reset: true);
  }

  void setWilaya(int? id, String? name) {
    emit(state.copyWith(wilayaId: id, wilayaName: name));
    _fetch(page: 1, reset: true);
  }

  /// يطبّق الفلاتر الثانوية (النوع + الولاية) دفعة واحدة من الـ bottom sheet.
  void applyFilters({String? type, int? wilayaId, String? wilayaName}) {
    emit(
      state.copyWith(
        typeFilter: type,
        wilayaId: wilayaId,
        wilayaName: wilayaName,
      ),
    );
    _fetch(page: 1, reset: true);
  }

  /// عدد الفلاتر الثانوية النشطة (يظهر كـ badge على زر التصفية).
  int get activeFilterCount =>
      (state.typeFilter != null ? 1 : 0) + (state.wilayaId != null ? 1 : 0);

  void clearFilters() {
    emit(
      state.copyWith(
        query: '',
        statusFilter: 'ACTIVE',
        typeFilter: null,
        wilayaId: null,
        wilayaName: null,
      ),
    );
    _fetch(page: 1, reset: true);
  }

  Future<void> refresh() => _fetch(page: 1, reset: true);

  Future<void> loadMore() {
    if (state.loading || !state.hasMore) return Future.value();
    return _fetch(page: state.page + 1, reset: false);
  }

  Future<List<Wilaya>> fetchWilayas() async {
    if (_wilayasLoaded) return _wilayas;
    final res = await _getWilayas(const NoParams());
    if (isClosed) return _wilayas;
    res.fold((_) {}, (list) {
      _wilayas = list;
      _wilayasLoaded = true;
    });
    return _wilayas;
  }

  Future<void> _fetch({required int page, required bool reset}) async {
    if (isClosed) return;
    emit(state.copyWith(loading: true, error: null));

    final result = await _getAuctions(
      GetAuctionsParams(
        query: state.query.isEmpty ? null : state.query,
        status: state.statusFilter,
        type: state.typeFilter,
        wilaya: state.wilayaId,
        page: page,
        perPage: 12,
      ),
    );

    if (isClosed) return;
    result.fold(
      (f) => emit(state.copyWith(loading: false, error: f.message)),
      (items) => emit(
        state.copyWith(
          loading: false,
          auctions: reset ? items : [...state.auctions, ...items],
          hasMore: items.length == 12,
          page: page,
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
