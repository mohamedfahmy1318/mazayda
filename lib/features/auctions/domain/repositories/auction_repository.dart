import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/usecase/paged.dart';
import '../entities/auction_list_item.dart';
import '../entities/auction_viewer.dart';

/// عقد الـ repository — الـ domain بيعتمد على التجريد ده، مش على التنفيذ.
abstract class AuctionRepository {
  /// قائمة المزادات مع فلترة اختيارية — عناصر مختصرة + معلومات التصفيح.
  Future<Either<Failure, Paged<AuctionListItem>>> getAuctions({
    String? query,
    String? category,
    int? wilaya,
    String? status,
    String? type,
    int page,
    int perPage,
  });

  /// تفاصيل مزاد واحد + سياق المستخدم (meta.viewer).
  Future<Either<Failure, AuctionDetail>> getAuctionById(String id);
}
