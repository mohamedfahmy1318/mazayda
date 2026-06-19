import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/entities/auction_question.dart';
import '../../domain/repositories/qa_repository.dart';
import '../datasources/qa_remote_data_source.dart';

@LazySingleton(as: QaRepository)
class QaRepositoryImpl implements QaRepository {
  final QaRemoteDataSource remote;
  QaRepositoryImpl(this.remote);

  @override
  Future<Either<Failure, List<AuctionQuestion>>> getQuestions(
    String auctionId,
  ) {
    return _guard(() async => (await remote.getQuestions(auctionId))
        .map((m) => m.toEntity())
        .toList());
  }

  @override
  Future<Either<Failure, Unit>> askQuestion(AskQuestionParams p) {
    return _guard(() async {
      await remote.askQuestion(p.auctionId, p.question);
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
