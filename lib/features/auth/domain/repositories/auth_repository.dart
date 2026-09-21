import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';
import '../entities/auth_entities.dart';
import '../entities/email_recovery.dart';

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
    required String passwordConfirmation,
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

  // ===== استرجاع الحساب =====

  /// طلب رمز إعادة التعيين — بينجح دايمًا حتى لو الحساب مش موجود.
  Future<Either<Failure, Unit>> requestPasswordReset({
    required String nin,
    required String email,
  });

  /// تأكيد الرمز وتعيين كلمة سر جديدة.
  /// السيرفر بيبطّل كل التوكنات، فبنمسح المخزّن محليًا كمان.
  Future<Either<Failure, Unit>> verifyPasswordReset({
    required String nin,
    required String email,
    required String otp,
    required String password,
    required String passwordConfirmation,
  });

  /// كشف مفتاح السؤال السرّي.
  Future<Either<Failure, String>> revealSecretQuestion({
    required String nin,
    required String email,
  });

  /// استرجاع بالسؤال السرّي وتعيين كلمة سر جديدة.
  Future<Either<Failure, Unit>> recoverBySecret({
    required String nin,
    required String email,
    required String secretAnswer,
    required String password,
    required String passwordConfirmation,
  });

  // ===== استرجاع البريد الإلكتروني المفقود (تعديل العميل رقم 1) =====

  /// تقديم طلب تغيير البريد للمراجعة.
  Future<Either<Failure, EmailRecoveryRequest>> submitEmailRecovery({
    required String nin,
    required String birthDate,
    required String phone,
    required String newEmail,
    required String selfiePath,
  });

  /// متابعة حالة آخر طلب — `null` معناها مفيش طلب سابق (مش خطأ).
  Future<Either<Failure, EmailRecoveryRequest?>> getEmailRecoveryStatus({
    required String nin,
  });

  /// هل فيه جلسة محفوظة محليًا؟ (للـ splash).
  Future<bool> hasSession();
}
