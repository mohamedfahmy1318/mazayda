// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auction_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AuctionListModel _$AuctionListModelFromJson(Map<String, dynamic> json) {
  return _AuctionListModel.fromJson(json);
}

/// @nodoc
mixin _$AuctionListModel {
  String get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'cover_photo_url')
  String? get coverPhotoUrl => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'auction_type')
  String? get auctionType => throw _privateConstructorUsedError;
  @JsonKey(name: 'asset_class')
  String? get assetClass => throw _privateConstructorUsedError;
  NamedRefModel? get category => throw _privateConstructorUsedError;
  WilayaRefModel? get wilaya => throw _privateConstructorUsedError;
  @JsonKey(name: 'opening_price')
  MoneyModel? get openingPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_price')
  MoneyModel? get currentPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'bid_count')
  int get bidCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_time')
  String? get startTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_time')
  String? get endTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'seconds_remaining')
  int get secondsRemaining => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_live')
  bool get isLive => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_biddable')
  bool get isBiddable => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_ended')
  bool get hasEnded => throw _privateConstructorUsedError;
  @JsonKey(name: 'requires_commerce_register')
  bool? get requiresCommerceRegister => throw _privateConstructorUsedError; // نتيجة الإقفال — null قبل ما المزاد يقفل.
  @JsonKey(name: 'final_price')
  MoneyModel? get finalPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'closed_at')
  String? get closedAt => throw _privateConstructorUsedError; // ===== حالة مشاركة المستخدم — `/my-auctions` فقط =====
  // كلها nullable عن قصد: المفتاح بيغيب في باقي المسارات، وnull هنا
  // معناها «مش معروف» مش «لا».
  @JsonKey(name: 'my_highest_bid')
  MoneyModel? get myHighestBid => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_winning')
  bool? get isWinning => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_winner')
  bool? get isWinner => throw _privateConstructorUsedError;
  @JsonKey(name: 'deposit_paid')
  bool? get depositPaid => throw _privateConstructorUsedError;
  @JsonKey(name: 'book_purchased')
  bool? get bookPurchased => throw _privateConstructorUsedError;
  @JsonKey(name: 'registered_at')
  String? get registeredAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'final_payment_status')
  String? get finalPaymentStatus => throw _privateConstructorUsedError;

  /// Serializes this AuctionListModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuctionListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuctionListModelCopyWith<AuctionListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuctionListModelCopyWith<$Res> {
  factory $AuctionListModelCopyWith(
    AuctionListModel value,
    $Res Function(AuctionListModel) then,
  ) = _$AuctionListModelCopyWithImpl<$Res, AuctionListModel>;
  @useResult
  $Res call({
    String id,
    String? title,
    @JsonKey(name: 'cover_photo_url') String? coverPhotoUrl,
    String? status,
    @JsonKey(name: 'auction_type') String? auctionType,
    @JsonKey(name: 'asset_class') String? assetClass,
    NamedRefModel? category,
    WilayaRefModel? wilaya,
    @JsonKey(name: 'opening_price') MoneyModel? openingPrice,
    @JsonKey(name: 'current_price') MoneyModel? currentPrice,
    @JsonKey(name: 'bid_count') int bidCount,
    @JsonKey(name: 'start_time') String? startTime,
    @JsonKey(name: 'end_time') String? endTime,
    @JsonKey(name: 'seconds_remaining') int secondsRemaining,
    @JsonKey(name: 'is_live') bool isLive,
    @JsonKey(name: 'is_biddable') bool isBiddable,
    @JsonKey(name: 'has_ended') bool hasEnded,
    @JsonKey(name: 'requires_commerce_register') bool? requiresCommerceRegister,
    @JsonKey(name: 'final_price') MoneyModel? finalPrice,
    @JsonKey(name: 'closed_at') String? closedAt,
    @JsonKey(name: 'my_highest_bid') MoneyModel? myHighestBid,
    @JsonKey(name: 'is_winning') bool? isWinning,
    @JsonKey(name: 'is_winner') bool? isWinner,
    @JsonKey(name: 'deposit_paid') bool? depositPaid,
    @JsonKey(name: 'book_purchased') bool? bookPurchased,
    @JsonKey(name: 'registered_at') String? registeredAt,
    @JsonKey(name: 'final_payment_status') String? finalPaymentStatus,
  });

  $NamedRefModelCopyWith<$Res>? get category;
  $WilayaRefModelCopyWith<$Res>? get wilaya;
  $MoneyModelCopyWith<$Res>? get openingPrice;
  $MoneyModelCopyWith<$Res>? get currentPrice;
  $MoneyModelCopyWith<$Res>? get finalPrice;
  $MoneyModelCopyWith<$Res>? get myHighestBid;
}

/// @nodoc
class _$AuctionListModelCopyWithImpl<$Res, $Val extends AuctionListModel>
    implements $AuctionListModelCopyWith<$Res> {
  _$AuctionListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuctionListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? coverPhotoUrl = freezed,
    Object? status = freezed,
    Object? auctionType = freezed,
    Object? assetClass = freezed,
    Object? category = freezed,
    Object? wilaya = freezed,
    Object? openingPrice = freezed,
    Object? currentPrice = freezed,
    Object? bidCount = null,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? secondsRemaining = null,
    Object? isLive = null,
    Object? isBiddable = null,
    Object? hasEnded = null,
    Object? requiresCommerceRegister = freezed,
    Object? finalPrice = freezed,
    Object? closedAt = freezed,
    Object? myHighestBid = freezed,
    Object? isWinning = freezed,
    Object? isWinner = freezed,
    Object? depositPaid = freezed,
    Object? bookPurchased = freezed,
    Object? registeredAt = freezed,
    Object? finalPaymentStatus = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            title: freezed == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String?,
            coverPhotoUrl: freezed == coverPhotoUrl
                ? _value.coverPhotoUrl
                : coverPhotoUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            status: freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String?,
            auctionType: freezed == auctionType
                ? _value.auctionType
                : auctionType // ignore: cast_nullable_to_non_nullable
                      as String?,
            assetClass: freezed == assetClass
                ? _value.assetClass
                : assetClass // ignore: cast_nullable_to_non_nullable
                      as String?,
            category: freezed == category
                ? _value.category
                : category // ignore: cast_nullable_to_non_nullable
                      as NamedRefModel?,
            wilaya: freezed == wilaya
                ? _value.wilaya
                : wilaya // ignore: cast_nullable_to_non_nullable
                      as WilayaRefModel?,
            openingPrice: freezed == openingPrice
                ? _value.openingPrice
                : openingPrice // ignore: cast_nullable_to_non_nullable
                      as MoneyModel?,
            currentPrice: freezed == currentPrice
                ? _value.currentPrice
                : currentPrice // ignore: cast_nullable_to_non_nullable
                      as MoneyModel?,
            bidCount: null == bidCount
                ? _value.bidCount
                : bidCount // ignore: cast_nullable_to_non_nullable
                      as int,
            startTime: freezed == startTime
                ? _value.startTime
                : startTime // ignore: cast_nullable_to_non_nullable
                      as String?,
            endTime: freezed == endTime
                ? _value.endTime
                : endTime // ignore: cast_nullable_to_non_nullable
                      as String?,
            secondsRemaining: null == secondsRemaining
                ? _value.secondsRemaining
                : secondsRemaining // ignore: cast_nullable_to_non_nullable
                      as int,
            isLive: null == isLive
                ? _value.isLive
                : isLive // ignore: cast_nullable_to_non_nullable
                      as bool,
            isBiddable: null == isBiddable
                ? _value.isBiddable
                : isBiddable // ignore: cast_nullable_to_non_nullable
                      as bool,
            hasEnded: null == hasEnded
                ? _value.hasEnded
                : hasEnded // ignore: cast_nullable_to_non_nullable
                      as bool,
            requiresCommerceRegister: freezed == requiresCommerceRegister
                ? _value.requiresCommerceRegister
                : requiresCommerceRegister // ignore: cast_nullable_to_non_nullable
                      as bool?,
            finalPrice: freezed == finalPrice
                ? _value.finalPrice
                : finalPrice // ignore: cast_nullable_to_non_nullable
                      as MoneyModel?,
            closedAt: freezed == closedAt
                ? _value.closedAt
                : closedAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            myHighestBid: freezed == myHighestBid
                ? _value.myHighestBid
                : myHighestBid // ignore: cast_nullable_to_non_nullable
                      as MoneyModel?,
            isWinning: freezed == isWinning
                ? _value.isWinning
                : isWinning // ignore: cast_nullable_to_non_nullable
                      as bool?,
            isWinner: freezed == isWinner
                ? _value.isWinner
                : isWinner // ignore: cast_nullable_to_non_nullable
                      as bool?,
            depositPaid: freezed == depositPaid
                ? _value.depositPaid
                : depositPaid // ignore: cast_nullable_to_non_nullable
                      as bool?,
            bookPurchased: freezed == bookPurchased
                ? _value.bookPurchased
                : bookPurchased // ignore: cast_nullable_to_non_nullable
                      as bool?,
            registeredAt: freezed == registeredAt
                ? _value.registeredAt
                : registeredAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            finalPaymentStatus: freezed == finalPaymentStatus
                ? _value.finalPaymentStatus
                : finalPaymentStatus // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }

  /// Create a copy of AuctionListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NamedRefModelCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $NamedRefModelCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }

  /// Create a copy of AuctionListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WilayaRefModelCopyWith<$Res>? get wilaya {
    if (_value.wilaya == null) {
      return null;
    }

    return $WilayaRefModelCopyWith<$Res>(_value.wilaya!, (value) {
      return _then(_value.copyWith(wilaya: value) as $Val);
    });
  }

  /// Create a copy of AuctionListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyModelCopyWith<$Res>? get openingPrice {
    if (_value.openingPrice == null) {
      return null;
    }

    return $MoneyModelCopyWith<$Res>(_value.openingPrice!, (value) {
      return _then(_value.copyWith(openingPrice: value) as $Val);
    });
  }

  /// Create a copy of AuctionListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyModelCopyWith<$Res>? get currentPrice {
    if (_value.currentPrice == null) {
      return null;
    }

    return $MoneyModelCopyWith<$Res>(_value.currentPrice!, (value) {
      return _then(_value.copyWith(currentPrice: value) as $Val);
    });
  }

  /// Create a copy of AuctionListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyModelCopyWith<$Res>? get finalPrice {
    if (_value.finalPrice == null) {
      return null;
    }

    return $MoneyModelCopyWith<$Res>(_value.finalPrice!, (value) {
      return _then(_value.copyWith(finalPrice: value) as $Val);
    });
  }

  /// Create a copy of AuctionListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyModelCopyWith<$Res>? get myHighestBid {
    if (_value.myHighestBid == null) {
      return null;
    }

    return $MoneyModelCopyWith<$Res>(_value.myHighestBid!, (value) {
      return _then(_value.copyWith(myHighestBid: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuctionListModelImplCopyWith<$Res>
    implements $AuctionListModelCopyWith<$Res> {
  factory _$$AuctionListModelImplCopyWith(
    _$AuctionListModelImpl value,
    $Res Function(_$AuctionListModelImpl) then,
  ) = __$$AuctionListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String? title,
    @JsonKey(name: 'cover_photo_url') String? coverPhotoUrl,
    String? status,
    @JsonKey(name: 'auction_type') String? auctionType,
    @JsonKey(name: 'asset_class') String? assetClass,
    NamedRefModel? category,
    WilayaRefModel? wilaya,
    @JsonKey(name: 'opening_price') MoneyModel? openingPrice,
    @JsonKey(name: 'current_price') MoneyModel? currentPrice,
    @JsonKey(name: 'bid_count') int bidCount,
    @JsonKey(name: 'start_time') String? startTime,
    @JsonKey(name: 'end_time') String? endTime,
    @JsonKey(name: 'seconds_remaining') int secondsRemaining,
    @JsonKey(name: 'is_live') bool isLive,
    @JsonKey(name: 'is_biddable') bool isBiddable,
    @JsonKey(name: 'has_ended') bool hasEnded,
    @JsonKey(name: 'requires_commerce_register') bool? requiresCommerceRegister,
    @JsonKey(name: 'final_price') MoneyModel? finalPrice,
    @JsonKey(name: 'closed_at') String? closedAt,
    @JsonKey(name: 'my_highest_bid') MoneyModel? myHighestBid,
    @JsonKey(name: 'is_winning') bool? isWinning,
    @JsonKey(name: 'is_winner') bool? isWinner,
    @JsonKey(name: 'deposit_paid') bool? depositPaid,
    @JsonKey(name: 'book_purchased') bool? bookPurchased,
    @JsonKey(name: 'registered_at') String? registeredAt,
    @JsonKey(name: 'final_payment_status') String? finalPaymentStatus,
  });

  @override
  $NamedRefModelCopyWith<$Res>? get category;
  @override
  $WilayaRefModelCopyWith<$Res>? get wilaya;
  @override
  $MoneyModelCopyWith<$Res>? get openingPrice;
  @override
  $MoneyModelCopyWith<$Res>? get currentPrice;
  @override
  $MoneyModelCopyWith<$Res>? get finalPrice;
  @override
  $MoneyModelCopyWith<$Res>? get myHighestBid;
}

/// @nodoc
class __$$AuctionListModelImplCopyWithImpl<$Res>
    extends _$AuctionListModelCopyWithImpl<$Res, _$AuctionListModelImpl>
    implements _$$AuctionListModelImplCopyWith<$Res> {
  __$$AuctionListModelImplCopyWithImpl(
    _$AuctionListModelImpl _value,
    $Res Function(_$AuctionListModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuctionListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? coverPhotoUrl = freezed,
    Object? status = freezed,
    Object? auctionType = freezed,
    Object? assetClass = freezed,
    Object? category = freezed,
    Object? wilaya = freezed,
    Object? openingPrice = freezed,
    Object? currentPrice = freezed,
    Object? bidCount = null,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? secondsRemaining = null,
    Object? isLive = null,
    Object? isBiddable = null,
    Object? hasEnded = null,
    Object? requiresCommerceRegister = freezed,
    Object? finalPrice = freezed,
    Object? closedAt = freezed,
    Object? myHighestBid = freezed,
    Object? isWinning = freezed,
    Object? isWinner = freezed,
    Object? depositPaid = freezed,
    Object? bookPurchased = freezed,
    Object? registeredAt = freezed,
    Object? finalPaymentStatus = freezed,
  }) {
    return _then(
      _$AuctionListModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        title: freezed == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String?,
        coverPhotoUrl: freezed == coverPhotoUrl
            ? _value.coverPhotoUrl
            : coverPhotoUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String?,
        auctionType: freezed == auctionType
            ? _value.auctionType
            : auctionType // ignore: cast_nullable_to_non_nullable
                  as String?,
        assetClass: freezed == assetClass
            ? _value.assetClass
            : assetClass // ignore: cast_nullable_to_non_nullable
                  as String?,
        category: freezed == category
            ? _value.category
            : category // ignore: cast_nullable_to_non_nullable
                  as NamedRefModel?,
        wilaya: freezed == wilaya
            ? _value.wilaya
            : wilaya // ignore: cast_nullable_to_non_nullable
                  as WilayaRefModel?,
        openingPrice: freezed == openingPrice
            ? _value.openingPrice
            : openingPrice // ignore: cast_nullable_to_non_nullable
                  as MoneyModel?,
        currentPrice: freezed == currentPrice
            ? _value.currentPrice
            : currentPrice // ignore: cast_nullable_to_non_nullable
                  as MoneyModel?,
        bidCount: null == bidCount
            ? _value.bidCount
            : bidCount // ignore: cast_nullable_to_non_nullable
                  as int,
        startTime: freezed == startTime
            ? _value.startTime
            : startTime // ignore: cast_nullable_to_non_nullable
                  as String?,
        endTime: freezed == endTime
            ? _value.endTime
            : endTime // ignore: cast_nullable_to_non_nullable
                  as String?,
        secondsRemaining: null == secondsRemaining
            ? _value.secondsRemaining
            : secondsRemaining // ignore: cast_nullable_to_non_nullable
                  as int,
        isLive: null == isLive
            ? _value.isLive
            : isLive // ignore: cast_nullable_to_non_nullable
                  as bool,
        isBiddable: null == isBiddable
            ? _value.isBiddable
            : isBiddable // ignore: cast_nullable_to_non_nullable
                  as bool,
        hasEnded: null == hasEnded
            ? _value.hasEnded
            : hasEnded // ignore: cast_nullable_to_non_nullable
                  as bool,
        requiresCommerceRegister: freezed == requiresCommerceRegister
            ? _value.requiresCommerceRegister
            : requiresCommerceRegister // ignore: cast_nullable_to_non_nullable
                  as bool?,
        finalPrice: freezed == finalPrice
            ? _value.finalPrice
            : finalPrice // ignore: cast_nullable_to_non_nullable
                  as MoneyModel?,
        closedAt: freezed == closedAt
            ? _value.closedAt
            : closedAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        myHighestBid: freezed == myHighestBid
            ? _value.myHighestBid
            : myHighestBid // ignore: cast_nullable_to_non_nullable
                  as MoneyModel?,
        isWinning: freezed == isWinning
            ? _value.isWinning
            : isWinning // ignore: cast_nullable_to_non_nullable
                  as bool?,
        isWinner: freezed == isWinner
            ? _value.isWinner
            : isWinner // ignore: cast_nullable_to_non_nullable
                  as bool?,
        depositPaid: freezed == depositPaid
            ? _value.depositPaid
            : depositPaid // ignore: cast_nullable_to_non_nullable
                  as bool?,
        bookPurchased: freezed == bookPurchased
            ? _value.bookPurchased
            : bookPurchased // ignore: cast_nullable_to_non_nullable
                  as bool?,
        registeredAt: freezed == registeredAt
            ? _value.registeredAt
            : registeredAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        finalPaymentStatus: freezed == finalPaymentStatus
            ? _value.finalPaymentStatus
            : finalPaymentStatus // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AuctionListModelImpl extends _AuctionListModel {
  const _$AuctionListModelImpl({
    required this.id,
    this.title,
    @JsonKey(name: 'cover_photo_url') this.coverPhotoUrl,
    this.status,
    @JsonKey(name: 'auction_type') this.auctionType,
    @JsonKey(name: 'asset_class') this.assetClass,
    this.category,
    this.wilaya,
    @JsonKey(name: 'opening_price') this.openingPrice,
    @JsonKey(name: 'current_price') this.currentPrice,
    @JsonKey(name: 'bid_count') this.bidCount = 0,
    @JsonKey(name: 'start_time') this.startTime,
    @JsonKey(name: 'end_time') this.endTime,
    @JsonKey(name: 'seconds_remaining') this.secondsRemaining = 0,
    @JsonKey(name: 'is_live') this.isLive = false,
    @JsonKey(name: 'is_biddable') this.isBiddable = false,
    @JsonKey(name: 'has_ended') this.hasEnded = false,
    @JsonKey(name: 'requires_commerce_register') this.requiresCommerceRegister,
    @JsonKey(name: 'final_price') this.finalPrice,
    @JsonKey(name: 'closed_at') this.closedAt,
    @JsonKey(name: 'my_highest_bid') this.myHighestBid,
    @JsonKey(name: 'is_winning') this.isWinning,
    @JsonKey(name: 'is_winner') this.isWinner,
    @JsonKey(name: 'deposit_paid') this.depositPaid,
    @JsonKey(name: 'book_purchased') this.bookPurchased,
    @JsonKey(name: 'registered_at') this.registeredAt,
    @JsonKey(name: 'final_payment_status') this.finalPaymentStatus,
  }) : super._();

  factory _$AuctionListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuctionListModelImplFromJson(json);

  @override
  final String id;
  @override
  final String? title;
  @override
  @JsonKey(name: 'cover_photo_url')
  final String? coverPhotoUrl;
  @override
  final String? status;
  @override
  @JsonKey(name: 'auction_type')
  final String? auctionType;
  @override
  @JsonKey(name: 'asset_class')
  final String? assetClass;
  @override
  final NamedRefModel? category;
  @override
  final WilayaRefModel? wilaya;
  @override
  @JsonKey(name: 'opening_price')
  final MoneyModel? openingPrice;
  @override
  @JsonKey(name: 'current_price')
  final MoneyModel? currentPrice;
  @override
  @JsonKey(name: 'bid_count')
  final int bidCount;
  @override
  @JsonKey(name: 'start_time')
  final String? startTime;
  @override
  @JsonKey(name: 'end_time')
  final String? endTime;
  @override
  @JsonKey(name: 'seconds_remaining')
  final int secondsRemaining;
  @override
  @JsonKey(name: 'is_live')
  final bool isLive;
  @override
  @JsonKey(name: 'is_biddable')
  final bool isBiddable;
  @override
  @JsonKey(name: 'has_ended')
  final bool hasEnded;
  @override
  @JsonKey(name: 'requires_commerce_register')
  final bool? requiresCommerceRegister;
  // نتيجة الإقفال — null قبل ما المزاد يقفل.
  @override
  @JsonKey(name: 'final_price')
  final MoneyModel? finalPrice;
  @override
  @JsonKey(name: 'closed_at')
  final String? closedAt;
  // ===== حالة مشاركة المستخدم — `/my-auctions` فقط =====
  // كلها nullable عن قصد: المفتاح بيغيب في باقي المسارات، وnull هنا
  // معناها «مش معروف» مش «لا».
  @override
  @JsonKey(name: 'my_highest_bid')
  final MoneyModel? myHighestBid;
  @override
  @JsonKey(name: 'is_winning')
  final bool? isWinning;
  @override
  @JsonKey(name: 'is_winner')
  final bool? isWinner;
  @override
  @JsonKey(name: 'deposit_paid')
  final bool? depositPaid;
  @override
  @JsonKey(name: 'book_purchased')
  final bool? bookPurchased;
  @override
  @JsonKey(name: 'registered_at')
  final String? registeredAt;
  @override
  @JsonKey(name: 'final_payment_status')
  final String? finalPaymentStatus;

  @override
  String toString() {
    return 'AuctionListModel(id: $id, title: $title, coverPhotoUrl: $coverPhotoUrl, status: $status, auctionType: $auctionType, assetClass: $assetClass, category: $category, wilaya: $wilaya, openingPrice: $openingPrice, currentPrice: $currentPrice, bidCount: $bidCount, startTime: $startTime, endTime: $endTime, secondsRemaining: $secondsRemaining, isLive: $isLive, isBiddable: $isBiddable, hasEnded: $hasEnded, requiresCommerceRegister: $requiresCommerceRegister, finalPrice: $finalPrice, closedAt: $closedAt, myHighestBid: $myHighestBid, isWinning: $isWinning, isWinner: $isWinner, depositPaid: $depositPaid, bookPurchased: $bookPurchased, registeredAt: $registeredAt, finalPaymentStatus: $finalPaymentStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuctionListModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.coverPhotoUrl, coverPhotoUrl) ||
                other.coverPhotoUrl == coverPhotoUrl) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.auctionType, auctionType) ||
                other.auctionType == auctionType) &&
            (identical(other.assetClass, assetClass) ||
                other.assetClass == assetClass) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.wilaya, wilaya) || other.wilaya == wilaya) &&
            (identical(other.openingPrice, openingPrice) ||
                other.openingPrice == openingPrice) &&
            (identical(other.currentPrice, currentPrice) ||
                other.currentPrice == currentPrice) &&
            (identical(other.bidCount, bidCount) ||
                other.bidCount == bidCount) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.secondsRemaining, secondsRemaining) ||
                other.secondsRemaining == secondsRemaining) &&
            (identical(other.isLive, isLive) || other.isLive == isLive) &&
            (identical(other.isBiddable, isBiddable) ||
                other.isBiddable == isBiddable) &&
            (identical(other.hasEnded, hasEnded) ||
                other.hasEnded == hasEnded) &&
            (identical(
                  other.requiresCommerceRegister,
                  requiresCommerceRegister,
                ) ||
                other.requiresCommerceRegister == requiresCommerceRegister) &&
            (identical(other.finalPrice, finalPrice) ||
                other.finalPrice == finalPrice) &&
            (identical(other.closedAt, closedAt) ||
                other.closedAt == closedAt) &&
            (identical(other.myHighestBid, myHighestBid) ||
                other.myHighestBid == myHighestBid) &&
            (identical(other.isWinning, isWinning) ||
                other.isWinning == isWinning) &&
            (identical(other.isWinner, isWinner) ||
                other.isWinner == isWinner) &&
            (identical(other.depositPaid, depositPaid) ||
                other.depositPaid == depositPaid) &&
            (identical(other.bookPurchased, bookPurchased) ||
                other.bookPurchased == bookPurchased) &&
            (identical(other.registeredAt, registeredAt) ||
                other.registeredAt == registeredAt) &&
            (identical(other.finalPaymentStatus, finalPaymentStatus) ||
                other.finalPaymentStatus == finalPaymentStatus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    id,
    title,
    coverPhotoUrl,
    status,
    auctionType,
    assetClass,
    category,
    wilaya,
    openingPrice,
    currentPrice,
    bidCount,
    startTime,
    endTime,
    secondsRemaining,
    isLive,
    isBiddable,
    hasEnded,
    requiresCommerceRegister,
    finalPrice,
    closedAt,
    myHighestBid,
    isWinning,
    isWinner,
    depositPaid,
    bookPurchased,
    registeredAt,
    finalPaymentStatus,
  ]);

  /// Create a copy of AuctionListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuctionListModelImplCopyWith<_$AuctionListModelImpl> get copyWith =>
      __$$AuctionListModelImplCopyWithImpl<_$AuctionListModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AuctionListModelImplToJson(this);
  }
}

abstract class _AuctionListModel extends AuctionListModel {
  const factory _AuctionListModel({
    required final String id,
    final String? title,
    @JsonKey(name: 'cover_photo_url') final String? coverPhotoUrl,
    final String? status,
    @JsonKey(name: 'auction_type') final String? auctionType,
    @JsonKey(name: 'asset_class') final String? assetClass,
    final NamedRefModel? category,
    final WilayaRefModel? wilaya,
    @JsonKey(name: 'opening_price') final MoneyModel? openingPrice,
    @JsonKey(name: 'current_price') final MoneyModel? currentPrice,
    @JsonKey(name: 'bid_count') final int bidCount,
    @JsonKey(name: 'start_time') final String? startTime,
    @JsonKey(name: 'end_time') final String? endTime,
    @JsonKey(name: 'seconds_remaining') final int secondsRemaining,
    @JsonKey(name: 'is_live') final bool isLive,
    @JsonKey(name: 'is_biddable') final bool isBiddable,
    @JsonKey(name: 'has_ended') final bool hasEnded,
    @JsonKey(name: 'requires_commerce_register')
    final bool? requiresCommerceRegister,
    @JsonKey(name: 'final_price') final MoneyModel? finalPrice,
    @JsonKey(name: 'closed_at') final String? closedAt,
    @JsonKey(name: 'my_highest_bid') final MoneyModel? myHighestBid,
    @JsonKey(name: 'is_winning') final bool? isWinning,
    @JsonKey(name: 'is_winner') final bool? isWinner,
    @JsonKey(name: 'deposit_paid') final bool? depositPaid,
    @JsonKey(name: 'book_purchased') final bool? bookPurchased,
    @JsonKey(name: 'registered_at') final String? registeredAt,
    @JsonKey(name: 'final_payment_status') final String? finalPaymentStatus,
  }) = _$AuctionListModelImpl;
  const _AuctionListModel._() : super._();

  factory _AuctionListModel.fromJson(Map<String, dynamic> json) =
      _$AuctionListModelImpl.fromJson;

  @override
  String get id;
  @override
  String? get title;
  @override
  @JsonKey(name: 'cover_photo_url')
  String? get coverPhotoUrl;
  @override
  String? get status;
  @override
  @JsonKey(name: 'auction_type')
  String? get auctionType;
  @override
  @JsonKey(name: 'asset_class')
  String? get assetClass;
  @override
  NamedRefModel? get category;
  @override
  WilayaRefModel? get wilaya;
  @override
  @JsonKey(name: 'opening_price')
  MoneyModel? get openingPrice;
  @override
  @JsonKey(name: 'current_price')
  MoneyModel? get currentPrice;
  @override
  @JsonKey(name: 'bid_count')
  int get bidCount;
  @override
  @JsonKey(name: 'start_time')
  String? get startTime;
  @override
  @JsonKey(name: 'end_time')
  String? get endTime;
  @override
  @JsonKey(name: 'seconds_remaining')
  int get secondsRemaining;
  @override
  @JsonKey(name: 'is_live')
  bool get isLive;
  @override
  @JsonKey(name: 'is_biddable')
  bool get isBiddable;
  @override
  @JsonKey(name: 'has_ended')
  bool get hasEnded;
  @override
  @JsonKey(name: 'requires_commerce_register')
  bool? get requiresCommerceRegister; // نتيجة الإقفال — null قبل ما المزاد يقفل.
  @override
  @JsonKey(name: 'final_price')
  MoneyModel? get finalPrice;
  @override
  @JsonKey(name: 'closed_at')
  String? get closedAt; // ===== حالة مشاركة المستخدم — `/my-auctions` فقط =====
  // كلها nullable عن قصد: المفتاح بيغيب في باقي المسارات، وnull هنا
  // معناها «مش معروف» مش «لا».
  @override
  @JsonKey(name: 'my_highest_bid')
  MoneyModel? get myHighestBid;
  @override
  @JsonKey(name: 'is_winning')
  bool? get isWinning;
  @override
  @JsonKey(name: 'is_winner')
  bool? get isWinner;
  @override
  @JsonKey(name: 'deposit_paid')
  bool? get depositPaid;
  @override
  @JsonKey(name: 'book_purchased')
  bool? get bookPurchased;
  @override
  @JsonKey(name: 'registered_at')
  String? get registeredAt;
  @override
  @JsonKey(name: 'final_payment_status')
  String? get finalPaymentStatus;

  /// Create a copy of AuctionListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuctionListModelImplCopyWith<_$AuctionListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
