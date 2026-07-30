import 'package:equatable/equatable.dart';
import 'auction.dart';

/// طعن قائم من نفس المستخدم على هذا المزاد.
class ViewerAppealRef extends Equatable {
  final String id;
  final String status; // PENDING | APPROVED | REJECTED
  final String? statusLabel; // نص جاهز مترجَم من السيرفر

  const ViewerAppealRef({
    required this.id,
    required this.status,
    this.statusLabel,
  });

  @override
  List<Object?> get props => [id, status];
}

/// سياق المستخدم الحالي بالنسبة لمزاد معيّن — من `meta.viewer`.
///
/// **بيرجع `null` للزائر** (مش مسجّل دخول) — `viewerContext()` في الباك
/// بترجع null لو مفيش user.
///
/// ده **العقد الرسمي للتحكّم في الأزرار**: بنقرأ منه مباشرة بدل ما نعيد
/// اشتقاق الصلاحيات من الحالات الخام. رفض الصلاحية من السيرفر بييجي كـ 422
/// برسالة عربية من غير كود يتقري، فالمستخدم لازم ما يوصلش للرفض ده أصلًا.
class AuctionViewer extends Equatable {
  final bool canBid;
  final bool isParticipant;
  final bool hasCommerceRegister;

  /// المزاد بيتطلّب سجل تجاري والمستخدم مالوش — بيمنع **أي** دفع على المزاد
  /// ده، بما فيه شراء كراس الشروط (مش بس الكفالة).
  final bool commerceRegisterBlocked;

  final bool hasBookAccess;
  final bool bookPurchased;
  final bool depositPaid;
  final bool isWinner;
  final bool canAppeal;
  final ViewerAppealRef? existingAppeal;
  final bool hasFinalPayment;

  const AuctionViewer({
    this.canBid = false,
    this.isParticipant = false,
    this.hasCommerceRegister = false,
    this.commerceRegisterBlocked = false,
    this.hasBookAccess = false,
    this.bookPurchased = false,
    this.depositPaid = false,
    this.isWinner = false,
    this.canAppeal = false,
    this.existingAppeal,
    this.hasFinalPayment = false,
  });

  @override
  List<Object?> get props => [
    canBid,
    isParticipant,
    commerceRegisterBlocked,
    hasBookAccess,
    isParticipant,
    isWinner,
    canAppeal,
    hasFinalPayment,
  ];
}

/// تفاصيل المزاد + سياق المستخدم — نتيجة `GET /auctions/{id}`.
class AuctionDetail extends Equatable {
  final Auction auction;

  /// null للزائر غير المسجّل.
  final AuctionViewer? viewer;

  const AuctionDetail({required this.auction, this.viewer});

  @override
  List<Object?> get props => [auction, viewer];
}

/// الخطوة التالية المتاحة للمستخدم على المزاد.
enum AuctionCta {
  login,
  needsCommerceRegister,
  needsKyc,
  buyBook,
  register,
  bid,
  finalPayment,
  finalPaymentDone,
  appeal,
  trackAppeal,

  /// مسجّل دخول لكن **سياق المستخدم غير متاح** من الـ API.
  /// بنعرض مدخل مشاركة عام والسيرفر هو اللي يفرض القيود الحقيقية.
  participate,

  none,
}

/// أعلام الحساب اللي بنحتاجها لما `meta.viewer` ما يجيش.
/// بتتقرا من `/profile` — وهو مسار مصادَق فبيشتغل صح دايمًا.
class ViewerAccountFlags {
  final bool canBid;
  final bool isKycComplete;
  final bool hasCommerceRegister;
  final bool isBlacklisted;

  const ViewerAccountFlags({
    this.canBid = false,
    this.isKycComplete = false,
    this.hasCommerceRegister = false,
    this.isBlacklisted = false,
  });
}

/// سلّم الأزرار — أول شرط يتحقّق هو اللي بيتعرض (نفس ترتيب الويب).
/// دالة نقية عشان تفضل قابلة للاختبار ومستقلة عن الواجهة.
///
/// **مهم:** حالة تسجيل الدخول بتتحدد من [isAuthenticated] (حالة التطبيق)
/// **مش** من `viewer == null`. السبب إن مسارات المزادات في الـ API عامة
/// ومش بتشغّل حارس Sanctum، فـ `meta.viewer` بيرجع null **لكل** مستخدمي
/// الموبايل حتى المسجّلين. لو اعتمدنا عليه كنا هنرمي مستخدم موثّق على
/// شاشة تسجيل الدخول (راجع طلب BE-15).
AuctionCta ctaFor(
  Auction auction,
  AuctionViewer? viewer, {
  required bool isAuthenticated,
  ViewerAccountFlags? account,
}) {
  if (!isAuthenticated) return AuctionCta.login;

  final ended = auction.hasEnded || auction.status == AuctionStatus.closed;

  // ===== سياق المستخدم متاح: السلّم الكامل والدقيق =====
  if (viewer != null) {
    if (viewer.commerceRegisterBlocked) {
      return AuctionCta.needsCommerceRegister;
    }
    if (!viewer.canBid) return AuctionCta.needsKyc;

    if (ended) {
      if (viewer.isWinner) {
        return viewer.hasFinalPayment
            ? AuctionCta.finalPaymentDone
            : AuctionCta.finalPayment;
      }
      if (viewer.existingAppeal != null) return AuctionCta.trackAppeal;
      if (viewer.canAppeal) return AuctionCta.appeal;
      return AuctionCta.none;
    }

    if (!viewer.hasBookAccess) return AuctionCta.buyBook;
    if (!viewer.isParticipant) return AuctionCta.register;
    if (auction.isBiddable) return AuctionCta.bid;
    return AuctionCta.none;
  }

  // ===== وضع محدود: مسجّل دخول بس من غير سياق للمزاد =====
  // بنطبّق بوابات الحساب اللي نعرفها من البروفايل، والباقي (هل شارك؟ هل
  // اشترى الكراس؟) بيفرضه السيرفر عند أول محاولة.
  if (account != null) {
    if (account.isBlacklisted || !account.canBid) return AuctionCta.needsKyc;
    if (auction.requiresCommerceRegister && !account.hasCommerceRegister) {
      return AuctionCta.needsCommerceRegister;
    }
  }

  if (ended) return AuctionCta.none;
  return AuctionCta.participate;
}
