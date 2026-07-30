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

/// مواصفة أصل — عنوان ونص، مع النسخ اللغوية للتبديل من العميل.
class AuctionSpec extends Equatable {
  final String title;
  final String body;
  const AuctionSpec({required this.title, required this.body});
  @override
  List<Object?> get props => [title, body];
}

/// فترة المعاينة.
class InspectionWindow extends Equatable {
  final DateTime? start;
  final DateTime? end;
  final String? location;
  final bool isOpen;

  const InspectionWindow({
    this.start,
    this.end,
    this.location,
    this.isOpen = false,
  });

  /// فيه معلومة معاينة تستحق العرض.
  bool get hasData => start != null || end != null || (location?.isNotEmpty ?? false);

  @override
  List<Object?> get props => [start, end, location, isOpen];
}

/// نافذة الطعن بعد إغلاق المزاد.
class AppealWindow extends Equatable {
  final int days;
  final bool isOpen;
  final DateTime? deadline;

  const AppealWindow({this.days = 0, this.isOpen = false, this.deadline});

  @override
  List<Object?> get props => [days, isOpen, deadline];
}

/// تفاصيل الإيجار — بترجع **فقط** لما يكون auction_type = LEASE
/// (المفتاح بيختفي من الـ JSON أصلًا في غير كده).
class LeaseTerms extends Equatable {
  final int? durationYears;
  final int? renewals;
  const LeaseTerms({this.durationYears, this.renewals});
  @override
  List<Object?> get props => [durationYears, renewals];
}

/// مرجع وثيقة (كراس الشروط / وثيقة الترسية) — الملف نفسه بيتجاب من
/// endpoint التحميل.
class AuctionDocumentRef extends Equatable {
  final String? id;
  final String? title;
  final String? downloadUrl;
  const AuctionDocumentRef({this.id, this.title, this.downloadUrl});
  @override
  List<Object?> get props => [id, title, downloadUrl];
}

/// كيان المزاد في الـ domain — مستقل تمامًا عن شكل الـ JSON.
/// يطابق `AuctionResource` (شاشة التفاصيل)، مش `AuctionListResource`.
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
  final Money? bookPrice;
  final bool hasBookAccess; // هل اشترى المستخدم كراس الشروط مسبقًا
  final int bidCount;
  final int secondsRemaining;
  final bool isLive;
  final bool isBiddable;
  final bool hasEnded;
  final String? winnerAlias;
  final Money? finalPrice;
  final bool requiresCommerceRegister;
  final String? conditionBookDownloadUrl;

  // ===== حقول التفاصيل الإضافية =====
  final String? assetClass; // MOVABLE / REAL_ESTATE / CUSTOMS
  final String? condition;
  final int? unitCount;
  final String? conditionTerms;
  final String? awardTerms;
  final List<AuctionSpec> specifications;
  final NamedRef? commune;
  final double? latitude;
  final double? longitude;
  final String? mayorName;
  final String? videoUrl;
  final double depositPercent;
  final DateTime? startTime;
  final DateTime? endTime;
  final int extensionCount;
  final int? maxExtensions;
  final InspectionWindow inspection;
  final AppealWindow appealWindow;
  final LeaseTerms? lease; // LEASE فقط
  final bool requiresNewspaperAnnouncement;
  final AuctionDocumentRef? conditionBook;
  final AuctionDocumentRef? awardDocument;

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
    this.bookPrice,
    this.hasBookAccess = false,
    this.bidCount = 0,
    this.secondsRemaining = 0,
    this.isLive = false,
    this.isBiddable = false,
    this.hasEnded = false,
    this.winnerAlias,
    this.finalPrice,
    this.requiresCommerceRegister = false,
    this.conditionBookDownloadUrl,
    this.assetClass,
    this.condition,
    this.unitCount,
    this.conditionTerms,
    this.awardTerms,
    this.specifications = const [],
    this.commune,
    this.latitude,
    this.longitude,
    this.mayorName,
    this.videoUrl,
    this.depositPercent = 0,
    this.startTime,
    this.endTime,
    this.extensionCount = 0,
    this.maxExtensions,
    this.inspection = const InspectionWindow(),
    this.appealWindow = const AppealWindow(),
    this.lease,
    this.requiresNewspaperAnnouncement = false,
    this.conditionBook,
    this.awardDocument,
  });

  /// إحداثيات صالحة للفتح في الخرائط.
  bool get hasCoordinates => latitude != null && longitude != null;

  /// المزاد اتمدّ على الأقل مرة (يستحق عرض عدّاد التمديد).
  bool get wasExtended => extensionCount > 0;

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
