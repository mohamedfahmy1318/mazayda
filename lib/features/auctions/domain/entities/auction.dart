import 'package:equatable/equatable.dart';
import 'auction_session.dart';
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

/// مرجع وثيقة (دفتر الشروط / وثيقة الترسية) — الملف نفسه بيتجاب من
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
  final bool hasBookAccess; // هل اشترى المستخدم دفتر الشروط مسبقًا
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

  /// وصل المشاركة — بيتولّد بعد شراء دفتر الشروط، وفيه بيانات المزايدة
  /// والمواطن ورقم العملية (تعديلات العميل 21 و22). `null` قبل الشراء.
  final AuctionDocumentRef? participationReceipt;

  /// وصل نتيجة المزايدة — بيتاح بعد الإقفال لكل مشارك (تعديل العميل رقم 23).
  final AuctionDocumentRef? resultDocument;

  // ===== الجلسات وإعادة الجدولة (تعديلات العميل 5 · 7 · 8 · 9 · 10) =====

  /// ترقيم الجلسة الحالية + سجل الجلسات السابقة.
  /// `null` لو الباك لسه مانزّلش الحقل — والواجهة بتخفي الأقسام دي ساعتها.
  final AuctionSessionInfo? session;

  // ===== القطاع والحد الأدنى للمزايدة (تعديلات العميل 11 · 12) =====

  /// القطاع اللي حدّدته الجهة المنظمة.
  final AuctionSector? sector;

  /// أقل مبلغ مزايدة مقبول **محسوب من السيرفر** (السعر الحالي + نسبة القطاع).
  ///
  /// بنعرضه ونمنع الإرسال تحته، بس القرار النهائي يفضل للسيرفر: لو الحقل ده
  /// ما جاش بنرجع لقاعدة «أي زيادة فوق السعر الحالي» زي الأول.
  final Money? minBid;

  // ===== أولوية النشر (تعديلات العميل 13–17 — الجانب المرئي منها) =====

  /// مستوى النشر اللي دفعت الجهة مقابله — بيحدد وسم «مميّزة».
  final PublicationPriority publicationPriority;

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
    this.participationReceipt,
    this.resultDocument,
    this.session,
    this.sector,
    this.minBid,
    this.publicationPriority = PublicationPriority.unknown,
  });

  /// إحداثيات صالحة للفتح في الخرائط.
  bool get hasCoordinates => latitude != null && longitude != null;

  /// المزاد اتمدّ على الأقل مرة (يستحق عرض عدّاد التمديد).
  bool get wasExtended => extensionCount > 0;

  /// المزاد منتهي **دلوقتي** — علم السيرفر أو عدّاد الإقفال، أيهما أسبق.
  ///
  /// `hasEnded` بيتحسب في السيرفر لحظة الطلب، فبيقدم لو المستخدم فاضل
  /// فاتح صفحة التفاصيل والمزاد قفل وهو قاعد. المقارنة بـ [endTime] بتقفل
  /// الفجوة دي فورًا (تعديل العميل رقم 3 — تعطيل «شراء دفتر الشروط» بمجرد
  /// انتهاء وقت المزايدة)، والواجهة بتعيد القراءة من السيرفر عند نفس
  /// اللحظة فالحقيقة النهائية تفضل للباك.
  /// أقل مبلغ مزايدة مقبول بالدينار.
  ///
  /// السيرفر هو المصدر (نسبة القطاع بتتحسب هناك). من غيره بنرجع لأضعف
  /// قاعدة ممكنة — أي زيادة فوق السعر الحالي — والسيرفر بيرفض الباقي بـ422.
  int get minBidAmount => minBid?.amount ?? (currentPrice.amount + 1);

  bool get isEndedNow {
    if (hasEnded || status == AuctionStatus.closed) return true;
    final end = endTime;
    return end != null && !end.isAfter(DateTime.now());
  }

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
