import 'package:equatable/equatable.dart';
import 'money.dart';

/// حالة المزاد كما يرجّعها الـ API.
enum AuctionStatus {
  published,
  active,
  extended,
  closed,
  cancelled,
  draft,
  unknown,
}

extension AuctionStatusX on AuctionStatus {
  static AuctionStatus fromApi(String? v) => switch (v) {
    'PUBLISHED' => AuctionStatus.published,
    'ACTIVE' => AuctionStatus.active,
    'EXTENDED' => AuctionStatus.extended,
    'CLOSED' => AuctionStatus.closed,
    'CANCELLED' => AuctionStatus.cancelled,
    'DRAFT' => AuctionStatus.draft,
    _ => AuctionStatus.unknown,
  };
}

/// مرجع مبسّط (فئة / جهة / ولاية).
class NamedRef extends Equatable {
  final String id;
  final String name;
  const NamedRef({required this.id, required this.name});
  @override
  List<Object?> get props => [id, name];
}

/// كيان المزاد في الـ domain — مستقل تمامًا عن شكل الـ JSON.
class Auction extends Equatable {
  final String id;
  final String title;
  final String? description;
  final AuctionStatus status;
  final String auctionType; // SALE / LEASE
  final String? coverPhotoUrl;
  final List<String> photos;
  final NamedRef? category;
  final NamedRef? entity;
  final String? wilayaName;
  final String? assetLocation;
  final Money openingPrice;
  final Money currentPrice;
  final Money depositAmount;
  final Money entryFee;
  final Money? bookPrice;
  final int bidCount;
  final int secondsRemaining;
  final bool isLive;
  final bool isBiddable;
  final bool hasEnded;
  final String? winnerAlias;
  final Money? finalPrice;
  final bool requiresCommerceRegister;
  final String? conditionBookDownloadUrl;

  const Auction({
    required this.id,
    required this.title,
    this.description,
    required this.status,
    required this.auctionType,
    this.coverPhotoUrl,
    this.photos = const [],
    this.category,
    this.entity,
    this.wilayaName,
    this.assetLocation,
    required this.openingPrice,
    required this.currentPrice,
    required this.depositAmount,
    required this.entryFee,
    this.bookPrice,
    this.bidCount = 0,
    this.secondsRemaining = 0,
    this.isLive = false,
    this.isBiddable = false,
    this.hasEnded = false,
    this.winnerAlias,
    this.finalPrice,
    this.requiresCommerceRegister = false,
    this.conditionBookDownloadUrl,
  });

  @override
  List<Object?> get props => [
    id,
    title,
    status,
    currentPrice,
    bidCount,
    secondsRemaining,
    isLive,
    isBiddable,
    hasEnded,
  ];
}
