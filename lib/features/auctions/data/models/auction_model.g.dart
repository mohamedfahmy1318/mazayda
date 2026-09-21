// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NamedRefModel _$NamedRefModelFromJson(Map<String, dynamic> json) =>
    _NamedRefModel(id: json['id'], name: json['name'] as String?);

Map<String, dynamic> _$NamedRefModelToJson(_NamedRefModel instance) =>
    <String, dynamic>{'id': instance.id, 'name': instance.name};

_AuctionSpecModel _$AuctionSpecModelFromJson(Map<String, dynamic> json) =>
    _AuctionSpecModel(
      title: json['title'] as String?,
      body: json['body'] as String?,
    );

Map<String, dynamic> _$AuctionSpecModelToJson(_AuctionSpecModel instance) =>
    <String, dynamic>{'title': instance.title, 'body': instance.body};

_InspectionModel _$InspectionModelFromJson(Map<String, dynamic> json) =>
    _InspectionModel(
      start: json['start'] as String?,
      end: json['end'] as String?,
      location: json['location'] as String?,
      isOpen: json['is_open'] as bool? ?? false,
    );

Map<String, dynamic> _$InspectionModelToJson(_InspectionModel instance) =>
    <String, dynamic>{
      'start': instance.start,
      'end': instance.end,
      'location': instance.location,
      'is_open': instance.isOpen,
    };

_AppealWindowModel _$AppealWindowModelFromJson(Map<String, dynamic> json) =>
    _AppealWindowModel(
      days: (json['days'] as num?)?.toInt() ?? 0,
      isOpen: json['is_open'] as bool? ?? false,
      deadline: json['deadline'] as String?,
    );

Map<String, dynamic> _$AppealWindowModelToJson(_AppealWindowModel instance) =>
    <String, dynamic>{
      'days': instance.days,
      'is_open': instance.isOpen,
      'deadline': instance.deadline,
    };

_LeaseModel _$LeaseModelFromJson(Map<String, dynamic> json) => _LeaseModel(
  durationYears: (json['duration_years'] as num?)?.toInt(),
  renewals: (json['renewals'] as num?)?.toInt(),
);

Map<String, dynamic> _$LeaseModelToJson(_LeaseModel instance) =>
    <String, dynamic>{
      'duration_years': instance.durationYears,
      'renewals': instance.renewals,
    };

_AuctionSessionModel _$AuctionSessionModelFromJson(Map<String, dynamic> json) =>
    _AuctionSessionModel(
      round: (json['round'] as num?)?.toInt() ?? 1,
      code: json['code'] as String?,
      startTime: json['start_time'] as String?,
      endTime: json['end_time'] as String?,
      openingPrice: json['opening_price'] == null
          ? null
          : MoneyModel.fromJson(json['opening_price'] as Map<String, dynamic>),
      reductionPercent: json['reduction_percent'],
      status: json['status'] as String?,
      resultLabel: json['result_label'] as String?,
    );

Map<String, dynamic> _$AuctionSessionModelToJson(
  _AuctionSessionModel instance,
) => <String, dynamic>{
  'round': instance.round,
  'code': instance.code,
  'start_time': instance.startTime,
  'end_time': instance.endTime,
  'opening_price': instance.openingPrice,
  'reduction_percent': instance.reductionPercent,
  'status': instance.status,
  'result_label': instance.resultLabel,
};

_AuctionSessionInfoModel _$AuctionSessionInfoModelFromJson(
  Map<String, dynamic> json,
) => _AuctionSessionInfoModel(
  round: (json['round'] as num?)?.toInt() ?? 1,
  code: json['code'] as String?,
  startTime: json['start_time'] as String?,
  endTime: json['end_time'] as String?,
  openingPrice: json['opening_price'] == null
      ? null
      : MoneyModel.fromJson(json['opening_price'] as Map<String, dynamic>),
  reductionPercent: json['reduction_percent'],
  rescheduleCount: (json['reschedule_count'] as num?)?.toInt() ?? 0,
  originalOpeningPrice: json['original_opening_price'] == null
      ? null
      : MoneyModel.fromJson(
          json['original_opening_price'] as Map<String, dynamic>,
        ),
  history:
      (json['history'] as List<dynamic>?)
          ?.map((e) => AuctionSessionModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <AuctionSessionModel>[],
);

Map<String, dynamic> _$AuctionSessionInfoModelToJson(
  _AuctionSessionInfoModel instance,
) => <String, dynamic>{
  'round': instance.round,
  'code': instance.code,
  'start_time': instance.startTime,
  'end_time': instance.endTime,
  'opening_price': instance.openingPrice,
  'reduction_percent': instance.reductionPercent,
  'reschedule_count': instance.rescheduleCount,
  'original_opening_price': instance.originalOpeningPrice,
  'history': instance.history,
};

_AuctionSectorModel _$AuctionSectorModelFromJson(Map<String, dynamic> json) =>
    _AuctionSectorModel(
      id: json['id'],
      name: json['name'] as String?,
      minIncrementPercent: json['min_increment_percent'],
    );

Map<String, dynamic> _$AuctionSectorModelToJson(_AuctionSectorModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'min_increment_percent': instance.minIncrementPercent,
    };

_AuctionModel _$AuctionModelFromJson(
  Map<String, dynamic> json,
) => _AuctionModel(
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
  participationReceipt: json['participation_receipt'] == null
      ? null
      : ConditionBookModel.fromJson(
          json['participation_receipt'] as Map<String, dynamic>,
        ),
  resultDocument: json['result_document'] == null
      ? null
      : ConditionBookModel.fromJson(
          json['result_document'] as Map<String, dynamic>,
        ),
  session: json['session'] == null
      ? null
      : AuctionSessionInfoModel.fromJson(
          json['session'] as Map<String, dynamic>,
        ),
  sector: json['sector'] == null
      ? null
      : AuctionSectorModel.fromJson(json['sector'] as Map<String, dynamic>),
  minBid: json['min_bid'] == null
      ? null
      : MoneyModel.fromJson(json['min_bid'] as Map<String, dynamic>),
  publicationPriority: json['publication_priority'] as String?,
);

Map<String, dynamic> _$AuctionModelToJson(_AuctionModel instance) =>
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
      'participation_receipt': instance.participationReceipt,
      'result_document': instance.resultDocument,
      'session': instance.session,
      'sector': instance.sector,
      'min_bid': instance.minBid,
      'publication_priority': instance.publicationPriority,
    };

_WilayaRefModel _$WilayaRefModelFromJson(Map<String, dynamic> json) =>
    _WilayaRefModel(
      id: json['id'],
      code: json['code'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$WilayaRefModelToJson(_WilayaRefModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'name': instance.name,
    };

_ConditionBookModel _$ConditionBookModelFromJson(Map<String, dynamic> json) =>
    _ConditionBookModel(
      id: json['id'] as String?,
      title: json['title'] as String?,
      downloadUrl: json['download_url'] as String?,
    );

Map<String, dynamic> _$ConditionBookModelToJson(_ConditionBookModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'download_url': instance.downloadUrl,
    };
