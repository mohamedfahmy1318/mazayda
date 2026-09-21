// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bidding_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BiddingState {

 bool get loading; List<BidEntry> get bids; int get currentPrice; String get currentPriceFormatted; int get bidCount; DateTime? get endTime; bool get isBiddable; bool get hasEnded; int? get minBid; String? get minBidFormatted; double? get minIncrementPercent; bool get placingBid; bool get isLive; String? get error; String? get bidError;
/// Create a copy of BiddingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BiddingStateCopyWith<BiddingState> get copyWith => _$BiddingStateCopyWithImpl<BiddingState>(this as BiddingState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as BiddingState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BiddingState&&(identical(other.loading, _this.loading) || other.loading == _this.loading)&&const DeepCollectionEquality().equals(other.bids, _this.bids)&&(identical(other.currentPrice, _this.currentPrice) || other.currentPrice == _this.currentPrice)&&(identical(other.currentPriceFormatted, _this.currentPriceFormatted) || other.currentPriceFormatted == _this.currentPriceFormatted)&&(identical(other.bidCount, _this.bidCount) || other.bidCount == _this.bidCount)&&(identical(other.endTime, _this.endTime) || other.endTime == _this.endTime)&&(identical(other.isBiddable, _this.isBiddable) || other.isBiddable == _this.isBiddable)&&(identical(other.hasEnded, _this.hasEnded) || other.hasEnded == _this.hasEnded)&&(identical(other.minBid, _this.minBid) || other.minBid == _this.minBid)&&(identical(other.minBidFormatted, _this.minBidFormatted) || other.minBidFormatted == _this.minBidFormatted)&&(identical(other.minIncrementPercent, _this.minIncrementPercent) || other.minIncrementPercent == _this.minIncrementPercent)&&(identical(other.placingBid, _this.placingBid) || other.placingBid == _this.placingBid)&&(identical(other.isLive, _this.isLive) || other.isLive == _this.isLive)&&(identical(other.error, _this.error) || other.error == _this.error)&&(identical(other.bidError, _this.bidError) || other.bidError == _this.bidError));
}


@override
int get hashCode {
  final _this = this as BiddingState;
  return Object.hash(runtimeType,_this.loading,const DeepCollectionEquality().hash(_this.bids),_this.currentPrice,_this.currentPriceFormatted,_this.bidCount,_this.endTime,_this.isBiddable,_this.hasEnded,_this.minBid,_this.minBidFormatted,_this.minIncrementPercent,_this.placingBid,_this.isLive,_this.error,_this.bidError);
}

@override
String toString() {
  final _this = this as BiddingState;
  return 'BiddingState(loading: ${_this.loading}, bids: ${_this.bids}, currentPrice: ${_this.currentPrice}, currentPriceFormatted: ${_this.currentPriceFormatted}, bidCount: ${_this.bidCount}, endTime: ${_this.endTime}, isBiddable: ${_this.isBiddable}, hasEnded: ${_this.hasEnded}, minBid: ${_this.minBid}, minBidFormatted: ${_this.minBidFormatted}, minIncrementPercent: ${_this.minIncrementPercent}, placingBid: ${_this.placingBid}, isLive: ${_this.isLive}, error: ${_this.error}, bidError: ${_this.bidError})';
}


}

/// @nodoc
abstract mixin class $BiddingStateCopyWith<$Res>  {
  factory $BiddingStateCopyWith(BiddingState value, $Res Function(BiddingState) _then) = _$BiddingStateCopyWithImpl;
@useResult
$Res call({
 bool loading, List<BidEntry> bids, int currentPrice, String currentPriceFormatted, int bidCount, DateTime? endTime, bool isBiddable, bool hasEnded, int? minBid, String? minBidFormatted, double? minIncrementPercent, bool placingBid, bool isLive, String? error, String? bidError
});




}
/// @nodoc
class _$BiddingStateCopyWithImpl<$Res>
    implements $BiddingStateCopyWith<$Res> {
  _$BiddingStateCopyWithImpl(this._self, this._then);

  final BiddingState _self;
  final $Res Function(BiddingState) _then;

/// Create a copy of BiddingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? loading = null,Object? bids = null,Object? currentPrice = null,Object? currentPriceFormatted = null,Object? bidCount = null,Object? endTime = freezed,Object? isBiddable = null,Object? hasEnded = null,Object? minBid = freezed,Object? minBidFormatted = freezed,Object? minIncrementPercent = freezed,Object? placingBid = null,Object? isLive = null,Object? error = freezed,Object? bidError = freezed,}) {
  return _then(BiddingState(
loading: null == loading ? _self.loading : loading // ignore: cast_nullable_to_non_nullable
as bool,bids: null == bids ? _self.bids : bids // ignore: cast_nullable_to_non_nullable
as List<BidEntry>,currentPrice: null == currentPrice ? _self.currentPrice : currentPrice // ignore: cast_nullable_to_non_nullable
as int,currentPriceFormatted: null == currentPriceFormatted ? _self.currentPriceFormatted : currentPriceFormatted // ignore: cast_nullable_to_non_nullable
as String,bidCount: null == bidCount ? _self.bidCount : bidCount // ignore: cast_nullable_to_non_nullable
as int,endTime: freezed == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as DateTime?,isBiddable: null == isBiddable ? _self.isBiddable : isBiddable // ignore: cast_nullable_to_non_nullable
as bool,hasEnded: null == hasEnded ? _self.hasEnded : hasEnded // ignore: cast_nullable_to_non_nullable
as bool,minBid: freezed == minBid ? _self.minBid : minBid // ignore: cast_nullable_to_non_nullable
as int?,minBidFormatted: freezed == minBidFormatted ? _self.minBidFormatted : minBidFormatted // ignore: cast_nullable_to_non_nullable
as String?,minIncrementPercent: freezed == minIncrementPercent ? _self.minIncrementPercent : minIncrementPercent // ignore: cast_nullable_to_non_nullable
as double?,placingBid: null == placingBid ? _self.placingBid : placingBid // ignore: cast_nullable_to_non_nullable
as bool,isLive: null == isLive ? _self.isLive : isLive // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,bidError: freezed == bidError ? _self.bidError : bidError // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [BiddingState].
extension BiddingStatePatterns on BiddingState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BiddingState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BiddingState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BiddingState value)  $default,){
final _that = this;
switch (_that) {
case _BiddingState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BiddingState value)?  $default,){
final _that = this;
switch (_that) {
case _BiddingState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool loading,  List<BidEntry> bids,  int currentPrice,  String currentPriceFormatted,  int bidCount,  DateTime? endTime,  bool isBiddable,  bool hasEnded,  int? minBid,  String? minBidFormatted,  double? minIncrementPercent,  bool placingBid,  bool isLive,  String? error,  String? bidError)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BiddingState() when $default != null:
return $default(_that.loading,_that.bids,_that.currentPrice,_that.currentPriceFormatted,_that.bidCount,_that.endTime,_that.isBiddable,_that.hasEnded,_that.minBid,_that.minBidFormatted,_that.minIncrementPercent,_that.placingBid,_that.isLive,_that.error,_that.bidError);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool loading,  List<BidEntry> bids,  int currentPrice,  String currentPriceFormatted,  int bidCount,  DateTime? endTime,  bool isBiddable,  bool hasEnded,  int? minBid,  String? minBidFormatted,  double? minIncrementPercent,  bool placingBid,  bool isLive,  String? error,  String? bidError)  $default,) {final _that = this;
switch (_that) {
case _BiddingState():
return $default(_that.loading,_that.bids,_that.currentPrice,_that.currentPriceFormatted,_that.bidCount,_that.endTime,_that.isBiddable,_that.hasEnded,_that.minBid,_that.minBidFormatted,_that.minIncrementPercent,_that.placingBid,_that.isLive,_that.error,_that.bidError);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool loading,  List<BidEntry> bids,  int currentPrice,  String currentPriceFormatted,  int bidCount,  DateTime? endTime,  bool isBiddable,  bool hasEnded,  int? minBid,  String? minBidFormatted,  double? minIncrementPercent,  bool placingBid,  bool isLive,  String? error,  String? bidError)?  $default,) {final _that = this;
switch (_that) {
case _BiddingState() when $default != null:
return $default(_that.loading,_that.bids,_that.currentPrice,_that.currentPriceFormatted,_that.bidCount,_that.endTime,_that.isBiddable,_that.hasEnded,_that.minBid,_that.minBidFormatted,_that.minIncrementPercent,_that.placingBid,_that.isLive,_that.error,_that.bidError);case _:
  return null;

}
}

}

/// @nodoc


class _BiddingState implements BiddingState {
  const _BiddingState({this.loading = true,  List<BidEntry> bids = const <BidEntry>[], this.currentPrice = 0, this.currentPriceFormatted = '', this.bidCount = 0, this.endTime, this.isBiddable = false, this.hasEnded = false, this.minBid, this.minBidFormatted, this.minIncrementPercent, this.placingBid = false, this.isLive = false, this.error, this.bidError}): _bids = bids;
  

@override@JsonKey() final  bool loading;
 final  List<BidEntry> _bids;
@override@JsonKey() List<BidEntry> get bids {
  if (_bids is EqualUnmodifiableListView) return _bids;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_bids);
}

@override@JsonKey() final  int currentPrice;
@override@JsonKey() final  String currentPriceFormatted;
@override@JsonKey() final  int bidCount;
@override final  DateTime? endTime;
@override@JsonKey() final  bool isBiddable;
@override@JsonKey() final  bool hasEnded;
@override final  int? minBid;
@override final  String? minBidFormatted;
@override final  double? minIncrementPercent;
@override@JsonKey() final  bool placingBid;
@override@JsonKey() final  bool isLive;
@override final  String? error;
@override final  String? bidError;

/// Create a copy of BiddingState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BiddingStateCopyWith<_BiddingState> get copyWith => __$BiddingStateCopyWithImpl<_BiddingState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _BiddingState&&(identical(other.loading, loading) || other.loading == loading)&&const DeepCollectionEquality().equals(other.bids, _bids)&&(identical(other.currentPrice, currentPrice) || other.currentPrice == currentPrice)&&(identical(other.currentPriceFormatted, currentPriceFormatted) || other.currentPriceFormatted == currentPriceFormatted)&&(identical(other.bidCount, bidCount) || other.bidCount == bidCount)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.isBiddable, isBiddable) || other.isBiddable == isBiddable)&&(identical(other.hasEnded, hasEnded) || other.hasEnded == hasEnded)&&(identical(other.minBid, minBid) || other.minBid == minBid)&&(identical(other.minBidFormatted, minBidFormatted) || other.minBidFormatted == minBidFormatted)&&(identical(other.minIncrementPercent, minIncrementPercent) || other.minIncrementPercent == minIncrementPercent)&&(identical(other.placingBid, placingBid) || other.placingBid == placingBid)&&(identical(other.isLive, isLive) || other.isLive == isLive)&&(identical(other.error, error) || other.error == error)&&(identical(other.bidError, bidError) || other.bidError == bidError));
}


@override
int get hashCode {
    return Object.hash(runtimeType,loading,const DeepCollectionEquality().hash(_bids),currentPrice,currentPriceFormatted,bidCount,endTime,isBiddable,hasEnded,minBid,minBidFormatted,minIncrementPercent,placingBid,isLive,error,bidError);
}

@override
String toString() {
    return 'BiddingState(loading: $loading, bids: $bids, currentPrice: $currentPrice, currentPriceFormatted: $currentPriceFormatted, bidCount: $bidCount, endTime: $endTime, isBiddable: $isBiddable, hasEnded: $hasEnded, minBid: $minBid, minBidFormatted: $minBidFormatted, minIncrementPercent: $minIncrementPercent, placingBid: $placingBid, isLive: $isLive, error: $error, bidError: $bidError)';
}


}

/// @nodoc
abstract mixin class _$BiddingStateCopyWith<$Res> implements $BiddingStateCopyWith<$Res> {
  factory _$BiddingStateCopyWith(_BiddingState value, $Res Function(_BiddingState) _then) = __$BiddingStateCopyWithImpl;
@override @useResult
$Res call({
 bool loading, List<BidEntry> bids, int currentPrice, String currentPriceFormatted, int bidCount, DateTime? endTime, bool isBiddable, bool hasEnded, int? minBid, String? minBidFormatted, double? minIncrementPercent, bool placingBid, bool isLive, String? error, String? bidError
});




}
/// @nodoc
class __$BiddingStateCopyWithImpl<$Res>
    implements _$BiddingStateCopyWith<$Res> {
  __$BiddingStateCopyWithImpl(this._self, this._then);

  final _BiddingState _self;
  final $Res Function(_BiddingState) _then;

/// Create a copy of BiddingState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? loading = null,Object? bids = null,Object? currentPrice = null,Object? currentPriceFormatted = null,Object? bidCount = null,Object? endTime = freezed,Object? isBiddable = null,Object? hasEnded = null,Object? minBid = freezed,Object? minBidFormatted = freezed,Object? minIncrementPercent = freezed,Object? placingBid = null,Object? isLive = null,Object? error = freezed,Object? bidError = freezed,}) {
  return _then(_BiddingState(
loading: null == loading ? _self.loading : loading // ignore: cast_nullable_to_non_nullable
as bool,bids: null == bids ? _self._bids : bids // ignore: cast_nullable_to_non_nullable
as List<BidEntry>,currentPrice: null == currentPrice ? _self.currentPrice : currentPrice // ignore: cast_nullable_to_non_nullable
as int,currentPriceFormatted: null == currentPriceFormatted ? _self.currentPriceFormatted : currentPriceFormatted // ignore: cast_nullable_to_non_nullable
as String,bidCount: null == bidCount ? _self.bidCount : bidCount // ignore: cast_nullable_to_non_nullable
as int,endTime: freezed == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as DateTime?,isBiddable: null == isBiddable ? _self.isBiddable : isBiddable // ignore: cast_nullable_to_non_nullable
as bool,hasEnded: null == hasEnded ? _self.hasEnded : hasEnded // ignore: cast_nullable_to_non_nullable
as bool,minBid: freezed == minBid ? _self.minBid : minBid // ignore: cast_nullable_to_non_nullable
as int?,minBidFormatted: freezed == minBidFormatted ? _self.minBidFormatted : minBidFormatted // ignore: cast_nullable_to_non_nullable
as String?,minIncrementPercent: freezed == minIncrementPercent ? _self.minIncrementPercent : minIncrementPercent // ignore: cast_nullable_to_non_nullable
as double?,placingBid: null == placingBid ? _self.placingBid : placingBid // ignore: cast_nullable_to_non_nullable
as bool,isLive: null == isLive ? _self.isLive : isLive // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,bidError: freezed == bidError ? _self.bidError : bidError // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
