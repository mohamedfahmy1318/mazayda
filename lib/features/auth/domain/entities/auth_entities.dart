import 'package:equatable/equatable.dart';

/// زوج التوكنات اللي بيرجّعه السيرفر بعد login/verify-otp/refresh.
class AuthTokens extends Equatable {
  final String accessToken;
  final String refreshToken;

  const AuthTokens({required this.accessToken, required this.refreshToken});

  @override
  List<Object?> get props => [accessToken, refreshToken];
}

/// بيانات المستخدم الأساسية (من /auth/me أو ضمن الردود).
class AuthUser extends Equatable {
  final String id;
  final String? firstNameAr;
  final String? lastNameAr;
  final String? email;
  final String? phone;
  final String kycStatus; // PENDING / UNDER_REVIEW / VERIFIED / REJECTED

  const AuthUser({
    required this.id,
    this.firstNameAr,
    this.lastNameAr,
    this.email,
    this.phone,
    this.kycStatus = 'PENDING',
  });

  String get fullName =>
      [firstNameAr, lastNameAr].where((e) => e != null).join(' ');

  bool get isVerified => kycStatus == 'VERIFIED';

  @override
  List<Object?> get props => [id, email, phone, kycStatus];
}

/// نتيجة التسجيل — بيرجّع user_id فقط (مش بيعمل login).
/// المستخدم بعدها يروح لشاشة الـ OTP.
class RegisterResult extends Equatable {
  final String userId;

  const RegisterResult({required this.userId});

  @override
  List<Object?> get props => [userId];
}

/// نتيجة login — إما توكنات، أو إشارة إن البريد محتاج تأكيد.
class LoginResult extends Equatable {
  final AuthTokens? tokens;
  final bool needsEmailVerification;
  final String? userId; // لو محتاج تأكيد، نستخدمه في شاشة الـ OTP

  const LoginResult({
    this.tokens,
    this.needsEmailVerification = false,
    this.userId,
  });

  @override
  List<Object?> get props => [tokens, needsEmailVerification, userId];
}
