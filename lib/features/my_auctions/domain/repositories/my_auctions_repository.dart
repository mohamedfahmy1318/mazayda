import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';
import '../entities/my_auctions_result.dart';

/// عقد الـ my-auctions repository.
/// (الـ use case اتنقل لـ domain/usecases/get_my_auctions.dart حسب اتفاقية المشروع.)
abstract class MyAuctionsRepository {
  Future<Either<Failure, MyAuctionsResult>> getMyAuctions(MyAuctionTab tab);
}
