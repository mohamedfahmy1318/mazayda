import 'package:equatable/equatable.dart';
import 'auction.dart';
import 'money.dart';

/// عنصر مزاد في القوائم — يطابق `AuctionListResource` بالظبط (18 مفتاح).
///
/// ⚠️ متعمّد إنه **منفصل** عن [Auction] (كيان التفاصيل): الـ list resource
/// مافيهوش `deposit_amount` ولا `book_price` ولا `photos` ولا `description`
/// ولا `has_book_access` ولا `requires_commerce_register` ولا `final_price`.
/// لو استخدمنا كيان التفاصيل هنا، الحقول دي هتترجم لأصفار/false بشكل صامت
/// وتظهر للمستخدم كمعلومة غلط.
///
/// بيرجع من: `GET /auctions`، `GET /auctions/search`، `GET /my-auctions`،
/// و`dashboard.won_auctions`.
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

  // ===== حقول اختيارية — التطبيق جاهز ليها قبل ما الباك يبعتها =====

  /// المزاد يتطلّب سجلاً تجاريًا (طلب BE-1).
  /// `null` = الباك لسه مبيبعتوش → ما نعرضش شارة أصلًا بدل ما ندّعي «لا».
  final bool? requiresCommerceRegister;

  /// أعلى مزايدة للمستخدم نفسه — بترجع في `/my-auctions` فقط (طلب BE-3).
  final Money? myHighestBid;

  /// المستخدم صاحب أعلى مزايدة حاليًا (طلب BE-3).
  /// `null` = غير معروف → **ما ندّعيش** فوز ولا تجاوز.
  final bool? isWinning;

  /// دفع الكفالة (طلب BE-3).
  final bool? depositPaid;

  /// حالة الدفع النهائي للفائز (طلب BE-3).
  final String? finalPaymentStatus;

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
    this.myHighestBid,
    this.isWinning,
    this.depositPaid,
    this.finalPaymentStatus,
  });

  String? get wilayaName => wilaya?.name;

  /// عندنا بيانات مشاركة حقيقية نقدر نعرضها (BE-3 نزل).
  bool get hasParticipationState => isWinning != null || myHighestBid != null;

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
