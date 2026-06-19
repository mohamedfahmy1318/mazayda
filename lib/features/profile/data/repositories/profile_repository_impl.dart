import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/entities/profile.dart';
import '../../domain/repositories/profile_repository.dart';
import '../datasources/profile_remote_data_source.dart';

@LazySingleton(as: ProfileRepository)
class ProfileRepositoryImpl implements ProfileRepository {
  final ProfileRemoteDataSource remote;
  ProfileRepositoryImpl(this.remote);

  @override
  Future<Either<Failure, Profile>> getProfile() {
    return _guard(() async => (await remote.getProfile()).toEntity());
  }

  @override
  Future<Either<Failure, Profile>> updateProfile(UpdateProfileParams p) {
    return _guard(() async {
      final model = await remote.updateProfile({
        if (p.phone != null) 'phone': p.phone,
        if (p.email != null) 'email': p.email,
        if (p.address != null) 'address': p.address,
        if (p.postalCode != null) 'postal_code': p.postalCode,
        if (p.profession != null) 'profession': p.profession,
      });
      return model.toEntity();
    });
  }

  Future<Either<Failure, T>> _guard<T>(Future<T> Function() action) async {
    try {
      return Right(await action());
    } on UnauthorizedException catch (e) {
      return Left(Failure.unauthorized(message: e.message));
    } on NetworkException catch (e) {
      return Left(Failure.network(message: e.message));
    } on ServerException catch (e) {
      return Left(Failure.server(
        message: e.message,
        statusCode: e.statusCode,
        errors: e.errors,
      ));
    } catch (_) {
      return const Left(Failure.unexpected());
    }
  }
}
