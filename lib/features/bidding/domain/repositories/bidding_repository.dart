import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';
import '../entities/bid_entities.dart';

/// عقد الـ bidding repository.
abstract class BiddingRepository {
  /// آخر المزايدات (alias فقط) — لتعبئة السجل أو polling fallback.
  Future<Either<Failure, List<BidEntry>>> getLatestBids(
    String auctionId, {
    int limit,
  });

  /// لقطة السعر والساعة — للـ polling الرخيص.
  Future<Either<Failure, PriceSnapshot>> getPrice(String auctionId);

  /// تقديم مزايدة (بالدينار الكامل).
  /// عند فشل القواعد بيرجّع ServerFailure برسالة معرّبة.
  Future<Either<Failure, Unit>> placeBid({
    required String auctionId,
    required int amount,
  });
}
