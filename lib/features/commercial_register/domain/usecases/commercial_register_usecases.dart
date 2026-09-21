import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/commercial_register.dart';
import '../repositories/commercial_register_repository.dart';

part 'commercial_register_usecases.freezed.dart';

/// use case: جلب حالة السجل التجاري للمستخدم.
@injectable
class GetCommercialRegister implements UseCase<CommercialRegister, NoParams> {
  final CommercialRegisterRepository repository;
  GetCommercialRegister(this.repository);

  @override
  Future<Either<Failure, CommercialRegister>> call(NoParams params) =>
      repository.getRegister();
}

/// use case: إرسال/إعادة إرسال السجل التجاري.
@injectable
class SubmitCommercialRegister
    implements UseCase<Unit, SubmitCommercialRegisterParams> {
  final CommercialRegisterRepository repository;
  SubmitCommercialRegister(this.repository);

  @override
  Future<Either<Failure, Unit>> call(SubmitCommercialRegisterParams p) =>
      repository.submit(
        companyName: p.companyName,
        registerNumber: p.registerNumber,
        taxNumber: p.taxNumber,
        activityType: p.activityType,
        startDate: p.startDate,
        registerDocumentPath: p.registerDocumentPath,
        taxCardDocumentPath: p.taxCardDocumentPath,
      );
}

@freezed
abstract class SubmitCommercialRegisterParams with _$SubmitCommercialRegisterParams {
  const factory SubmitCommercialRegisterParams({
    required String companyName,
    required String registerNumber,
    required String taxNumber,
    required String activityType,
    required String startDate,
    String? registerDocumentPath,
    String? taxCardDocumentPath,
  }) = _SubmitCommercialRegisterParams;
}
