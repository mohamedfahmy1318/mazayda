import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/appeal.dart';
import '../repositories/appeals_repository.dart';

/// use case: جلب قائمة اعتراضات المستخدم.
@injectable
class GetAppeals implements UseCase<List<Appeal>, NoParams> {
  final AppealsRepository repository;
  GetAppeals(this.repository);

  @override
  Future<Either<Failure, List<Appeal>>> call(NoParams params) =>
      repository.getAppeals();
}
