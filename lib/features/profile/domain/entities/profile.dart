import 'package:equatable/equatable.dart';

/// جهة تابع لها المستخدم (بيرجع فقط لما العلاقة محمّلة).
class ProfileEntityRef extends Equatable {
  final String id;
  final String name;

  const ProfileEntityRef({required this.id, required this.name});

  @override
  List<Object?> get props => [id, name];
}

/// الملف الشخصي — يطابق UserResource.
///
/// ملاحظتان مهمتان:
/// 1) مفيش `wilaya_name` في الـ API — الموقع بيرجع كـ `commune_id` رقم فقط.
/// 2) أعلام القدرات (canBid / isKycComplete / hasCommerceRegister /
///    isBlacklisted) هي **عقد التحكّم الرسمي** من الباك — نستخدمها بدل ما
///    نعيد اشتقاق الصلاحيات من الحالات الخام.
class Profile extends Equatable {
  final String id;
  final String? ninMasked; // مخفي جزئيًا
  final String fullName;
  final String? firstNameAr;
  final String? lastNameAr;
  final String? firstNameFr;
  final String? lastNameFr;
  final String? email;
  final String? phone;
  final String? address;
  final int? communeId;
  final String? postalCode;
  final String? profession;
  final String? locale;
  final String? role;

  /// ACTIVE | SUSPENDED | BANNED
  final String? accountStatus;
  final String? accountType;
  final bool isInstitution;
  final ProfileEntityRef? entity;

  /// PENDING | UNDER_REVIEW | COMPLETE | REJECTED | SUSPENDED
  final String kycStatus;

  /// PENDING | APPROVED | REJECTED — أو null لو مقدّمش سجل تجاري أصلًا.
  final String? commercialRegisterStatus;
  final bool hasCommerceRegister;

  final bool emailVerified;
  final bool phoneVerified;
  final String? secretQuestion;
  final bool hasSecretQuestion;

  // أعلام القدرات المحسوبة في السيرفر.
  final bool isKycComplete;
  final bool canBid;
  final bool isPremium;
  final bool isBlacklisted;

  const Profile({
    required this.id,
    this.ninMasked,
    required this.fullName,
    this.firstNameAr,
    this.lastNameAr,
    this.firstNameFr,
    this.lastNameFr,
    this.email,
    this.phone,
    this.address,
    this.communeId,
    this.postalCode,
    this.profession,
    this.locale,
    this.role,
    this.accountStatus,
    this.accountType,
    this.isInstitution = false,
    this.entity,
    this.kycStatus = 'PENDING',
    this.commercialRegisterStatus,
    this.hasCommerceRegister = false,
    this.emailVerified = false,
    this.phoneVerified = false,
    this.secretQuestion,
    this.hasSecretQuestion = false,
    this.isKycComplete = false,
    this.canBid = false,
    this.isPremium = false,
    this.isBlacklisted = false,
  });

  /// الحساب موثّق — نعتمد على علم السيرفر، مش على مقارنة نص الحالة.
  /// (القيمة 'VERIFIED' اللي كانت مستخدمة قبل كده مش موجودة في الباك أصلًا.)
  bool get isVerified => isKycComplete;

  bool get isAccountActive => accountStatus == null || accountStatus == 'ACTIVE';

  @override
  List<Object?> get props => [
    id,
    ninMasked,
    fullName,
    email,
    phone,
    address,
    communeId,
    postalCode,
    profession,
    kycStatus,
    commercialRegisterStatus,
    canBid,
    isKycComplete,
  ];
}
