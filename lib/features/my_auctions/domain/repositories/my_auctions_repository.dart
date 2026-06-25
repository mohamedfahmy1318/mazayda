import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/participation.dart';

/// عقد الـ my-auctions repository.
abstract class MyAuctionsRepository {
  Future<Either<Failure, List<Participation>>> getMyAuctions(MyAuctionTab tab);
}

@injectable
class GetMyAuctions implements UseCase<List<Participation>, MyAuctionTab> {
  final MyAuctionsRepository repository;
  GetMyAuctions(this.repository);

  @override
  Future<Either<Failure, List<Participation>>> call(MyAuctionTab tab) =>
      repository.getMyAuctions(tab);
}
