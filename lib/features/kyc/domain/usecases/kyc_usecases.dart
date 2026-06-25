import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/kyc_entities.dart';
import '../repositories/kyc_repository.dart';

part 'kyc_usecases.freezed.dart';

@injectable
class GetKycStatus implements UseCase<KycStatus, NoParams> {
  final KycRepository repository;
  GetKycStatus(this.repository);
  @override
  Future<Either<Failure, KycStatus>> call(NoParams params) =>
      repository.getStatus();
}

@injectable
class UploadKycDocument implements UseCase<Unit, UploadDocParams> {
  final KycRepository repository;
  UploadKycDocument(this.repository);
  @override
  Future<Either<Failure, Unit>> call(UploadDocParams p) =>
      repository.uploadDocument(type: p.type, filePath: p.filePath);
}

@freezed
class UploadDocParams with _$UploadDocParams {
  const factory UploadDocParams({
    required KycDocType type,
    required String filePath,
  }) = _UploadDocParams;
}

@injectable
class SubmitKyc implements UseCase<Unit, KycSubmitParams> {
  final KycRepository repository;
  SubmitKyc(this.repository);
  @override
  Future<Either<Failure, Unit>> call(KycSubmitParams p) => repository.submit(p);
}

@injectable
class GetWilayas implements UseCase<List<Wilaya>, NoParams> {
  final KycRepository repository;
  GetWilayas(this.repository);
  @override
  Future<Either<Failure, List<Wilaya>>> call(NoParams params) =>
      repository.getWilayas();
}

@injectable
class GetCommunes implements UseCase<List<Commune>, int> {
  final KycRepository repository;
  GetCommunes(this.repository);
  @override
  Future<Either<Failure, List<Commune>>> call(int wilayaId) =>
      repository.getCommunes(wilayaId);
}
