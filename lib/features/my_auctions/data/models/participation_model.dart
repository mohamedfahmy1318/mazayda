import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../auctions/data/models/money_model.dart';
import '../../domain/entities/participation.dart';

part 'participation_model.freezed.dart';
part 'participation_model.g.dart';

/// موديل مشاركة — مرن لأن شكل response مزايداتي لم يُعرض في الـ Postman (محمي).
/// راجع الأسماء مع رد فعلي وعدّل الـ JsonKey لو لزم.
@freezed
class ParticipationModel with _$ParticipationModel {
  const ParticipationModel._();

  const factory ParticipationModel({
    @JsonKey(name: 'auction_id') String? auctionId,
    String? id,
    String? title,
    @JsonKey(name: 'cover_photo_url') String? coverPhotoUrl,
    @JsonKey(name: 'current_price') MoneyModel? currentPrice,
    @JsonKey(name: 'final_price') MoneyModel? finalPrice,
    @JsonKey(name: 'opening_price') MoneyModel? openingPrice,
    @JsonKey(name: 'my_bid') MoneyModel? myBid,
    String? status, // حالة المزاد/المشاركة من الـ API
    @JsonKey(name: 'is_winning') bool? isWinning,
  }) = _ParticipationModel;

  factory ParticipationModel.fromJson(Map<String, dynamic> json) =>
      _$ParticipationModelFromJson(json);

  /// التحويل لـ entity حسب التبويب (لأن السعر المعروض والحالة يختلفان).
  Participation toEntity(MyAuctionTab tab) {
    const zero = MoneyModel(amount: 0, formatted: '0 دج');
    final (MoneyModel money, ParticipationStatus status) = switch (tab) {
      MyAuctionTab.active => (
        myBid ?? currentPrice ?? zero,
        (isWinning ?? false)
            ? ParticipationStatus.winning
            : ParticipationStatus.outbid,
      ),
      MyAuctionTab.won => (
        finalPrice ?? currentPrice ?? zero,
        this.status == 'PAID'
            ? ParticipationStatus.completed
            : ParticipationStatus.awaitingPayment,
      ),
      MyAuctionTab.lost => (
        finalPrice ?? currentPrice ?? zero,
        ParticipationStatus.refund,
      ),
      MyAuctionTab.upcoming => (
        openingPrice ?? zero,
        ParticipationStatus.upcoming,
      ),
    };

    return Participation(
      auctionId: auctionId ?? id ?? '',
      title: title ?? '',
      coverPhotoUrl: coverPhotoUrl,
      price: money.toEntity(),
      status: status,
    );
  }
}
