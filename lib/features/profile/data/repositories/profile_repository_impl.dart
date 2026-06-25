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
  Future<Either<Failure, Profile>> updateProfile({
    String? phone,
    String? email,
    String? address,
    String? postalCode,
    String? profession,
  }) {
    return _guard(() async {
      final model = await remote.updateProfile({
        if (phone != null) 'phone': phone,
        if (email != null) 'email': email,
        if (address != null) 'address': address,
        if (postalCode != null) 'postal_code': postalCode,
        if (profession != null) 'profession': profession,
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
