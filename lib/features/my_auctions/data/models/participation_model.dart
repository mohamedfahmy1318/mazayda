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

  /// التحويل لـ entity حسب التبويب (لأن المعروض يختلف).
  Participation toEntity(MyAuctionTab tab) {
    final aId = auctionId ?? id ?? '';
    const zero = MoneyModel(amount: 0, formatted: '0 دج');

    return switch (tab) {
      MyAuctionTab.active => Participation(
          auctionId: aId,
          title: title ?? '',
          coverPhotoUrl: coverPhotoUrl,
          price: (myBid ?? currentPrice ?? zero).toEntity(),
          priceLabel: 'مزايدتك الحالية',
          statusLabel: (isWinning ?? false) ? 'أنت الأعلى' : 'تمت المزايدة عليك',
          statusKind: (isWinning ?? false) ? 'winning' : 'outbid',
        ),
      MyAuctionTab.won => Participation(
          auctionId: aId,
          title: title ?? '',
          coverPhotoUrl: coverPhotoUrl,
          price: (finalPrice ?? currentPrice ?? zero).toEntity(),
          priceLabel: 'سعر الرسو',
          statusLabel: status == 'PAID' ? 'مكتمل' : 'بانتظار الدفع',
          statusKind: status == 'PAID' ? 'completed' : 'awaiting_payment',
        ),
      MyAuctionTab.lost => Participation(
          auctionId: aId,
          title: title ?? '',
          coverPhotoUrl: coverPhotoUrl,
          price: (finalPrice ?? currentPrice ?? zero).toEntity(),
          priceLabel: 'السعر النهائي',
          statusLabel: 'تم استرداد التأمين',
          statusKind: 'refund',
        ),
      MyAuctionTab.upcoming => Participation(
          auctionId: aId,
          title: title ?? '',
          coverPhotoUrl: coverPhotoUrl,
          price: (openingPrice ?? zero).toEntity(),
          priceLabel: 'السعر الافتتاحي',
          statusLabel: 'لم يبدأ بعد',
          statusKind: 'upcoming',
        ),
    };
  }
}
