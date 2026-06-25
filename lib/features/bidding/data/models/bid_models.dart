import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../auctions/data/models/money_model.dart';
import '../../domain/entities/bid_entities.dart';

part 'bid_models.freezed.dart';
part 'bid_models.g.dart';

/// عنصر مزايدة — يطابق {amount:{...}, bidder_alias, bid_time}.
@freezed
class BidEntryModel with _$BidEntryModel {
  const BidEntryModel._();

  const factory BidEntryModel({
    MoneyModel? amount,
    @JsonKey(name: 'bidder_alias') String? bidderAlias,
    @JsonKey(name: 'bid_time') String? bidTime,
  }) = _BidEntryModel;

  factory BidEntryModel.fromJson(Map<String, dynamic> json) =>
      _$BidEntryModelFromJson(json);

  BidEntry toEntity() => BidEntry(
    amount: (amount ?? const MoneyModel()).toEntity(),
    bidderAlias: bidderAlias ?? '—',
    bidTime: DateTime.tryParse(bidTime ?? '') ?? DateTime.now(),
  );
}

/// لقطة السعر — يطابق ردّ /price.
@freezed
class PriceSnapshotModel with _$PriceSnapshotModel {
  const PriceSnapshotModel._();

  const factory PriceSnapshotModel({
    @JsonKey(name: 'current_price') @Default(0) int currentPrice,
    @JsonKey(name: 'current_price_formatted')
    @Default('')
    String currentPriceFormatted,
    @JsonKey(name: 'bid_count') @Default(0) int bidCount,
    @Default('') String status,
    @JsonKey(name: 'is_biddable') @Default(false) bool isBiddable,
    @JsonKey(name: 'has_ended') @Default(false) bool hasEnded,
  }) = _PriceSnapshotModel;

  factory PriceSnapshotModel.fromJson(Map<String, dynamic> json) =>
      _$PriceSnapshotModelFromJson(json);

  PriceSnapshot toEntity() => PriceSnapshot(
    currentPrice: currentPrice,
    currentPriceFormatted: currentPriceFormatted,
    bidCount: bidCount,
    status: status,
    isBiddable: isBiddable,
    hasEnded: hasEnded,
  );
}
