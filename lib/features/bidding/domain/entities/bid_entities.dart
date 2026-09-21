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

  /// وقت إقفال المزاد — مصدر العدّاد التنازلي. `null` لو الباك مابعتهوش.
  final DateTime? endTime;

  /// أقل مبلغ مزايدة مقبول — محسوب في السيرفر من نسبة القطاع
  /// (تعديلات العميل 11 و12). `null` لو الباك لسه مابيرجّعهوش.
  final int? minBid;

  /// نص جاهز للحد الأدنى (بتنسيق العملة من السيرفر).
  final String? minBidFormatted;

  /// نسبة الحد الأدنى للقطاع — للرسالة التوضيحية للمواطن.
  final double? minIncrementPercent;

  const PriceSnapshot({
    required this.currentPrice,
    required this.currentPriceFormatted,
    required this.bidCount,
    required this.status,
    required this.isBiddable,
    required this.hasEnded,
    this.endTime,
    this.minBid,
    this.minBidFormatted,
    this.minIncrementPercent,
  });

  @override
  List<Object?> get props => [
    currentPrice,
    bidCount,
    status,
    isBiddable,
    hasEnded,
    endTime,
    minBid,
  ];
}
