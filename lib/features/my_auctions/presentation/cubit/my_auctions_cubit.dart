import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../auctions/domain/entities/auction_list_item.dart';
import '../../domain/entities/my_auctions_result.dart';
import '../../domain/usecases/get_my_auctions.dart';

part 'my_auctions_cubit.freezed.dart';

@freezed
class MyAuctionsState with _$MyAuctionsState {
  const factory MyAuctionsState({
    // `all` هو الافتراضي: التبويبات مناظير مش تقسيم حصري، و`active` لوحده
    // بيطلع فاضي لمستخدم كل مشاركاته مقفولة — أول انطباع غلط.
    @Default(MyAuctionTab.all) MyAuctionTab tab,
    @Default(true) bool loading,
    @Default(<AuctionListItem>[]) List<AuctionListItem> items,
    /// أعداد كل التبويبات — بتيجي مع كل طلب في meta.counts.
    @Default(MyAuctionCounts.empty) MyAuctionCounts counts,
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
    if (isClosed) return;
    result.fold(
      (f) => emit(state.copyWith(loading: false, error: f.message)),
      (res) => emit(
        state.copyWith(
          loading: false,
          items: res.items,
          tab: res.tab,
          counts: res.counts,
        ),
      ),
    );
  }

  /// تحميل التبويب الحالي (أو الافتراضي).
  Future<void> load() => changeTab(state.tab);
}
