import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/auction_viewer.dart';
import '../repositories/auction_repository.dart';

/// use case: جلب تفاصيل مزاد واحد بالـ id (مع سياق المستخدم).
@injectable
class GetAuctionById implements UseCase<AuctionDetail, String> {
  final AuctionRepository repository;
  GetAuctionById(this.repository);

  @override
  Future<Either<Failure, AuctionDetail>> call(String id) {
    return repository.getAuctionById(id);
  }
}
