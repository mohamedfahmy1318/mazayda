import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../repositories/appeals_repository.dart';

part 'submit_appeal.freezed.dart';

/// use case: تقديم اعتراض جديد.
@injectable
class SubmitAppeal implements UseCase<Unit, SubmitAppealParams> {
  final AppealsRepository repository;
  SubmitAppeal(this.repository);

  @override
  Future<Either<Failure, Unit>> call(SubmitAppealParams params) =>
      repository.submitAppeal(
        auctionId: params.auctionId,
        subject: params.subject,
        reason: params.reason,
      );
}

@freezed
abstract class SubmitAppealParams with _$SubmitAppealParams {
  const factory SubmitAppealParams({
    required String auctionId, // مطلوب — الطعن دايمًا على مزاد
    required String subject,
    required String reason,
  }) = _SubmitAppealParams;
}
