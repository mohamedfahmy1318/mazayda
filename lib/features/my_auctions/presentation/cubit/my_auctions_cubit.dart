import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../domain/entities/participation.dart';
import '../../domain/repositories/my_auctions_repository.dart';

part 'my_auctions_cubit.freezed.dart';

@freezed
class MyAuctionsState with _$MyAuctionsState {
  const factory MyAuctionsState({
    @Default(MyAuctionTab.active) MyAuctionTab tab,
    @Default(true) bool loading,
    @Default(<Participation>[]) List<Participation> items,
    String? error,
  }) = _MyAuctionsState;
}

@injectable
class MyAuctionsCubit extends Cubit<MyAuctionsState> {
  final GetMyAuctions _getMyAuctions;
  MyAuctionsCubit(this._getMyAuctions) : super(const MyAuctionsState());

  Future<void> changeTab(MyAuctionTab tab) async {
    emit(state.copyWith(tab: tab, loading: true, error: null, items: []));
    final result = await _getMyAuctions(tab);
    result.fold(
      (f) => emit(state.copyWith(loading: false, error: f.message)),
      (items) => emit(state.copyWith(loading: false, items: items)),
    );
  }

  /// تحميل التبويب الحالي (أو الافتراضي).
  Future<void> load() => changeTab(state.tab);
}
