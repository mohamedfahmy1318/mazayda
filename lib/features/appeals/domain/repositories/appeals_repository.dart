import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/appeal.dart';

part 'appeals_repository.freezed.dart';

abstract class AppealsRepository {
  Future<Either<Failure, List<Appeal>>> getAppeals();
  Future<Either<Failure, Unit>> submitAppeal(SubmitAppealParams params);
}

@freezed
class SubmitAppealParams with _$SubmitAppealParams {
  const factory SubmitAppealParams({
    required String subject,
    required String reason,
    String? auctionId, // اختياري
  }) = _SubmitAppealParams;
}

@injectable
class GetAppeals implements UseCase<List<Appeal>, NoParams> {
  final AppealsRepository repository;
  GetAppeals(this.repository);
  @override
  Future<Either<Failure, List<Appeal>>> call(NoParams params) =>
      repository.getAppeals();
}

@injectable
class SubmitAppeal implements UseCase<Unit, SubmitAppealParams> {
  final AppealsRepository repository;
  SubmitAppeal(this.repository);
  @override
  Future<Either<Failure, Unit>> call(SubmitAppealParams params) =>
      repository.submitAppeal(params);
}
