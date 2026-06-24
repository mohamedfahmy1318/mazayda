import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/network/token_storage.dart';
import '../../domain/entities/auth_entities.dart';
import '../../domain/repositories/auth_repository.dart';
import '../datasources/auth_remote_data_source.dart';
import '../models/auth_models.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remote;
  final TokenStorage tokenStorage;

  AuthRepositoryImpl(this.remote, this.tokenStorage);

  @override
  Future<Either<Failure, RegisterResult>> register({
    required String nin,
    required String firstNameAr,
    required String lastNameAr,
    required String phone,
    required String email,
    required String birthDate,
    required String password,
    required String deviceName,
  }) {
    return _guard(() async {
      final userId = await remote.register({
        'nin': nin,
        'first_name_ar': firstNameAr,
        'last_name_ar': lastNameAr,
        'phone': phone,
        'email': email,
        'birth_date': birthDate,
        'password': password,
        // الواجهة فيها حقل واحد لكلمة المرور، فالتأكيد = كلمة المرور نفسها
        'password_confirmation': password,
        'device_name': deviceName,
      });
      return RegisterResult(userId: userId);
    });
  }

  @override
  Future<Either<Failure, AuthTokens>> verifyOtp({
    required String userId,
    required String otp,
    required String deviceName,
  }) {
    return _guard(() async {
      final model = await remote.verifyOtp({
        'user_id': userId,
        'otp': otp,
        'device_name': deviceName,
      });
      // نحفظ التوكنات فور النجاح
      await tokenStorage.saveTokens(
        accessToken: model.accessToken,
        refreshToken: model.refreshToken,
      );
      return model.toEntity();
    });
  }

  @override
  Future<Either<Failure, Unit>> resendOtp({required String userId}) {
    return _guard(() async {
      await remote.resendOtp(userId);
      return unit;
    });
  }

  @override
  Future<Either<Failure, LoginResult>> login({
    required String ninOrEmail,
    required String password,
    required String deviceName,
  }) {
    return _guard(() async {
      final data = await remote.login({
        'nin_or_email': ninOrEmail,
        'password': password,
        'device_name': deviceName,
      });

      // حالة: البريد غير مؤكد
      if (data['needs_email_verification'] == true) {
        return LoginResult(
          needsEmailVerification: true,
          userId: data['user_id']?.toString(),
        );
      }

      // حالة: نجاح — التوكنات قد تكون متداخلة تحت "tokens"
      final tokensJson = (data['tokens'] ?? data) as Map<String, dynamic>;
      final tokens = AuthTokensModel.fromJson(tokensJson);
      await tokenStorage.saveTokens(
        accessToken: tokens.accessToken,
        refreshToken: tokens.refreshToken,
      );
      return LoginResult(tokens: tokens.toEntity());
    });
  }

  @override
  Future<Either<Failure, AuthUser>> getCurrentUser() {
    return _guard(() async {
      final model = await remote.getCurrentUser();
      return model.toEntity();
    });
  }

  @override
  Future<Either<Failure, Unit>> logout({bool allDevices = false}) {
    return _guard(() async {
      try {
        await remote.logout(allDevices: allDevices);
      } catch (_) {
        // حتى لو فشل النداء، نمسح محليًا
      }
      await tokenStorage.clear();
      return unit;
    });
  }

  @override
  Future<bool> hasSession() => tokenStorage.hasTokens;

  // تحويل الـ exceptions لـ Failures (نفس نمط الـ auctions)
  Future<Either<Failure, T>> _guard<T>(Future<T> Function() action) async {
    try {
      return Right(await action());
    } on UnauthorizedException catch (e) {
      return Left(Failure.unauthorized(message: e.message));
    } on NetworkException catch (e) {
      return Left(Failure.network(message: e.message));
    } on ServerException catch (e) {
      return Left(
        Failure.server(
          message: e.message,
          statusCode: e.statusCode,
          errors: e.errors,
        ),
      );
    } catch (_) {
      return const Left(Failure.unexpected());
    }
  }
}
