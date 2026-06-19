import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';
import '../entities/auth_entities.dart';

/// عقد الـ auth repository.
abstract class AuthRepository {
  /// تسجيل حساب جديد — يرجّع user_id (مش بيعمل login).
  Future<Either<Failure, RegisterResult>> register({
    required String nin,
    required String firstNameAr,
    required String lastNameAr,
    required String phone,
    required String email,
    required String birthDate,
    required String password,
    required String deviceName,
  });

  /// تأكيد كود الـ OTP (6 أرقام) — يرجّع توكنات.
  Future<Either<Failure, AuthTokens>> verifyOtp({
    required String userId,
    required String otp,
    required String deviceName,
  });

  /// إعادة إرسال الكود.
  Future<Either<Failure, Unit>> resendOtp({required String userId});

  /// تسجيل الدخول — توكنات أو إشارة تأكيد بريد.
  Future<Either<Failure, LoginResult>> login({
    required String ninOrEmail,
    required String password,
    required String deviceName,
  });

  /// المستخدم الحالي.
  Future<Either<Failure, AuthUser>> getCurrentUser();

  /// تسجيل الخروج (يمسح التوكنات محليًا أيضًا).
  Future<Either<Failure, Unit>> logout({bool allDevices});

  /// هل فيه جلسة محفوظة محليًا؟ (للـ splash).
  Future<bool> hasSession();
}
