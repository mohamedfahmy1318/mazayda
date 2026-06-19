import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/auction_question.dart';

part 'qa_repository.freezed.dart';

abstract class QaRepository {
  Future<Either<Failure, List<AuctionQuestion>>> getQuestions(
    String auctionId,
  );
  Future<Either<Failure, Unit>> askQuestion(AskQuestionParams params);
}

@freezed
class AskQuestionParams with _$AskQuestionParams {
  const factory AskQuestionParams({
    required String auctionId,
    required String question,
  }) = _AskQuestionParams;
}

@injectable
class GetQuestions implements UseCase<List<AuctionQuestion>, String> {
  final QaRepository repository;
  GetQuestions(this.repository);
  @override
  Future<Either<Failure, List<AuctionQuestion>>> call(String auctionId) =>
      repository.getQuestions(auctionId);
}

@injectable
class AskQuestion implements UseCase<Unit, AskQuestionParams> {
  final QaRepository repository;
  AskQuestion(this.repository);
  @override
  Future<Either<Failure, Unit>> call(AskQuestionParams params) =>
      repository.askQuestion(params);
}
