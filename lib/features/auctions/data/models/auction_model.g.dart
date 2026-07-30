// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NamedRefModelImpl _$$NamedRefModelImplFromJson(Map<String, dynamic> json) =>
    _$NamedRefModelImpl(id: json['id'], name: json['name'] as String?);

Map<String, dynamic> _$$NamedRefModelImplToJson(_$NamedRefModelImpl instance) =>
    <String, dynamic>{'id': instance.id, 'name': instance.name};

_$AuctionSpecModelImpl _$$AuctionSpecModelImplFromJson(
  Map<String, dynamic> json,
) => _$AuctionSpecModelImpl(
  title: json['title'] as String?,
  body: json['body'] as String?,
);

Map<String, dynamic> _$$AuctionSpecModelImplToJson(
  _$AuctionSpecModelImpl instance,
) => <String, dynamic>{'title': instance.title, 'body': instance.body};

_$InspectionModelImpl _$$InspectionModelImplFromJson(
  Map<String, dynamic> json,
) => _$InspectionModelImpl(
  start: json['start'] as String?,
  end: json['end'] as String?,
  location: json['location'] as String?,
  isOpen: json['is_open'] as bool? ?? false,
);

Map<String, dynamic> _$$InspectionModelImplToJson(
  _$InspectionModelImpl instance,
) => <String, dynamic>{
  'start': instance.start,
  'end': instance.end,
  'location': instance.location,
  'is_open': instance.isOpen,
};

_$AppealWindowModelImpl _$$AppealWindowModelImplFromJson(
  Map<String, dynamic> json,
) => _$AppealWindowModelImpl(
  days: (json['days'] as num?)?.toInt() ?? 0,
  isOpen: json['is_open'] as bool? ?? false,
  deadline: json['deadline'] as String?,
);

Map<String, dynamic> _$$AppealWindowModelImplToJson(
  _$AppealWindowModelImpl instance,
) => <String, dynamic>{
  'days': instance.days,
  'is_open': instance.isOpen,
  'deadline': instance.deadline,
};

_$LeaseModelImpl _$$LeaseModelImplFromJson(Map<String, dynamic> json) =>
    _$LeaseModelImpl(
      durationYears: (json['duration_years'] as num?)?.toInt(),
      renewals: (json['renewals'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$LeaseModelImplToJson(_$LeaseModelImpl instance) =>
    <String, dynamic>{
      'duration_years': instance.durationYears,
      'renewals': instance.renewals,
    };

_$AuctionModelImpl _$$AuctionModelImplFromJson(
  Map<String, dynamic> json,
) => _$AuctionModelImpl(
  id: json['id'] as String,
  title: json['title'] as String?,
  description: json['description'] as String?,
  status: json['status'] as String?,
  auctionType: json['auction_type'] as String?,
  assetClass: json['asset_class'] as String?,
  condition: json['condition'] as String?,
  unitCount: (json['unit_count'] as num?)?.toInt(),
  conditionTerms: json['condition_terms'] as String?,
  awardTerms: json['award_terms'] as String?,
  specifications:
      (json['specifications'] as List<dynamic>?)
          ?.map((e) => AuctionSpecModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <AuctionSpecModel>[],
  coverPhotoUrl: json['cover_photo_url'] as String?,
  photos:
      (json['photos'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
  videoUrl: json['video_url'] as String?,
  category: json['category'] == null
      ? null
      : NamedRefModel.fromJson(json['category'] as Map<String, dynamic>),
  entity: json['entity'] == null
      ? null
      : NamedRefModel.fromJson(json['entity'] as Map<String, dynamic>),
  wilaya: json['wilaya'] == null
      ? null
      : WilayaRefModel.fromJson(json['wilaya'] as Map<String, dynamic>),
  commune: json['commune'] == null
      ? null
      : NamedRefModel.fromJson(json['commune'] as Map<String, dynamic>),
  assetLocation: json['asset_location'] as String?,
  latitude: json['latitude'],
  longitude: json['longitude'],
  mayorName: json['mayor_name'] as String?,
  openingPrice: json['opening_price'] == null
      ? null
      : MoneyModel.fromJson(json['opening_price'] as Map<String, dynamic>),
  currentPrice: json['current_price'] == null
      ? null
      : MoneyModel.fromJson(json['current_price'] as Map<String, dynamic>),
  depositAmount: json['deposit_amount'] == null
      ? null
      : MoneyModel.fromJson(json['deposit_amount'] as Map<String, dynamic>),
  depositPercent: json['deposit_percent'],
  bookPrice: json['book_price'] == null
      ? null
      : MoneyModel.fromJson(json['book_price'] as Map<String, dynamic>),
  hasBookAccess: json['has_book_access'] as bool? ?? false,
  bidCount: (json['bid_count'] as num?)?.toInt() ?? 0,
  startTime: json['start_time'] as String?,
  endTime: json['end_time'] as String?,
  secondsRemaining: (json['seconds_remaining'] as num?)?.toInt() ?? 0,
  isLive: json['is_live'] as bool? ?? false,
  isBiddable: json['is_biddable'] as bool? ?? false,
  hasEnded: json['has_ended'] as bool? ?? false,
  extensionCount: (json['extension_count'] as num?)?.toInt() ?? 0,
  maxExtensions: (json['max_extensions'] as num?)?.toInt(),
  inspection: json['inspection'] == null
      ? null
      : InspectionModel.fromJson(json['inspection'] as Map<String, dynamic>),
  appealWindow: json['appeal_window'] == null
      ? null
      : AppealWindowModel.fromJson(
          json['appeal_window'] as Map<String, dynamic>,
        ),
  lease: json['lease'] == null
      ? null
      : LeaseModel.fromJson(json['lease'] as Map<String, dynamic>),
  winnerAlias: json['winner_alias'] as String?,
  finalPrice: json['final_price'] == null
      ? null
      : MoneyModel.fromJson(json['final_price'] as Map<String, dynamic>),
  requiresCommerceRegister:
      json['requires_commerce_register'] as bool? ?? false,
  requiresNewspaperAnnouncement:
      json['requires_newspaper_announcement'] as bool? ?? false,
  conditionBook: json['condition_book'] == null
      ? null
      : ConditionBookModel.fromJson(
          json['condition_book'] as Map<String, dynamic>,
        ),
  awardDocument: json['award_document'] == null
      ? null
      : ConditionBookModel.fromJson(
          json['award_document'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$$AuctionModelImplToJson(_$AuctionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'status': instance.status,
      'auction_type': instance.auctionType,
      'asset_class': instance.assetClass,
      'condition': instance.condition,
      'unit_count': instance.unitCount,
      'condition_terms': instance.conditionTerms,
      'award_terms': instance.awardTerms,
      'specifications': instance.specifications,
      'cover_photo_url': instance.coverPhotoUrl,
      'photos': instance.photos,
      'video_url': instance.videoUrl,
      'category': instance.category,
      'entity': instance.entity,
      'wilaya': instance.wilaya,
      'commune': instance.commune,
      'asset_location': instance.assetLocation,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'mayor_name': instance.mayorName,
      'opening_price': instance.openingPrice,
      'current_price': instance.currentPrice,
      'deposit_amount': instance.depositAmount,
      'deposit_percent': instance.depositPercent,
      'book_price': instance.bookPrice,
      'has_book_access': instance.hasBookAccess,
      'bid_count': instance.bidCount,
      'start_time': instance.startTime,
      'end_time': instance.endTime,
      'seconds_remaining': instance.secondsRemaining,
      'is_live': instance.isLive,
      'is_biddable': instance.isBiddable,
      'has_ended': instance.hasEnded,
      'extension_count': instance.extensionCount,
      'max_extensions': instance.maxExtensions,
      'inspection': instance.inspection,
      'appeal_window': instance.appealWindow,
      'lease': instance.lease,
      'winner_alias': instance.winnerAlias,
      'final_price': instance.finalPrice,
      'requires_commerce_register': instance.requiresCommerceRegister,
      'requires_newspaper_announcement': instance.requiresNewspaperAnnouncement,
      'condition_book': instance.conditionBook,
      'award_document': instance.awardDocument,
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
