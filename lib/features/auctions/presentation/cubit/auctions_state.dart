part of 'auctions_cubit.dart';

@freezed
class AuctionsState with _$AuctionsState {
  const factory AuctionsState({
    @Default(false) bool loading,
    @Default(<Auction>[]) List<Auction> auctions,
    @Default(false) bool hasMore,
    @Default(1) int page,
    String? error,
    // فلاتر نشطة
    @Default('') String query,
    String? statusFilter,
    String? typeFilter,
    int? wilayaId,
    String? wilayaName,
  }) = _AuctionsState;
}
