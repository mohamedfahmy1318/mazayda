import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/auction.dart';
import '../repositories/auction_repository.dart';

/// use case: جلب تفاصيل مزاد واحد بالـ id.
@injectable
class GetAuctionById implements UseCase<Auction, String> {
  final AuctionRepository repository;
  GetAuctionById(this.repository);

  @override
  Future<Either<Failure, Auction>> call(String id) {
    return repository.getAuctionById(id);
  }
}
