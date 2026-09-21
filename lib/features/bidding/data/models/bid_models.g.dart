// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bid_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BidEntryModel _$BidEntryModelFromJson(Map<String, dynamic> json) =>
    _BidEntryModel(
      amount: json['amount'] == null
          ? null
          : MoneyModel.fromJson(json['amount'] as Map<String, dynamic>),
      bidderAlias: json['bidder_alias'] as String?,
      bidTime: json['bid_time'] as String?,
    );

Map<String, dynamic> _$BidEntryModelToJson(_BidEntryModel instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'bidder_alias': instance.bidderAlias,
      'bid_time': instance.bidTime,
    };

_PriceSnapshotModel _$PriceSnapshotModelFromJson(Map<String, dynamic> json) =>
    _PriceSnapshotModel(
      currentPrice: (json['current_price'] as num?)?.toInt() ?? 0,
      currentPriceFormatted: json['current_price_formatted'] as String? ?? '',
      bidCount: (json['bid_count'] as num?)?.toInt() ?? 0,
      status: json['status'] as String? ?? '',
      endTime: json['end_time'] as String?,
      isBiddable: json['is_biddable'] as bool? ?? false,
      hasEnded: json['has_ended'] as bool? ?? false,
      minBid: json['min_bid'] == null
          ? null
          : MoneyModel.fromJson(json['min_bid'] as Map<String, dynamic>),
      minIncrementPercent: json['min_increment_percent'],
    );

Map<String, dynamic> _$PriceSnapshotModelToJson(_PriceSnapshotModel instance) =>
    <String, dynamic>{
      'current_price': instance.currentPrice,
      'current_price_formatted': instance.currentPriceFormatted,
      'bid_count': instance.bidCount,
      'status': instance.status,
      'end_time': instance.endTime,
      'is_biddable': instance.isBiddable,
      'has_ended': instance.hasEnded,
      'min_bid': instance.minBid,
      'min_increment_percent': instance.minIncrementPercent,
    };
