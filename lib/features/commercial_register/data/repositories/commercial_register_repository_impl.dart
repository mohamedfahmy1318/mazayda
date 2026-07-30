import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/exceptions_mapper.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/entities/commercial_register.dart';
import '../../domain/repositories/commercial_register_repository.dart';
import '../datasources/commercial_register_remote_data_source.dart';

@LazySingleton(as: CommercialRegisterRepository)
class CommercialRegisterRepositoryImpl implements CommercialRegisterRepository {
  final CommercialRegisterRemoteDataSource remote;
  CommercialRegisterRepositoryImpl(this.remote);

  @override
  Future<Either<Failure, CommercialRegister>> getRegister() {
    return _guard(() async => (await remote.getRegister()).toEntity());
  }

  @override
  Future<Either<Failure, Unit>> submit({
    required String companyName,
    required String registerNumber,
    required String taxNumber,
    required String activityType,
    required String startDate,
    String? registerDocumentPath,
    String? taxCardDocumentPath,
  }) {
    return _guard(() async {
      await remote.submit(
        fields: {
          'company_name': companyName,
          'register_number': registerNumber,
          'tax_number': taxNumber,
          'activity_type': activityType,
          'start_date': startDate,
        },
        registerDocumentPath: registerDocumentPath,
        taxCardDocumentPath: taxCardDocumentPath,
      );
      return unit;
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
      // ملاحظة: رفض الصلاحية (سجل معتمد بالفعل) بييجي 403 برسالة نصية
      // من غير مفتاح errors — فالواجهة لازم تعرض message مش أخطاء حقول.
      return Left(e.toFailure());
    } catch (_) {
      return const Left(Failure.unexpected());
    }
  }
}
