import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/my_auctions_result.dart';
import '../repositories/my_auctions_repository.dart';

/// use case: جلب مزادات المستخدم حسب التبويب.
@injectable
class GetMyAuctions implements UseCase<MyAuctionsResult, MyAuctionTab> {
  final MyAuctionsRepository repository;
  GetMyAuctions(this.repository);

  @override
  Future<Either<Failure, MyAuctionsResult>> call(MyAuctionTab tab) =>
      repository.getMyAuctions(tab);
}
