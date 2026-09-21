import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/utils/money_format.dart';
import '../../../auctions/data/models/money_model.dart';
import '../../domain/entities/bid_entities.dart';

part 'bid_models.freezed.dart';
part 'bid_models.g.dart';

/// عنصر مزايدة — يطابق {amount:{...}, bidder_alias, bid_time}.
@freezed
abstract class BidEntryModel with _$BidEntryModel {
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
abstract class PriceSnapshotModel with _$PriceSnapshotModel {
  const PriceSnapshotModel._();

  const factory PriceSnapshotModel({
    @JsonKey(name: 'current_price') @Default(0) int currentPrice,
    @JsonKey(name: 'current_price_formatted')
    @Default('')
    String currentPriceFormatted,
    @JsonKey(name: 'bid_count') @Default(0) int bidCount,
    @Default('') String status,
    @JsonKey(name: 'end_time') String? endTime,
    @JsonKey(name: 'is_biddable') @Default(false) bool isBiddable,
    @JsonKey(name: 'has_ended') @Default(false) bool hasEnded,
    // الحد الأدنى للمزايدة حسب القطاع (تعديلات 11 · 12) — بيغيب لو الباك
    // لسه مانزّلهوش، وساعتها بنرجع لقاعدة «أي زيادة فوق السعر الحالي».
    @JsonKey(name: 'min_bid') MoneyModel? minBid,
    @JsonKey(name: 'min_increment_percent') dynamic minIncrementPercent,
  }) = _PriceSnapshotModel;

  factory PriceSnapshotModel.fromJson(Map<String, dynamic> json) =>
      _$PriceSnapshotModelFromJson(json);

  PriceSnapshot toEntity() => PriceSnapshot(
    currentPrice: currentPrice,
    currentPriceFormatted: bidiSafeNumber(currentPriceFormatted),
    bidCount: bidCount,
    status: status,
    isBiddable: isBiddable,
    hasEnded: hasEnded,
    endTime: DateTime.tryParse(endTime ?? ''),
    minBid: minBid?.amount,
    minBidFormatted: minBid == null
        ? null
        : bidiSafeNumber(minBid!.toEntity().formatted),
    minIncrementPercent: switch (minIncrementPercent) {
      final num n => n.toDouble(),
      final String v => double.tryParse(v),
      _ => null,
    },
  );
}
