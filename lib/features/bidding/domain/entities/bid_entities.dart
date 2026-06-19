import 'package:equatable/equatable.dart';
import '../../../auctions/domain/entities/money.dart';

/// مزايدة واحدة في السجل — alias فقط (مفيش أسماء حقيقية).
class BidEntry extends Equatable {
  final Money amount;
  final String bidderAlias;
  final DateTime bidTime;

  const BidEntry({
    required this.amount,
    required this.bidderAlias,
    required this.bidTime,
  });

  @override
  List<Object?> get props => [amount, bidderAlias, bidTime];
}

/// لقطة سريعة للسعر والساعة — من GET /price (للـ polling).
class PriceSnapshot extends Equatable {
  final int currentPrice;
  final String currentPriceFormatted;
  final int bidCount;
  final String status;
  final bool isBiddable;
  final bool hasEnded;

  const PriceSnapshot({
    required this.currentPrice,
    required this.currentPriceFormatted,
    required this.bidCount,
    required this.status,
    required this.isBiddable,
    required this.hasEnded,
  });

  @override
  List<Object?> get props =>
      [currentPrice, bidCount, status, isBiddable, hasEnded];
}
