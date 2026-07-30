// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auction_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuctionListModelImpl _$$AuctionListModelImplFromJson(
  Map<String, dynamic> json,
) => _$AuctionListModelImpl(
  id: json['id'] as String,
  title: json['title'] as String?,
  coverPhotoUrl: json['cover_photo_url'] as String?,
  status: json['status'] as String?,
  auctionType: json['auction_type'] as String?,
  assetClass: json['asset_class'] as String?,
  category: json['category'] == null
      ? null
      : NamedRefModel.fromJson(json['category'] as Map<String, dynamic>),
  wilaya: json['wilaya'] == null
      ? null
      : WilayaRefModel.fromJson(json['wilaya'] as Map<String, dynamic>),
  openingPrice: json['opening_price'] == null
      ? null
      : MoneyModel.fromJson(json['opening_price'] as Map<String, dynamic>),
  currentPrice: json['current_price'] == null
      ? null
      : MoneyModel.fromJson(json['current_price'] as Map<String, dynamic>),
  bidCount: (json['bid_count'] as num?)?.toInt() ?? 0,
  startTime: json['start_time'] as String?,
  endTime: json['end_time'] as String?,
  secondsRemaining: (json['seconds_remaining'] as num?)?.toInt() ?? 0,
  isLive: json['is_live'] as bool? ?? false,
  isBiddable: json['is_biddable'] as bool? ?? false,
  hasEnded: json['has_ended'] as bool? ?? false,
  requiresCommerceRegister: json['requires_commerce_register'] as bool?,
  myHighestBid: json['my_highest_bid'] == null
      ? null
      : MoneyModel.fromJson(json['my_highest_bid'] as Map<String, dynamic>),
  isWinning: json['is_winning'] as bool?,
  depositPaid: json['deposit_paid'] as bool?,
  finalPaymentStatus: json['final_payment_status'] as String?,
);

Map<String, dynamic> _$$AuctionListModelImplToJson(
  _$AuctionListModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'cover_photo_url': instance.coverPhotoUrl,
  'status': instance.status,
  'auction_type': instance.auctionType,
  'asset_class': instance.assetClass,
  'category': instance.category,
  'wilaya': instance.wilaya,
  'opening_price': instance.openingPrice,
  'current_price': instance.currentPrice,
  'bid_count': instance.bidCount,
  'start_time': instance.startTime,
  'end_time': instance.endTime,
  'seconds_remaining': instance.secondsRemaining,
  'is_live': instance.isLive,
  'is_biddable': instance.isBiddable,
  'has_ended': instance.hasEnded,
  'requires_commerce_register': instance.requiresCommerceRegister,
  'my_highest_bid': instance.myHighestBid,
  'is_winning': instance.isWinning,
  'deposit_paid': instance.depositPaid,
  'final_payment_status': instance.finalPaymentStatus,
};
