import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';
import '../entities/auction.dart';

/// عقد الـ repository — الـ domain بيعتمد على التجريد ده، مش على التنفيذ.
abstract class AuctionRepository {
  /// قائمة المزادات مع فلترة اختيارية.
  Future<Either<Failure, List<Auction>>> getAuctions({
    String? query,
    String? category,
    int? wilaya,
    String? status,
    String? type,
    int page,
    int perPage,
  });

  /// تفاصيل مزاد واحد.
  Future<Either<Failure, Auction>> getAuctionById(String id);
}
