import 'package:equatable/equatable.dart';
import 'auction.dart';
import 'auction_session.dart';
import 'money.dart';

/// عنصر مزاد في القوائم — يطابق `AuctionListResource` (21 مفتاح).
///
/// ⚠️ متعمّد إنه **منفصل** عن [Auction] (كيان التفاصيل): الـ list resource
/// مافيهوش `deposit_amount` ولا `book_price` ولا `photos` ولا `description`
/// ولا `has_book_access`. لو استخدمنا كيان التفاصيل هنا، الحقول دي هتترجم
/// لأصفار/false بشكل صامت وتظهر للمستخدم كمعلومة غلط.
///
/// بيرجع من: `GET /auctions`، `GET /auctions/search`، `GET /my-auctions`،
/// و`dashboard.won_auctions`. مسار `/my-auctions` بيستخدم `MyAuctionResource`
/// اللي بيورث ده ويزوّد عليه حالة مشاركة المستخدم (الحقول في القسم التاني).
class AuctionListItem extends Equatable {
  final String id;
  final String title;
  final String? coverPhotoUrl;
  final AuctionStatus status;
  final String auctionType; // SALE / LEASE
  final String? assetClass; // MOVABLE / REAL_ESTATE / CUSTOMS
  final NamedRef? category;
  final NamedRef? wilaya;
  final Money openingPrice;
  final Money currentPrice;
  final int bidCount;
  final DateTime? startTime;
  final DateTime? endTime;
  final int secondsRemaining;
  final bool isLive;
  final bool isBiddable;
  final bool hasEnded;

  /// المزاد يتطلّب سجلاً تجاريًا (BE-1 — نزل).
  /// لسه nullable: `null` = مفتاح غايب (رد قديم/كاش) → ما نعرضش شارة أصلًا
  /// بدل ما ندّعي «لا».
  final bool? requiresCommerceRegister;

  /// سعر الرسو النهائي — `null` قبل إقفال المزاد (BE-6).
  final Money? finalPrice;

  /// لحظة الإقفال — `null` قبل الإقفال (BE-6).
  final DateTime? closedAt;

  // ===== حالة مشاركة المستخدم — `MyAuctionResource` فقط (BE-3) =====
  // بتغيب تمامًا في `/auctions` و`dashboard.won_auctions`، فكلها nullable:
  // `null` = «المسار ده مبيرجّعهاش» مش «لا».

  /// أعلى مزايدة للمستخدم نفسه — `null` لو مازايدش.
  final Money? myHighestBid;

  /// المزاد مفتوح: المستخدم صاحب أعلى عرض. المزاد مقفول: هو الفائز.
  final bool? isWinning;

  /// الفائز المعلَن — للمزادات المقفولة بس.
  ///
  /// ⚠️ **ما تعتمدش عليه:** الباك بيحسبه `hasEnded() && is_winning`، و
  /// `hasEnded()` عندهم معناها «الوقت خلص والمزاد لسه مش CLOSED» (حالة
  /// انتقالية) — فبيبقى `false` بالضبط لما المزاد يقفل ويبقى فيه فائز.
  /// النتيجة إنه **دايمًا false** عمليًا. استخدم [isWinnerResolved].
  final bool? isWinner;

  /// دفع الكفالة.
  final bool? depositPaid;

  /// اشترى دفتر الشروط.
  final bool? bookPurchased;

  /// لحظة التسجيل في المزاد.
  final DateTime? registeredAt;

  /// حالة الدفع النهائي للفائز — PENDING | CONFIRMED | FAILED …
  /// `null` = مبدأش دفع نهائي.
  final String? finalPaymentStatus;

  /// رقم الجلسة الحالية (تعديل العميل رقم 7) — بيتعرض كوسم على البطاقة لو
  /// المزايدة اتعاد جدولتها. `null` أو 1 = جلسة أصلية، مافيش وسم.
  final int? sessionRound;

  /// مستوى النشر — بيحدد وسم «مميّزة» (تعديل العميل رقم 15).
  final PublicationPriority publicationPriority;

  const AuctionListItem({
    required this.id,
    required this.title,
    this.coverPhotoUrl,
    required this.status,
    required this.auctionType,
    this.assetClass,
    this.category,
    this.wilaya,
    required this.openingPrice,
    required this.currentPrice,
    this.bidCount = 0,
    this.startTime,
    this.endTime,
    this.secondsRemaining = 0,
    this.isLive = false,
    this.isBiddable = false,
    this.hasEnded = false,
    this.requiresCommerceRegister,
    this.finalPrice,
    this.closedAt,
    this.myHighestBid,
    this.isWinning,
    this.isWinner,
    this.depositPaid,
    this.bookPurchased,
    this.registeredAt,
    this.finalPaymentStatus,
    this.sessionRound,
    this.publicationPriority = PublicationPriority.unknown,
  });

  /// الجلسة دي ناتجة عن إعادة جدولة — تستحق وسم على البطاقة.
  bool get isRescheduled => (sessionRound ?? 1) > 1;

  /// مزايدة منشورة بأولوية — وسم «مميّزة».
  bool get isFeatured => publicationPriority.isFeatured;

  String? get wilayaName => wilaya?.name;

  /// عندنا بيانات مشاركة حقيقية نقدر نعرضها (BE-3).
  bool get hasParticipationState => isWinning != null || myHighestBid != null;

  /// المزاد منتهي فعليًا (مقفول أو الوقت خلص).
  ///
  /// `has_ended` من الباك مش كفاية: عندهم معناها «الوقت خلص ولسه مش CLOSED»
  /// بس، فبترجع false للمزادات المقفولة.
  bool get isOver =>
      hasEnded ||
      status == AuctionStatus.closed ||
      closedAt != null ||
      (endTime != null && endTime!.isBefore(DateTime.now()));

  /// المستخدم هو الفائز — مشتقّ عندنا لأن `is_winner` من الباك مكسور.
  /// راجع [isWinner].
  bool? get isWinnerResolved {
    if (isWinning == null) return null; // المسار مش بيرجّع حالة مشاركة
    if (!isOver) return null; // لسه مفيش فائز
    return isWinning;
  }

  /// الفائز بدأ الدفع النهائي بالفعل.
  bool get hasFinalPayment => finalPaymentStatus != null;

  /// السعر اللي يعبّر عن المزاد: سعر الرسو لو أقفل، وإلا سعر العرض الحالي.
  Money get resultPrice => finalPrice ?? displayPrice;

  /// السعر المعروض في البطاقة: الحالي لو فيه مزايدات، وإلا سعر الافتتاح.
  Money get displayPrice => bidCount > 0 ? currentPrice : openingPrice;

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
