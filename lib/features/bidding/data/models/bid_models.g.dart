// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bid_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BidEntryModelImpl _$$BidEntryModelImplFromJson(Map<String, dynamic> json) =>
    _$BidEntryModelImpl(
      amount: json['amount'] == null
          ? null
          : MoneyModel.fromJson(json['amount'] as Map<String, dynamic>),
      bidderAlias: json['bidder_alias'] as String?,
      bidTime: json['bid_time'] as String?,
    );

Map<String, dynamic> _$$BidEntryModelImplToJson(_$BidEntryModelImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'bidder_alias': instance.bidderAlias,
      'bid_time': instance.bidTime,
    };

_$PriceSnapshotModelImpl _$$PriceSnapshotModelImplFromJson(
  Map<String, dynamic> json,
) => _$PriceSnapshotModelImpl(
  currentPrice: (json['current_price'] as num?)?.toInt() ?? 0,
  currentPriceFormatted: json['current_price_formatted'] as String? ?? '',
  bidCount: (json['bid_count'] as num?)?.toInt() ?? 0,
  status: json['status'] as String? ?? '',
  isBiddable: json['is_biddable'] as bool? ?? false,
  hasEnded: json['has_ended'] as bool? ?? false,
);

Map<String, dynamic> _$$PriceSnapshotModelImplToJson(
  _$PriceSnapshotModelImpl instance,
) => <String, dynamic>{
  'current_price': instance.currentPrice,
  'current_price_formatted': instance.currentPriceFormatted,
  'bid_count': instance.bidCount,
  'status': instance.status,
  'is_biddable': instance.isBiddable,
  'has_ended': instance.hasEnded,
};
