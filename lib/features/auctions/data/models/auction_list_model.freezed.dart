// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auction_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuctionListModel {

 String get id; String? get title;@JsonKey(name: 'cover_photo_url') String? get coverPhotoUrl; String? get status;@JsonKey(name: 'auction_type') String? get auctionType;@JsonKey(name: 'asset_class') String? get assetClass; NamedRefModel? get category; WilayaRefModel? get wilaya;@JsonKey(name: 'opening_price') MoneyModel? get openingPrice;@JsonKey(name: 'current_price') MoneyModel? get currentPrice;@JsonKey(name: 'bid_count') int get bidCount;@JsonKey(name: 'start_time') String? get startTime;@JsonKey(name: 'end_time') String? get endTime;@JsonKey(name: 'seconds_remaining') int get secondsRemaining;@JsonKey(name: 'is_live') bool get isLive;@JsonKey(name: 'is_biddable') bool get isBiddable;@JsonKey(name: 'has_ended') bool get hasEnded;@JsonKey(name: 'requires_commerce_register') bool? get requiresCommerceRegister;@JsonKey(name: 'final_price') MoneyModel? get finalPrice;@JsonKey(name: 'closed_at') String? get closedAt;@JsonKey(name: 'my_highest_bid') MoneyModel? get myHighestBid;@JsonKey(name: 'is_winning') bool? get isWinning;@JsonKey(name: 'is_winner') bool? get isWinner;@JsonKey(name: 'deposit_paid') bool? get depositPaid;@JsonKey(name: 'book_purchased') bool? get bookPurchased;@JsonKey(name: 'registered_at') String? get registeredAt;@JsonKey(name: 'final_payment_status') String? get finalPaymentStatus;@JsonKey(name: 'session_round') int? get sessionRound;@JsonKey(name: 'publication_priority') String? get publicationPriority;
/// Create a copy of AuctionListModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuctionListModelCopyWith<AuctionListModel> get copyWith => _$AuctionListModelCopyWithImpl<AuctionListModel>(this as AuctionListModel, _$identity);

  /// Serializes this AuctionListModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AuctionListModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuctionListModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.title, _this.title) || other.title == _this.title)&&(identical(other.coverPhotoUrl, _this.coverPhotoUrl) || other.coverPhotoUrl == _this.coverPhotoUrl)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.auctionType, _this.auctionType) || other.auctionType == _this.auctionType)&&(identical(other.assetClass, _this.assetClass) || other.assetClass == _this.assetClass)&&(identical(other.category, _this.category) || other.category == _this.category)&&(identical(other.wilaya, _this.wilaya) || other.wilaya == _this.wilaya)&&(identical(other.openingPrice, _this.openingPrice) || other.openingPrice == _this.openingPrice)&&(identical(other.currentPrice, _this.currentPrice) || other.currentPrice == _this.currentPrice)&&(identical(other.bidCount, _this.bidCount) || other.bidCount == _this.bidCount)&&(identical(other.startTime, _this.startTime) || other.startTime == _this.startTime)&&(identical(other.endTime, _this.endTime) || other.endTime == _this.endTime)&&(identical(other.secondsRemaining, _this.secondsRemaining) || other.secondsRemaining == _this.secondsRemaining)&&(identical(other.isLive, _this.isLive) || other.isLive == _this.isLive)&&(identical(other.isBiddable, _this.isBiddable) || other.isBiddable == _this.isBiddable)&&(identical(other.hasEnded, _this.hasEnded) || other.hasEnded == _this.hasEnded)&&(identical(other.requiresCommerceRegister, _this.requiresCommerceRegister) || other.requiresCommerceRegister == _this.requiresCommerceRegister)&&(identical(other.finalPrice, _this.finalPrice) || other.finalPrice == _this.finalPrice)&&(identical(other.closedAt, _this.closedAt) || other.closedAt == _this.closedAt)&&(identical(other.myHighestBid, _this.myHighestBid) || other.myHighestBid == _this.myHighestBid)&&(identical(other.isWinning, _this.isWinning) || other.isWinning == _this.isWinning)&&(identical(other.isWinner, _this.isWinner) || other.isWinner == _this.isWinner)&&(identical(other.depositPaid, _this.depositPaid) || other.depositPaid == _this.depositPaid)&&(identical(other.bookPurchased, _this.bookPurchased) || other.bookPurchased == _this.bookPurchased)&&(identical(other.registeredAt, _this.registeredAt) || other.registeredAt == _this.registeredAt)&&(identical(other.finalPaymentStatus, _this.finalPaymentStatus) || other.finalPaymentStatus == _this.finalPaymentStatus)&&(identical(other.sessionRound, _this.sessionRound) || other.sessionRound == _this.sessionRound)&&(identical(other.publicationPriority, _this.publicationPriority) || other.publicationPriority == _this.publicationPriority));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AuctionListModel;
  return Object.hashAll([runtimeType,_this.id,_this.title,_this.coverPhotoUrl,_this.status,_this.auctionType,_this.assetClass,_this.category,_this.wilaya,_this.openingPrice,_this.currentPrice,_this.bidCount,_this.startTime,_this.endTime,_this.secondsRemaining,_this.isLive,_this.isBiddable,_this.hasEnded,_this.requiresCommerceRegister,_this.finalPrice,_this.closedAt,_this.myHighestBid,_this.isWinning,_this.isWinner,_this.depositPaid,_this.bookPurchased,_this.registeredAt,_this.finalPaymentStatus,_this.sessionRound,_this.publicationPriority]);
}

@override
String toString() {
  final _this = this as AuctionListModel;
  return 'AuctionListModel(id: ${_this.id}, title: ${_this.title}, coverPhotoUrl: ${_this.coverPhotoUrl}, status: ${_this.status}, auctionType: ${_this.auctionType}, assetClass: ${_this.assetClass}, category: ${_this.category}, wilaya: ${_this.wilaya}, openingPrice: ${_this.openingPrice}, currentPrice: ${_this.currentPrice}, bidCount: ${_this.bidCount}, startTime: ${_this.startTime}, endTime: ${_this.endTime}, secondsRemaining: ${_this.secondsRemaining}, isLive: ${_this.isLive}, isBiddable: ${_this.isBiddable}, hasEnded: ${_this.hasEnded}, requiresCommerceRegister: ${_this.requiresCommerceRegister}, finalPrice: ${_this.finalPrice}, closedAt: ${_this.closedAt}, myHighestBid: ${_this.myHighestBid}, isWinning: ${_this.isWinning}, isWinner: ${_this.isWinner}, depositPaid: ${_this.depositPaid}, bookPurchased: ${_this.bookPurchased}, registeredAt: ${_this.registeredAt}, finalPaymentStatus: ${_this.finalPaymentStatus}, sessionRound: ${_this.sessionRound}, publicationPriority: ${_this.publicationPriority})';
}


}

/// @nodoc
abstract mixin class $AuctionListModelCopyWith<$Res>  {
  factory $AuctionListModelCopyWith(AuctionListModel value, $Res Function(AuctionListModel) _then) = _$AuctionListModelCopyWithImpl;
@useResult
$Res call({
 String id, String? title,@JsonKey(name: 'cover_photo_url') String? coverPhotoUrl, String? status,@JsonKey(name: 'auction_type') String? auctionType,@JsonKey(name: 'asset_class') String? assetClass, NamedRefModel? category, WilayaRefModel? wilaya,@JsonKey(name: 'opening_price') MoneyModel? openingPrice,@JsonKey(name: 'current_price') MoneyModel? currentPrice,@JsonKey(name: 'bid_count') int bidCount,@JsonKey(name: 'start_time') String? startTime,@JsonKey(name: 'end_time') String? endTime,@JsonKey(name: 'seconds_remaining') int secondsRemaining,@JsonKey(name: 'is_live') bool isLive,@JsonKey(name: 'is_biddable') bool isBiddable,@JsonKey(name: 'has_ended') bool hasEnded,@JsonKey(name: 'requires_commerce_register') bool? requiresCommerceRegister,@JsonKey(name: 'final_price') MoneyModel? finalPrice,@JsonKey(name: 'closed_at') String? closedAt,@JsonKey(name: 'my_highest_bid') MoneyModel? myHighestBid,@JsonKey(name: 'is_winning') bool? isWinning,@JsonKey(name: 'is_winner') bool? isWinner,@JsonKey(name: 'deposit_paid') bool? depositPaid,@JsonKey(name: 'book_purchased') bool? bookPurchased,@JsonKey(name: 'registered_at') String? registeredAt,@JsonKey(name: 'final_payment_status') String? finalPaymentStatus,@JsonKey(name: 'session_round') int? sessionRound,@JsonKey(name: 'publication_priority') String? publicationPriority
});


$NamedRefModelCopyWith<$Res>? get category;$WilayaRefModelCopyWith<$Res>? get wilaya;$MoneyModelCopyWith<$Res>? get openingPrice;$MoneyModelCopyWith<$Res>? get currentPrice;$MoneyModelCopyWith<$Res>? get finalPrice;$MoneyModelCopyWith<$Res>? get myHighestBid;

}
/// @nodoc
class _$AuctionListModelCopyWithImpl<$Res>
    implements $AuctionListModelCopyWith<$Res> {
  _$AuctionListModelCopyWithImpl(this._self, this._then);

  final AuctionListModel _self;
  final $Res Function(AuctionListModel) _then;

/// Create a copy of AuctionListModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = freezed,Object? coverPhotoUrl = freezed,Object? status = freezed,Object? auctionType = freezed,Object? assetClass = freezed,Object? category = freezed,Object? wilaya = freezed,Object? openingPrice = freezed,Object? currentPrice = freezed,Object? bidCount = null,Object? startTime = freezed,Object? endTime = freezed,Object? secondsRemaining = null,Object? isLive = null,Object? isBiddable = null,Object? hasEnded = null,Object? requiresCommerceRegister = freezed,Object? finalPrice = freezed,Object? closedAt = freezed,Object? myHighestBid = freezed,Object? isWinning = freezed,Object? isWinner = freezed,Object? depositPaid = freezed,Object? bookPurchased = freezed,Object? registeredAt = freezed,Object? finalPaymentStatus = freezed,Object? sessionRound = freezed,Object? publicationPriority = freezed,}) {
  return _then(AuctionListModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,coverPhotoUrl: freezed == coverPhotoUrl ? _self.coverPhotoUrl : coverPhotoUrl // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,auctionType: freezed == auctionType ? _self.auctionType : auctionType // ignore: cast_nullable_to_non_nullable
as String?,assetClass: freezed == assetClass ? _self.assetClass : assetClass // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as NamedRefModel?,wilaya: freezed == wilaya ? _self.wilaya : wilaya // ignore: cast_nullable_to_non_nullable
as WilayaRefModel?,openingPrice: freezed == openingPrice ? _self.openingPrice : openingPrice // ignore: cast_nullable_to_non_nullable
as MoneyModel?,currentPrice: freezed == currentPrice ? _self.currentPrice : currentPrice // ignore: cast_nullable_to_non_nullable
as MoneyModel?,bidCount: null == bidCount ? _self.bidCount : bidCount // ignore: cast_nullable_to_non_nullable
as int,startTime: freezed == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String?,endTime: freezed == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as String?,secondsRemaining: null == secondsRemaining ? _self.secondsRemaining : secondsRemaining // ignore: cast_nullable_to_non_nullable
as int,isLive: null == isLive ? _self.isLive : isLive // ignore: cast_nullable_to_non_nullable
as bool,isBiddable: null == isBiddable ? _self.isBiddable : isBiddable // ignore: cast_nullable_to_non_nullable
as bool,hasEnded: null == hasEnded ? _self.hasEnded : hasEnded // ignore: cast_nullable_to_non_nullable
as bool,requiresCommerceRegister: freezed == requiresCommerceRegister ? _self.requiresCommerceRegister : requiresCommerceRegister // ignore: cast_nullable_to_non_nullable
as bool?,finalPrice: freezed == finalPrice ? _self.finalPrice : finalPrice // ignore: cast_nullable_to_non_nullable
as MoneyModel?,closedAt: freezed == closedAt ? _self.closedAt : closedAt // ignore: cast_nullable_to_non_nullable
as String?,myHighestBid: freezed == myHighestBid ? _self.myHighestBid : myHighestBid // ignore: cast_nullable_to_non_nullable
as MoneyModel?,isWinning: freezed == isWinning ? _self.isWinning : isWinning // ignore: cast_nullable_to_non_nullable
as bool?,isWinner: freezed == isWinner ? _self.isWinner : isWinner // ignore: cast_nullable_to_non_nullable
as bool?,depositPaid: freezed == depositPaid ? _self.depositPaid : depositPaid // ignore: cast_nullable_to_non_nullable
as bool?,bookPurchased: freezed == bookPurchased ? _self.bookPurchased : bookPurchased // ignore: cast_nullable_to_non_nullable
as bool?,registeredAt: freezed == registeredAt ? _self.registeredAt : registeredAt // ignore: cast_nullable_to_non_nullable
as String?,finalPaymentStatus: freezed == finalPaymentStatus ? _self.finalPaymentStatus : finalPaymentStatus // ignore: cast_nullable_to_non_nullable
as String?,sessionRound: freezed == sessionRound ? _self.sessionRound : sessionRound // ignore: cast_nullable_to_non_nullable
as int?,publicationPriority: freezed == publicationPriority ? _self.publicationPriority : publicationPriority // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of AuctionListModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NamedRefModelCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $NamedRefModelCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}/// Create a copy of AuctionListModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WilayaRefModelCopyWith<$Res>? get wilaya {
    if (_self.wilaya == null) {
    return null;
  }

  return $WilayaRefModelCopyWith<$Res>(_self.wilaya!, (value) {
    return _then(_self.copyWith(wilaya: value));
  });
}/// Create a copy of AuctionListModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyModelCopyWith<$Res>? get openingPrice {
    if (_self.openingPrice == null) {
    return null;
  }

  return $MoneyModelCopyWith<$Res>(_self.openingPrice!, (value) {
    return _then(_self.copyWith(openingPrice: value));
  });
}/// Create a copy of AuctionListModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyModelCopyWith<$Res>? get currentPrice {
    if (_self.currentPrice == null) {
    return null;
  }

  return $MoneyModelCopyWith<$Res>(_self.currentPrice!, (value) {
    return _then(_self.copyWith(currentPrice: value));
  });
}/// Create a copy of AuctionListModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyModelCopyWith<$Res>? get finalPrice {
    if (_self.finalPrice == null) {
    return null;
  }

  return $MoneyModelCopyWith<$Res>(_self.finalPrice!, (value) {
    return _then(_self.copyWith(finalPrice: value));
  });
}/// Create a copy of AuctionListModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyModelCopyWith<$Res>? get myHighestBid {
    if (_self.myHighestBid == null) {
    return null;
  }

  return $MoneyModelCopyWith<$Res>(_self.myHighestBid!, (value) {
    return _then(_self.copyWith(myHighestBid: value));
  });
}
}


/// Adds pattern-matching-related methods to [AuctionListModel].
extension AuctionListModelPatterns on AuctionListModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuctionListModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuctionListModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuctionListModel value)  $default,){
final _that = this;
switch (_that) {
case _AuctionListModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuctionListModel value)?  $default,){
final _that = this;
switch (_that) {
case _AuctionListModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String? title, @JsonKey(name: 'cover_photo_url')  String? coverPhotoUrl,  String? status, @JsonKey(name: 'auction_type')  String? auctionType, @JsonKey(name: 'asset_class')  String? assetClass,  NamedRefModel? category,  WilayaRefModel? wilaya, @JsonKey(name: 'opening_price')  MoneyModel? openingPrice, @JsonKey(name: 'current_price')  MoneyModel? currentPrice, @JsonKey(name: 'bid_count')  int bidCount, @JsonKey(name: 'start_time')  String? startTime, @JsonKey(name: 'end_time')  String? endTime, @JsonKey(name: 'seconds_remaining')  int secondsRemaining, @JsonKey(name: 'is_live')  bool isLive, @JsonKey(name: 'is_biddable')  bool isBiddable, @JsonKey(name: 'has_ended')  bool hasEnded, @JsonKey(name: 'requires_commerce_register')  bool? requiresCommerceRegister, @JsonKey(name: 'final_price')  MoneyModel? finalPrice, @JsonKey(name: 'closed_at')  String? closedAt, @JsonKey(name: 'my_highest_bid')  MoneyModel? myHighestBid, @JsonKey(name: 'is_winning')  bool? isWinning, @JsonKey(name: 'is_winner')  bool? isWinner, @JsonKey(name: 'deposit_paid')  bool? depositPaid, @JsonKey(name: 'book_purchased')  bool? bookPurchased, @JsonKey(name: 'registered_at')  String? registeredAt, @JsonKey(name: 'final_payment_status')  String? finalPaymentStatus, @JsonKey(name: 'session_round')  int? sessionRound, @JsonKey(name: 'publication_priority')  String? publicationPriority)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuctionListModel() when $default != null:
return $default(_that.id,_that.title,_that.coverPhotoUrl,_that.status,_that.auctionType,_that.assetClass,_that.category,_that.wilaya,_that.openingPrice,_that.currentPrice,_that.bidCount,_that.startTime,_that.endTime,_that.secondsRemaining,_that.isLive,_that.isBiddable,_that.hasEnded,_that.requiresCommerceRegister,_that.finalPrice,_that.closedAt,_that.myHighestBid,_that.isWinning,_that.isWinner,_that.depositPaid,_that.bookPurchased,_that.registeredAt,_that.finalPaymentStatus,_that.sessionRound,_that.publicationPriority);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String? title, @JsonKey(name: 'cover_photo_url')  String? coverPhotoUrl,  String? status, @JsonKey(name: 'auction_type')  String? auctionType, @JsonKey(name: 'asset_class')  String? assetClass,  NamedRefModel? category,  WilayaRefModel? wilaya, @JsonKey(name: 'opening_price')  MoneyModel? openingPrice, @JsonKey(name: 'current_price')  MoneyModel? currentPrice, @JsonKey(name: 'bid_count')  int bidCount, @JsonKey(name: 'start_time')  String? startTime, @JsonKey(name: 'end_time')  String? endTime, @JsonKey(name: 'seconds_remaining')  int secondsRemaining, @JsonKey(name: 'is_live')  bool isLive, @JsonKey(name: 'is_biddable')  bool isBiddable, @JsonKey(name: 'has_ended')  bool hasEnded, @JsonKey(name: 'requires_commerce_register')  bool? requiresCommerceRegister, @JsonKey(name: 'final_price')  MoneyModel? finalPrice, @JsonKey(name: 'closed_at')  String? closedAt, @JsonKey(name: 'my_highest_bid')  MoneyModel? myHighestBid, @JsonKey(name: 'is_winning')  bool? isWinning, @JsonKey(name: 'is_winner')  bool? isWinner, @JsonKey(name: 'deposit_paid')  bool? depositPaid, @JsonKey(name: 'book_purchased')  bool? bookPurchased, @JsonKey(name: 'registered_at')  String? registeredAt, @JsonKey(name: 'final_payment_status')  String? finalPaymentStatus, @JsonKey(name: 'session_round')  int? sessionRound, @JsonKey(name: 'publication_priority')  String? publicationPriority)  $default,) {final _that = this;
switch (_that) {
case _AuctionListModel():
return $default(_that.id,_that.title,_that.coverPhotoUrl,_that.status,_that.auctionType,_that.assetClass,_that.category,_that.wilaya,_that.openingPrice,_that.currentPrice,_that.bidCount,_that.startTime,_that.endTime,_that.secondsRemaining,_that.isLive,_that.isBiddable,_that.hasEnded,_that.requiresCommerceRegister,_that.finalPrice,_that.closedAt,_that.myHighestBid,_that.isWinning,_that.isWinner,_that.depositPaid,_that.bookPurchased,_that.registeredAt,_that.finalPaymentStatus,_that.sessionRound,_that.publicationPriority);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String? title, @JsonKey(name: 'cover_photo_url')  String? coverPhotoUrl,  String? status, @JsonKey(name: 'auction_type')  String? auctionType, @JsonKey(name: 'asset_class')  String? assetClass,  NamedRefModel? category,  WilayaRefModel? wilaya, @JsonKey(name: 'opening_price')  MoneyModel? openingPrice, @JsonKey(name: 'current_price')  MoneyModel? currentPrice, @JsonKey(name: 'bid_count')  int bidCount, @JsonKey(name: 'start_time')  String? startTime, @JsonKey(name: 'end_time')  String? endTime, @JsonKey(name: 'seconds_remaining')  int secondsRemaining, @JsonKey(name: 'is_live')  bool isLive, @JsonKey(name: 'is_biddable')  bool isBiddable, @JsonKey(name: 'has_ended')  bool hasEnded, @JsonKey(name: 'requires_commerce_register')  bool? requiresCommerceRegister, @JsonKey(name: 'final_price')  MoneyModel? finalPrice, @JsonKey(name: 'closed_at')  String? closedAt, @JsonKey(name: 'my_highest_bid')  MoneyModel? myHighestBid, @JsonKey(name: 'is_winning')  bool? isWinning, @JsonKey(name: 'is_winner')  bool? isWinner, @JsonKey(name: 'deposit_paid')  bool? depositPaid, @JsonKey(name: 'book_purchased')  bool? bookPurchased, @JsonKey(name: 'registered_at')  String? registeredAt, @JsonKey(name: 'final_payment_status')  String? finalPaymentStatus, @JsonKey(name: 'session_round')  int? sessionRound, @JsonKey(name: 'publication_priority')  String? publicationPriority)?  $default,) {final _that = this;
switch (_that) {
case _AuctionListModel() when $default != null:
return $default(_that.id,_that.title,_that.coverPhotoUrl,_that.status,_that.auctionType,_that.assetClass,_that.category,_that.wilaya,_that.openingPrice,_that.currentPrice,_that.bidCount,_that.startTime,_that.endTime,_that.secondsRemaining,_that.isLive,_that.isBiddable,_that.hasEnded,_that.requiresCommerceRegister,_that.finalPrice,_that.closedAt,_that.myHighestBid,_that.isWinning,_that.isWinner,_that.depositPaid,_that.bookPurchased,_that.registeredAt,_that.finalPaymentStatus,_that.sessionRound,_that.publicationPriority);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AuctionListModel extends AuctionListModel {
  const _AuctionListModel({required this.id, this.title, @JsonKey(name: 'cover_photo_url') this.coverPhotoUrl, this.status, @JsonKey(name: 'auction_type') this.auctionType, @JsonKey(name: 'asset_class') this.assetClass, this.category, this.wilaya, @JsonKey(name: 'opening_price') this.openingPrice, @JsonKey(name: 'current_price') this.currentPrice, @JsonKey(name: 'bid_count') this.bidCount = 0, @JsonKey(name: 'start_time') this.startTime, @JsonKey(name: 'end_time') this.endTime, @JsonKey(name: 'seconds_remaining') this.secondsRemaining = 0, @JsonKey(name: 'is_live') this.isLive = false, @JsonKey(name: 'is_biddable') this.isBiddable = false, @JsonKey(name: 'has_ended') this.hasEnded = false, @JsonKey(name: 'requires_commerce_register') this.requiresCommerceRegister, @JsonKey(name: 'final_price') this.finalPrice, @JsonKey(name: 'closed_at') this.closedAt, @JsonKey(name: 'my_highest_bid') this.myHighestBid, @JsonKey(name: 'is_winning') this.isWinning, @JsonKey(name: 'is_winner') this.isWinner, @JsonKey(name: 'deposit_paid') this.depositPaid, @JsonKey(name: 'book_purchased') this.bookPurchased, @JsonKey(name: 'registered_at') this.registeredAt, @JsonKey(name: 'final_payment_status') this.finalPaymentStatus, @JsonKey(name: 'session_round') this.sessionRound, @JsonKey(name: 'publication_priority') this.publicationPriority}): super._();
  factory _AuctionListModel.fromJson(Map<String, dynamic> json) => _$AuctionListModelFromJson(json);

@override final  String id;
@override final  String? title;
@override@JsonKey(name: 'cover_photo_url') final  String? coverPhotoUrl;
@override final  String? status;
@override@JsonKey(name: 'auction_type') final  String? auctionType;
@override@JsonKey(name: 'asset_class') final  String? assetClass;
@override final  NamedRefModel? category;
@override final  WilayaRefModel? wilaya;
@override@JsonKey(name: 'opening_price') final  MoneyModel? openingPrice;
@override@JsonKey(name: 'current_price') final  MoneyModel? currentPrice;
@override@JsonKey(name: 'bid_count') final  int bidCount;
@override@JsonKey(name: 'start_time') final  String? startTime;
@override@JsonKey(name: 'end_time') final  String? endTime;
@override@JsonKey(name: 'seconds_remaining') final  int secondsRemaining;
@override@JsonKey(name: 'is_live') final  bool isLive;
@override@JsonKey(name: 'is_biddable') final  bool isBiddable;
@override@JsonKey(name: 'has_ended') final  bool hasEnded;
@override@JsonKey(name: 'requires_commerce_register') final  bool? requiresCommerceRegister;
@override@JsonKey(name: 'final_price') final  MoneyModel? finalPrice;
@override@JsonKey(name: 'closed_at') final  String? closedAt;
@override@JsonKey(name: 'my_highest_bid') final  MoneyModel? myHighestBid;
@override@JsonKey(name: 'is_winning') final  bool? isWinning;
@override@JsonKey(name: 'is_winner') final  bool? isWinner;
@override@JsonKey(name: 'deposit_paid') final  bool? depositPaid;
@override@JsonKey(name: 'book_purchased') final  bool? bookPurchased;
@override@JsonKey(name: 'registered_at') final  String? registeredAt;
@override@JsonKey(name: 'final_payment_status') final  String? finalPaymentStatus;
@override@JsonKey(name: 'session_round') final  int? sessionRound;
@override@JsonKey(name: 'publication_priority') final  String? publicationPriority;

/// Create a copy of AuctionListModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuctionListModelCopyWith<_AuctionListModel> get copyWith => __$AuctionListModelCopyWithImpl<_AuctionListModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuctionListModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuctionListModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.coverPhotoUrl, coverPhotoUrl) || other.coverPhotoUrl == coverPhotoUrl)&&(identical(other.status, status) || other.status == status)&&(identical(other.auctionType, auctionType) || other.auctionType == auctionType)&&(identical(other.assetClass, assetClass) || other.assetClass == assetClass)&&(identical(other.category, category) || other.category == category)&&(identical(other.wilaya, wilaya) || other.wilaya == wilaya)&&(identical(other.openingPrice, openingPrice) || other.openingPrice == openingPrice)&&(identical(other.currentPrice, currentPrice) || other.currentPrice == currentPrice)&&(identical(other.bidCount, bidCount) || other.bidCount == bidCount)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.secondsRemaining, secondsRemaining) || other.secondsRemaining == secondsRemaining)&&(identical(other.isLive, isLive) || other.isLive == isLive)&&(identical(other.isBiddable, isBiddable) || other.isBiddable == isBiddable)&&(identical(other.hasEnded, hasEnded) || other.hasEnded == hasEnded)&&(identical(other.requiresCommerceRegister, requiresCommerceRegister) || other.requiresCommerceRegister == requiresCommerceRegister)&&(identical(other.finalPrice, finalPrice) || other.finalPrice == finalPrice)&&(identical(other.closedAt, closedAt) || other.closedAt == closedAt)&&(identical(other.myHighestBid, myHighestBid) || other.myHighestBid == myHighestBid)&&(identical(other.isWinning, isWinning) || other.isWinning == isWinning)&&(identical(other.isWinner, isWinner) || other.isWinner == isWinner)&&(identical(other.depositPaid, depositPaid) || other.depositPaid == depositPaid)&&(identical(other.bookPurchased, bookPurchased) || other.bookPurchased == bookPurchased)&&(identical(other.registeredAt, registeredAt) || other.registeredAt == registeredAt)&&(identical(other.finalPaymentStatus, finalPaymentStatus) || other.finalPaymentStatus == finalPaymentStatus)&&(identical(other.sessionRound, sessionRound) || other.sessionRound == sessionRound)&&(identical(other.publicationPriority, publicationPriority) || other.publicationPriority == publicationPriority));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hashAll([runtimeType,id,title,coverPhotoUrl,status,auctionType,assetClass,category,wilaya,openingPrice,currentPrice,bidCount,startTime,endTime,secondsRemaining,isLive,isBiddable,hasEnded,requiresCommerceRegister,finalPrice,closedAt,myHighestBid,isWinning,isWinner,depositPaid,bookPurchased,registeredAt,finalPaymentStatus,sessionRound,publicationPriority]);
}

@override
String toString() {
    return 'AuctionListModel(id: $id, title: $title, coverPhotoUrl: $coverPhotoUrl, status: $status, auctionType: $auctionType, assetClass: $assetClass, category: $category, wilaya: $wilaya, openingPrice: $openingPrice, currentPrice: $currentPrice, bidCount: $bidCount, startTime: $startTime, endTime: $endTime, secondsRemaining: $secondsRemaining, isLive: $isLive, isBiddable: $isBiddable, hasEnded: $hasEnded, requiresCommerceRegister: $requiresCommerceRegister, finalPrice: $finalPrice, closedAt: $closedAt, myHighestBid: $myHighestBid, isWinning: $isWinning, isWinner: $isWinner, depositPaid: $depositPaid, bookPurchased: $bookPurchased, registeredAt: $registeredAt, finalPaymentStatus: $finalPaymentStatus, sessionRound: $sessionRound, publicationPriority: $publicationPriority)';
}


}

/// @nodoc
abstract mixin class _$AuctionListModelCopyWith<$Res> implements $AuctionListModelCopyWith<$Res> {
  factory _$AuctionListModelCopyWith(_AuctionListModel value, $Res Function(_AuctionListModel) _then) = __$AuctionListModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String? title,@JsonKey(name: 'cover_photo_url') String? coverPhotoUrl, String? status,@JsonKey(name: 'auction_type') String? auctionType,@JsonKey(name: 'asset_class') String? assetClass, NamedRefModel? category, WilayaRefModel? wilaya,@JsonKey(name: 'opening_price') MoneyModel? openingPrice,@JsonKey(name: 'current_price') MoneyModel? currentPrice,@JsonKey(name: 'bid_count') int bidCount,@JsonKey(name: 'start_time') String? startTime,@JsonKey(name: 'end_time') String? endTime,@JsonKey(name: 'seconds_remaining') int secondsRemaining,@JsonKey(name: 'is_live') bool isLive,@JsonKey(name: 'is_biddable') bool isBiddable,@JsonKey(name: 'has_ended') bool hasEnded,@JsonKey(name: 'requires_commerce_register') bool? requiresCommerceRegister,@JsonKey(name: 'final_price') MoneyModel? finalPrice,@JsonKey(name: 'closed_at') String? closedAt,@JsonKey(name: 'my_highest_bid') MoneyModel? myHighestBid,@JsonKey(name: 'is_winning') bool? isWinning,@JsonKey(name: 'is_winner') bool? isWinner,@JsonKey(name: 'deposit_paid') bool? depositPaid,@JsonKey(name: 'book_purchased') bool? bookPurchased,@JsonKey(name: 'registered_at') String? registeredAt,@JsonKey(name: 'final_payment_status') String? finalPaymentStatus,@JsonKey(name: 'session_round') int? sessionRound,@JsonKey(name: 'publication_priority') String? publicationPriority
});


@override $NamedRefModelCopyWith<$Res>? get category;@override $WilayaRefModelCopyWith<$Res>? get wilaya;@override $MoneyModelCopyWith<$Res>? get openingPrice;@override $MoneyModelCopyWith<$Res>? get currentPrice;@override $MoneyModelCopyWith<$Res>? get finalPrice;@override $MoneyModelCopyWith<$Res>? get myHighestBid;

}
/// @nodoc
class __$AuctionListModelCopyWithImpl<$Res>
    implements _$AuctionListModelCopyWith<$Res> {
  __$AuctionListModelCopyWithImpl(this._self, this._then);

  final _AuctionListModel _self;
  final $Res Function(_AuctionListModel) _then;

/// Create a copy of AuctionListModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = freezed,Object? coverPhotoUrl = freezed,Object? status = freezed,Object? auctionType = freezed,Object? assetClass = freezed,Object? category = freezed,Object? wilaya = freezed,Object? openingPrice = freezed,Object? currentPrice = freezed,Object? bidCount = null,Object? startTime = freezed,Object? endTime = freezed,Object? secondsRemaining = null,Object? isLive = null,Object? isBiddable = null,Object? hasEnded = null,Object? requiresCommerceRegister = freezed,Object? finalPrice = freezed,Object? closedAt = freezed,Object? myHighestBid = freezed,Object? isWinning = freezed,Object? isWinner = freezed,Object? depositPaid = freezed,Object? bookPurchased = freezed,Object? registeredAt = freezed,Object? finalPaymentStatus = freezed,Object? sessionRound = freezed,Object? publicationPriority = freezed,}) {
  return _then(_AuctionListModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,coverPhotoUrl: freezed == coverPhotoUrl ? _self.coverPhotoUrl : coverPhotoUrl // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,auctionType: freezed == auctionType ? _self.auctionType : auctionType // ignore: cast_nullable_to_non_nullable
as String?,assetClass: freezed == assetClass ? _self.assetClass : assetClass // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as NamedRefModel?,wilaya: freezed == wilaya ? _self.wilaya : wilaya // ignore: cast_nullable_to_non_nullable
as WilayaRefModel?,openingPrice: freezed == openingPrice ? _self.openingPrice : openingPrice // ignore: cast_nullable_to_non_nullable
as MoneyModel?,currentPrice: freezed == currentPrice ? _self.currentPrice : currentPrice // ignore: cast_nullable_to_non_nullable
as MoneyModel?,bidCount: null == bidCount ? _self.bidCount : bidCount // ignore: cast_nullable_to_non_nullable
as int,startTime: freezed == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String?,endTime: freezed == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as String?,secondsRemaining: null == secondsRemaining ? _self.secondsRemaining : secondsRemaining // ignore: cast_nullable_to_non_nullable
as int,isLive: null == isLive ? _self.isLive : isLive // ignore: cast_nullable_to_non_nullable
as bool,isBiddable: null == isBiddable ? _self.isBiddable : isBiddable // ignore: cast_nullable_to_non_nullable
as bool,hasEnded: null == hasEnded ? _self.hasEnded : hasEnded // ignore: cast_nullable_to_non_nullable
as bool,requiresCommerceRegister: freezed == requiresCommerceRegister ? _self.requiresCommerceRegister : requiresCommerceRegister // ignore: cast_nullable_to_non_nullable
as bool?,finalPrice: freezed == finalPrice ? _self.finalPrice : finalPrice // ignore: cast_nullable_to_non_nullable
as MoneyModel?,closedAt: freezed == closedAt ? _self.closedAt : closedAt // ignore: cast_nullable_to_non_nullable
as String?,myHighestBid: freezed == myHighestBid ? _self.myHighestBid : myHighestBid // ignore: cast_nullable_to_non_nullable
as MoneyModel?,isWinning: freezed == isWinning ? _self.isWinning : isWinning // ignore: cast_nullable_to_non_nullable
as bool?,isWinner: freezed == isWinner ? _self.isWinner : isWinner // ignore: cast_nullable_to_non_nullable
as bool?,depositPaid: freezed == depositPaid ? _self.depositPaid : depositPaid // ignore: cast_nullable_to_non_nullable
as bool?,bookPurchased: freezed == bookPurchased ? _self.bookPurchased : bookPurchased // ignore: cast_nullable_to_non_nullable
as bool?,registeredAt: freezed == registeredAt ? _self.registeredAt : registeredAt // ignore: cast_nullable_to_non_nullable
as String?,finalPaymentStatus: freezed == finalPaymentStatus ? _self.finalPaymentStatus : finalPaymentStatus // ignore: cast_nullable_to_non_nullable
as String?,sessionRound: freezed == sessionRound ? _self.sessionRound : sessionRound // ignore: cast_nullable_to_non_nullable
as int?,publicationPriority: freezed == publicationPriority ? _self.publicationPriority : publicationPriority // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of AuctionListModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NamedRefModelCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $NamedRefModelCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}/// Create a copy of AuctionListModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WilayaRefModelCopyWith<$Res>? get wilaya {
    if (_self.wilaya == null) {
    return null;
  }

  return $WilayaRefModelCopyWith<$Res>(_self.wilaya!, (value) {
    return _then(_self.copyWith(wilaya: value));
  });
}/// Create a copy of AuctionListModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyModelCopyWith<$Res>? get openingPrice {
    if (_self.openingPrice == null) {
    return null;
  }

  return $MoneyModelCopyWith<$Res>(_self.openingPrice!, (value) {
    return _then(_self.copyWith(openingPrice: value));
  });
}/// Create a copy of AuctionListModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyModelCopyWith<$Res>? get currentPrice {
    if (_self.currentPrice == null) {
    return null;
  }

  return $MoneyModelCopyWith<$Res>(_self.currentPrice!, (value) {
    return _then(_self.copyWith(currentPrice: value));
  });
}/// Create a copy of AuctionListModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyModelCopyWith<$Res>? get finalPrice {
    if (_self.finalPrice == null) {
    return null;
  }

  return $MoneyModelCopyWith<$Res>(_self.finalPrice!, (value) {
    return _then(_self.copyWith(finalPrice: value));
  });
}/// Create a copy of AuctionListModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyModelCopyWith<$Res>? get myHighestBid {
    if (_self.myHighestBid == null) {
    return null;
  }

  return $MoneyModelCopyWith<$Res>(_self.myHighestBid!, (value) {
    return _then(_self.copyWith(myHighestBid: value));
  });
}
}

// dart format on
