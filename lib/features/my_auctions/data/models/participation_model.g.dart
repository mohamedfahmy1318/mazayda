// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'participation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ParticipationModelImpl _$$ParticipationModelImplFromJson(
  Map<String, dynamic> json,
) => _$ParticipationModelImpl(
  auctionId: json['auction_id'] as String?,
  id: json['id'] as String?,
  title: json['title'] as String?,
  coverPhotoUrl: json['cover_photo_url'] as String?,
  currentPrice: json['current_price'] == null
      ? null
      : MoneyModel.fromJson(json['current_price'] as Map<String, dynamic>),
  finalPrice: json['final_price'] == null
      ? null
      : MoneyModel.fromJson(json['final_price'] as Map<String, dynamic>),
  openingPrice: json['opening_price'] == null
      ? null
      : MoneyModel.fromJson(json['opening_price'] as Map<String, dynamic>),
  myBid: json['my_bid'] == null
      ? null
      : MoneyModel.fromJson(json['my_bid'] as Map<String, dynamic>),
  status: json['status'] as String?,
  isWinning: json['is_winning'] as bool?,
);

Map<String, dynamic> _$$ParticipationModelImplToJson(
  _$ParticipationModelImpl instance,
) => <String, dynamic>{
  'auction_id': instance.auctionId,
  'id': instance.id,
  'title': instance.title,
  'cover_photo_url': instance.coverPhotoUrl,
  'current_price': instance.currentPrice,
  'final_price': instance.finalPrice,
  'opening_price': instance.openingPrice,
  'my_bid': instance.myBid,
  'status': instance.status,
  'is_winning': instance.isWinning,
};
