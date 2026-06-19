// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NamedRefModelImpl _$$NamedRefModelImplFromJson(Map<String, dynamic> json) =>
    _$NamedRefModelImpl(id: json['id'], name: json['name'] as String?);

Map<String, dynamic> _$$NamedRefModelImplToJson(_$NamedRefModelImpl instance) =>
    <String, dynamic>{'id': instance.id, 'name': instance.name};

_$AuctionModelImpl _$$AuctionModelImplFromJson(Map<String, dynamic> json) =>
    _$AuctionModelImpl(
      id: json['id'] as String,
      title: json['title'] as String?,
      description: json['description'] as String?,
      status: json['status'] as String?,
      auctionType: json['auction_type'] as String?,
      coverPhotoUrl: json['cover_photo_url'] as String?,
      photos:
          (json['photos'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      category: json['category'] == null
          ? null
          : NamedRefModel.fromJson(json['category'] as Map<String, dynamic>),
      entity: json['entity'] == null
          ? null
          : NamedRefModel.fromJson(json['entity'] as Map<String, dynamic>),
      wilaya: json['wilaya'] == null
          ? null
          : WilayaRefModel.fromJson(json['wilaya'] as Map<String, dynamic>),
      assetLocation: json['asset_location'] as String?,
      openingPrice: json['opening_price'] == null
          ? null
          : MoneyModel.fromJson(json['opening_price'] as Map<String, dynamic>),
      currentPrice: json['current_price'] == null
          ? null
          : MoneyModel.fromJson(json['current_price'] as Map<String, dynamic>),
      depositAmount: json['deposit_amount'] == null
          ? null
          : MoneyModel.fromJson(json['deposit_amount'] as Map<String, dynamic>),
      entryFee: json['entry_fee'] == null
          ? null
          : MoneyModel.fromJson(json['entry_fee'] as Map<String, dynamic>),
      bookPrice: json['book_price'] == null
          ? null
          : MoneyModel.fromJson(json['book_price'] as Map<String, dynamic>),
      bidCount: (json['bid_count'] as num?)?.toInt() ?? 0,
      secondsRemaining: (json['seconds_remaining'] as num?)?.toInt() ?? 0,
      isLive: json['is_live'] as bool? ?? false,
      isBiddable: json['is_biddable'] as bool? ?? false,
      hasEnded: json['has_ended'] as bool? ?? false,
      winnerAlias: json['winner_alias'] as String?,
      finalPrice: json['final_price'] == null
          ? null
          : MoneyModel.fromJson(json['final_price'] as Map<String, dynamic>),
      requiresCommerceRegister:
          json['requires_commerce_register'] as bool? ?? false,
      conditionBook: json['condition_book'] == null
          ? null
          : ConditionBookModel.fromJson(
              json['condition_book'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$$AuctionModelImplToJson(_$AuctionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'status': instance.status,
      'auction_type': instance.auctionType,
      'cover_photo_url': instance.coverPhotoUrl,
      'photos': instance.photos,
      'category': instance.category,
      'entity': instance.entity,
      'wilaya': instance.wilaya,
      'asset_location': instance.assetLocation,
      'opening_price': instance.openingPrice,
      'current_price': instance.currentPrice,
      'deposit_amount': instance.depositAmount,
      'entry_fee': instance.entryFee,
      'book_price': instance.bookPrice,
      'bid_count': instance.bidCount,
      'seconds_remaining': instance.secondsRemaining,
      'is_live': instance.isLive,
      'is_biddable': instance.isBiddable,
      'has_ended': instance.hasEnded,
      'winner_alias': instance.winnerAlias,
      'final_price': instance.finalPrice,
      'requires_commerce_register': instance.requiresCommerceRegister,
      'condition_book': instance.conditionBook,
    };

_$WilayaRefModelImpl _$$WilayaRefModelImplFromJson(Map<String, dynamic> json) =>
    _$WilayaRefModelImpl(
      id: json['id'],
      code: json['code'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$WilayaRefModelImplToJson(
  _$WilayaRefModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'code': instance.code,
  'name': instance.name,
};

_$ConditionBookModelImpl _$$ConditionBookModelImplFromJson(
  Map<String, dynamic> json,
) => _$ConditionBookModelImpl(
  id: json['id'] as String?,
  title: json['title'] as String?,
  downloadUrl: json['download_url'] as String?,
);

Map<String, dynamic> _$$ConditionBookModelImplToJson(
  _$ConditionBookModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'download_url': instance.downloadUrl,
};
