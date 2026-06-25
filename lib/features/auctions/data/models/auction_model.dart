import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/auction.dart';
import 'money_model.dart';

part 'auction_model.freezed.dart';
part 'auction_model.g.dart';

/// مرجع مسمّى (الفئة id رقم، الجهة id نص UUID — لذلك نخزّن id كنص).
@freezed
class NamedRefModel with _$NamedRefModel {
  const NamedRefModel._();

  const factory NamedRefModel({dynamic id, String? name}) = _NamedRefModel;

  factory NamedRefModel.fromJson(Map<String, dynamic> json) =>
      _$NamedRefModelFromJson(json);

  NamedRef toEntity() => NamedRef(id: id?.toString() ?? '', name: name ?? '');
}

/// موديل المزاد — يطابق response الـ API (list + detail).
/// الحقول الناقصة في الـ list response بتتعامل كـ nullable / default.
@freezed
class AuctionModel with _$AuctionModel {
  const AuctionModel._();

  const factory AuctionModel({
    required String id,
    String? title,
    String? description,
    String? status,
    @JsonKey(name: 'auction_type') String? auctionType,
    @JsonKey(name: 'cover_photo_url') String? coverPhotoUrl,
    @Default(<String>[]) List<String> photos,
    NamedRefModel? category,
    NamedRefModel? entity,
    WilayaRefModel? wilaya,
    @JsonKey(name: 'asset_location') String? assetLocation,
    @JsonKey(name: 'opening_price') MoneyModel? openingPrice,
    @JsonKey(name: 'current_price') MoneyModel? currentPrice,
    @JsonKey(name: 'deposit_amount') MoneyModel? depositAmount,
    @JsonKey(name: 'entry_fee') MoneyModel? entryFee,
    @JsonKey(name: 'book_price') MoneyModel? bookPrice,
    @JsonKey(name: 'bid_count') @Default(0) int bidCount,
    @JsonKey(name: 'seconds_remaining') @Default(0) int secondsRemaining,
    @JsonKey(name: 'is_live') @Default(false) bool isLive,
    @JsonKey(name: 'is_biddable') @Default(false) bool isBiddable,
    @JsonKey(name: 'has_ended') @Default(false) bool hasEnded,
    @JsonKey(name: 'winner_alias') String? winnerAlias,
    @JsonKey(name: 'final_price') MoneyModel? finalPrice,
    @JsonKey(name: 'requires_commerce_register')
    @Default(false)
    bool requiresCommerceRegister,
    @JsonKey(name: 'condition_book') ConditionBookModel? conditionBook,
  }) = _AuctionModel;

  factory AuctionModel.fromJson(Map<String, dynamic> json) =>
      _$AuctionModelFromJson(json);

  static const _zero = MoneyModel(amount: 0, formatted: '0 دج');

  Auction toEntity() => Auction(
    id: id,
    title: title ?? '',
    description: description,
    status: AuctionStatusX.fromApi(status),
    auctionType: auctionType ?? 'SALE',
    coverPhotoUrl: coverPhotoUrl,
    photos: photos,
    category: category?.toEntity(),
    entity: entity?.toEntity(),
    wilayaName: wilaya?.name,
    assetLocation: assetLocation,
    openingPrice: (openingPrice ?? _zero).toEntity(),
    currentPrice: (currentPrice ?? _zero).toEntity(),
    depositAmount: (depositAmount ?? _zero).toEntity(),
    entryFee: (entryFee ?? _zero).toEntity(),
    bookPrice: bookPrice?.toEntity(),
    bidCount: bidCount,
    secondsRemaining: secondsRemaining,
    isLive: isLive,
    isBiddable: isBiddable,
    hasEnded: hasEnded,
    winnerAlias: winnerAlias,
    finalPrice: finalPrice?.toEntity(),
    requiresCommerceRegister: requiresCommerceRegister,
    conditionBookDownloadUrl: conditionBook?.downloadUrl,
  );
}

@freezed
class WilayaRefModel with _$WilayaRefModel {
  const factory WilayaRefModel({dynamic id, String? code, String? name}) =
      _WilayaRefModel;

  factory WilayaRefModel.fromJson(Map<String, dynamic> json) =>
      _$WilayaRefModelFromJson(json);
}

@freezed
class ConditionBookModel with _$ConditionBookModel {
  const factory ConditionBookModel({
    String? id,
    String? title,
    @JsonKey(name: 'download_url') String? downloadUrl,
  }) = _ConditionBookModel;

  factory ConditionBookModel.fromJson(Map<String, dynamic> json) =>
      _$ConditionBookModelFromJson(json);
}
