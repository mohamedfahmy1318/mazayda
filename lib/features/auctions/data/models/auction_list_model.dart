import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/auction.dart';
import '../../domain/entities/auction_list_item.dart';
import 'auction_model.dart';
import 'money_model.dart';

part 'auction_list_model.freezed.dart';
part 'auction_list_model.g.dart';

/// يطابق `AuctionListResource` (21 مفتاح) + إضافات `MyAuctionResource`.
///
/// ملاحظة: `category` و`wilaya` بيتحطّوا بـ `whenLoaded`، يعني المفتاح
/// **بيختفي تمامًا** من الـ JSON لو العلاقة مش محمّلة (مش بيرجع null).
/// عشان كده الاتنين nullable ومن غير `required`.
@freezed
class AuctionListModel with _$AuctionListModel {
  const AuctionListModel._();

  const factory AuctionListModel({
    required String id,
    String? title,
    @JsonKey(name: 'cover_photo_url') String? coverPhotoUrl,
    String? status,
    @JsonKey(name: 'auction_type') String? auctionType,
    @JsonKey(name: 'asset_class') String? assetClass,
    NamedRefModel? category,
    WilayaRefModel? wilaya,
    @JsonKey(name: 'opening_price') MoneyModel? openingPrice,
    @JsonKey(name: 'current_price') MoneyModel? currentPrice,
    @JsonKey(name: 'bid_count') @Default(0) int bidCount,
    @JsonKey(name: 'start_time') String? startTime,
    @JsonKey(name: 'end_time') String? endTime,
    @JsonKey(name: 'seconds_remaining') @Default(0) int secondsRemaining,
    @JsonKey(name: 'is_live') @Default(false) bool isLive,
    @JsonKey(name: 'is_biddable') @Default(false) bool isBiddable,
    @JsonKey(name: 'has_ended') @Default(false) bool hasEnded,
    @JsonKey(name: 'requires_commerce_register') bool? requiresCommerceRegister,
    // نتيجة الإقفال — null قبل ما المزاد يقفل.
    @JsonKey(name: 'final_price') MoneyModel? finalPrice,
    @JsonKey(name: 'closed_at') String? closedAt,
    // ===== حالة مشاركة المستخدم — `/my-auctions` فقط =====
    // كلها nullable عن قصد: المفتاح بيغيب في باقي المسارات، وnull هنا
    // معناها «مش معروف» مش «لا».
    @JsonKey(name: 'my_highest_bid') MoneyModel? myHighestBid,
    @JsonKey(name: 'is_winning') bool? isWinning,
    @JsonKey(name: 'is_winner') bool? isWinner,
    @JsonKey(name: 'deposit_paid') bool? depositPaid,
    @JsonKey(name: 'book_purchased') bool? bookPurchased,
    @JsonKey(name: 'registered_at') String? registeredAt,
    @JsonKey(name: 'final_payment_status') String? finalPaymentStatus,
  }) = _AuctionListModel;

  factory AuctionListModel.fromJson(Map<String, dynamic> json) =>
      _$AuctionListModelFromJson(json);

  static const _zero = MoneyModel(amount: 0, formatted: '0 دج');

  AuctionListItem toEntity() => AuctionListItem(
    id: id,
    title: title ?? '',
    coverPhotoUrl: coverPhotoUrl,
    status: AuctionStatusX.fromApi(status),
    auctionType: auctionType ?? 'SALE',
    assetClass: assetClass,
    category: category?.toEntity(),
    wilaya: wilaya == null
        ? null
        : NamedRef(
            id: wilaya!.id?.toString() ?? '',
            name: wilaya!.name ?? '',
          ),
    openingPrice: (openingPrice ?? _zero).toEntity(),
    currentPrice: (currentPrice ?? _zero).toEntity(),
    bidCount: bidCount,
    startTime: DateTime.tryParse(startTime ?? ''),
    endTime: DateTime.tryParse(endTime ?? ''),
    secondsRemaining: secondsRemaining,
    isLive: isLive,
    isBiddable: isBiddable,
    hasEnded: hasEnded,
    requiresCommerceRegister: requiresCommerceRegister,
    finalPrice: finalPrice?.toEntity(),
    closedAt: DateTime.tryParse(closedAt ?? ''),
    myHighestBid: myHighestBid?.toEntity(),
    isWinning: isWinning,
    isWinner: isWinner,
    depositPaid: depositPaid,
    bookPurchased: bookPurchased,
    registeredAt: DateTime.tryParse(registeredAt ?? ''),
    finalPaymentStatus: finalPaymentStatus,
  );
}
