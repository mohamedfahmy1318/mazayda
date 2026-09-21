// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bid_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BidEntryModel {

 MoneyModel? get amount;@JsonKey(name: 'bidder_alias') String? get bidderAlias;@JsonKey(name: 'bid_time') String? get bidTime;
/// Create a copy of BidEntryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BidEntryModelCopyWith<BidEntryModel> get copyWith => _$BidEntryModelCopyWithImpl<BidEntryModel>(this as BidEntryModel, _$identity);

  /// Serializes this BidEntryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as BidEntryModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BidEntryModel&&(identical(other.amount, _this.amount) || other.amount == _this.amount)&&(identical(other.bidderAlias, _this.bidderAlias) || other.bidderAlias == _this.bidderAlias)&&(identical(other.bidTime, _this.bidTime) || other.bidTime == _this.bidTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as BidEntryModel;
  return Object.hash(runtimeType,_this.amount,_this.bidderAlias,_this.bidTime);
}

@override
String toString() {
  final _this = this as BidEntryModel;
  return 'BidEntryModel(amount: ${_this.amount}, bidderAlias: ${_this.bidderAlias}, bidTime: ${_this.bidTime})';
}


}

/// @nodoc
abstract mixin class $BidEntryModelCopyWith<$Res>  {
  factory $BidEntryModelCopyWith(BidEntryModel value, $Res Function(BidEntryModel) _then) = _$BidEntryModelCopyWithImpl;
@useResult
$Res call({
 MoneyModel? amount,@JsonKey(name: 'bidder_alias') String? bidderAlias,@JsonKey(name: 'bid_time') String? bidTime
});


$MoneyModelCopyWith<$Res>? get amount;

}
/// @nodoc
class _$BidEntryModelCopyWithImpl<$Res>
    implements $BidEntryModelCopyWith<$Res> {
  _$BidEntryModelCopyWithImpl(this._self, this._then);

  final BidEntryModel _self;
  final $Res Function(BidEntryModel) _then;

/// Create a copy of BidEntryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? amount = freezed,Object? bidderAlias = freezed,Object? bidTime = freezed,}) {
  return _then(BidEntryModel(
amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as MoneyModel?,bidderAlias: freezed == bidderAlias ? _self.bidderAlias : bidderAlias // ignore: cast_nullable_to_non_nullable
as String?,bidTime: freezed == bidTime ? _self.bidTime : bidTime // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of BidEntryModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyModelCopyWith<$Res>? get amount {
    if (_self.amount == null) {
    return null;
  }

  return $MoneyModelCopyWith<$Res>(_self.amount!, (value) {
    return _then(_self.copyWith(amount: value));
  });
}
}


/// Adds pattern-matching-related methods to [BidEntryModel].
extension BidEntryModelPatterns on BidEntryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BidEntryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BidEntryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BidEntryModel value)  $default,){
final _that = this;
switch (_that) {
case _BidEntryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BidEntryModel value)?  $default,){
final _that = this;
switch (_that) {
case _BidEntryModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( MoneyModel? amount, @JsonKey(name: 'bidder_alias')  String? bidderAlias, @JsonKey(name: 'bid_time')  String? bidTime)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BidEntryModel() when $default != null:
return $default(_that.amount,_that.bidderAlias,_that.bidTime);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( MoneyModel? amount, @JsonKey(name: 'bidder_alias')  String? bidderAlias, @JsonKey(name: 'bid_time')  String? bidTime)  $default,) {final _that = this;
switch (_that) {
case _BidEntryModel():
return $default(_that.amount,_that.bidderAlias,_that.bidTime);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( MoneyModel? amount, @JsonKey(name: 'bidder_alias')  String? bidderAlias, @JsonKey(name: 'bid_time')  String? bidTime)?  $default,) {final _that = this;
switch (_that) {
case _BidEntryModel() when $default != null:
return $default(_that.amount,_that.bidderAlias,_that.bidTime);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BidEntryModel extends BidEntryModel {
  const _BidEntryModel({this.amount, @JsonKey(name: 'bidder_alias') this.bidderAlias, @JsonKey(name: 'bid_time') this.bidTime}): super._();
  factory _BidEntryModel.fromJson(Map<String, dynamic> json) => _$BidEntryModelFromJson(json);

@override final  MoneyModel? amount;
@override@JsonKey(name: 'bidder_alias') final  String? bidderAlias;
@override@JsonKey(name: 'bid_time') final  String? bidTime;

/// Create a copy of BidEntryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BidEntryModelCopyWith<_BidEntryModel> get copyWith => __$BidEntryModelCopyWithImpl<_BidEntryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BidEntryModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _BidEntryModel&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.bidderAlias, bidderAlias) || other.bidderAlias == bidderAlias)&&(identical(other.bidTime, bidTime) || other.bidTime == bidTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,amount,bidderAlias,bidTime);
}

@override
String toString() {
    return 'BidEntryModel(amount: $amount, bidderAlias: $bidderAlias, bidTime: $bidTime)';
}


}

/// @nodoc
abstract mixin class _$BidEntryModelCopyWith<$Res> implements $BidEntryModelCopyWith<$Res> {
  factory _$BidEntryModelCopyWith(_BidEntryModel value, $Res Function(_BidEntryModel) _then) = __$BidEntryModelCopyWithImpl;
@override @useResult
$Res call({
 MoneyModel? amount,@JsonKey(name: 'bidder_alias') String? bidderAlias,@JsonKey(name: 'bid_time') String? bidTime
});


@override $MoneyModelCopyWith<$Res>? get amount;

}
/// @nodoc
class __$BidEntryModelCopyWithImpl<$Res>
    implements _$BidEntryModelCopyWith<$Res> {
  __$BidEntryModelCopyWithImpl(this._self, this._then);

  final _BidEntryModel _self;
  final $Res Function(_BidEntryModel) _then;

/// Create a copy of BidEntryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? amount = freezed,Object? bidderAlias = freezed,Object? bidTime = freezed,}) {
  return _then(_BidEntryModel(
amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as MoneyModel?,bidderAlias: freezed == bidderAlias ? _self.bidderAlias : bidderAlias // ignore: cast_nullable_to_non_nullable
as String?,bidTime: freezed == bidTime ? _self.bidTime : bidTime // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of BidEntryModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyModelCopyWith<$Res>? get amount {
    if (_self.amount == null) {
    return null;
  }

  return $MoneyModelCopyWith<$Res>(_self.amount!, (value) {
    return _then(_self.copyWith(amount: value));
  });
}
}


/// @nodoc
mixin _$PriceSnapshotModel {

@JsonKey(name: 'current_price') int get currentPrice;@JsonKey(name: 'current_price_formatted') String get currentPriceFormatted;@JsonKey(name: 'bid_count') int get bidCount; String get status;@JsonKey(name: 'end_time') String? get endTime;@JsonKey(name: 'is_biddable') bool get isBiddable;@JsonKey(name: 'has_ended') bool get hasEnded;@JsonKey(name: 'min_bid') MoneyModel? get minBid;@JsonKey(name: 'min_increment_percent') dynamic get minIncrementPercent;
/// Create a copy of PriceSnapshotModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PriceSnapshotModelCopyWith<PriceSnapshotModel> get copyWith => _$PriceSnapshotModelCopyWithImpl<PriceSnapshotModel>(this as PriceSnapshotModel, _$identity);

  /// Serializes this PriceSnapshotModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PriceSnapshotModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PriceSnapshotModel&&(identical(other.currentPrice, _this.currentPrice) || other.currentPrice == _this.currentPrice)&&(identical(other.currentPriceFormatted, _this.currentPriceFormatted) || other.currentPriceFormatted == _this.currentPriceFormatted)&&(identical(other.bidCount, _this.bidCount) || other.bidCount == _this.bidCount)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.endTime, _this.endTime) || other.endTime == _this.endTime)&&(identical(other.isBiddable, _this.isBiddable) || other.isBiddable == _this.isBiddable)&&(identical(other.hasEnded, _this.hasEnded) || other.hasEnded == _this.hasEnded)&&(identical(other.minBid, _this.minBid) || other.minBid == _this.minBid)&&const DeepCollectionEquality().equals(other.minIncrementPercent, _this.minIncrementPercent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PriceSnapshotModel;
  return Object.hash(runtimeType,_this.currentPrice,_this.currentPriceFormatted,_this.bidCount,_this.status,_this.endTime,_this.isBiddable,_this.hasEnded,_this.minBid,const DeepCollectionEquality().hash(_this.minIncrementPercent));
}

@override
String toString() {
  final _this = this as PriceSnapshotModel;
  return 'PriceSnapshotModel(currentPrice: ${_this.currentPrice}, currentPriceFormatted: ${_this.currentPriceFormatted}, bidCount: ${_this.bidCount}, status: ${_this.status}, endTime: ${_this.endTime}, isBiddable: ${_this.isBiddable}, hasEnded: ${_this.hasEnded}, minBid: ${_this.minBid}, minIncrementPercent: ${_this.minIncrementPercent})';
}


}

/// @nodoc
abstract mixin class $PriceSnapshotModelCopyWith<$Res>  {
  factory $PriceSnapshotModelCopyWith(PriceSnapshotModel value, $Res Function(PriceSnapshotModel) _then) = _$PriceSnapshotModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'current_price') int currentPrice,@JsonKey(name: 'current_price_formatted') String currentPriceFormatted,@JsonKey(name: 'bid_count') int bidCount, String status,@JsonKey(name: 'end_time') String? endTime,@JsonKey(name: 'is_biddable') bool isBiddable,@JsonKey(name: 'has_ended') bool hasEnded,@JsonKey(name: 'min_bid') MoneyModel? minBid,@JsonKey(name: 'min_increment_percent') dynamic minIncrementPercent
});


$MoneyModelCopyWith<$Res>? get minBid;

}
/// @nodoc
class _$PriceSnapshotModelCopyWithImpl<$Res>
    implements $PriceSnapshotModelCopyWith<$Res> {
  _$PriceSnapshotModelCopyWithImpl(this._self, this._then);

  final PriceSnapshotModel _self;
  final $Res Function(PriceSnapshotModel) _then;

/// Create a copy of PriceSnapshotModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentPrice = null,Object? currentPriceFormatted = null,Object? bidCount = null,Object? status = null,Object? endTime = freezed,Object? isBiddable = null,Object? hasEnded = null,Object? minBid = freezed,Object? minIncrementPercent = freezed,}) {
  return _then(PriceSnapshotModel(
currentPrice: null == currentPrice ? _self.currentPrice : currentPrice // ignore: cast_nullable_to_non_nullable
as int,currentPriceFormatted: null == currentPriceFormatted ? _self.currentPriceFormatted : currentPriceFormatted // ignore: cast_nullable_to_non_nullable
as String,bidCount: null == bidCount ? _self.bidCount : bidCount // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,endTime: freezed == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as String?,isBiddable: null == isBiddable ? _self.isBiddable : isBiddable // ignore: cast_nullable_to_non_nullable
as bool,hasEnded: null == hasEnded ? _self.hasEnded : hasEnded // ignore: cast_nullable_to_non_nullable
as bool,minBid: freezed == minBid ? _self.minBid : minBid // ignore: cast_nullable_to_non_nullable
as MoneyModel?,minIncrementPercent: freezed == minIncrementPercent ? _self.minIncrementPercent : minIncrementPercent // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}
/// Create a copy of PriceSnapshotModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyModelCopyWith<$Res>? get minBid {
    if (_self.minBid == null) {
    return null;
  }

  return $MoneyModelCopyWith<$Res>(_self.minBid!, (value) {
    return _then(_self.copyWith(minBid: value));
  });
}
}


/// Adds pattern-matching-related methods to [PriceSnapshotModel].
extension PriceSnapshotModelPatterns on PriceSnapshotModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PriceSnapshotModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PriceSnapshotModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PriceSnapshotModel value)  $default,){
final _that = this;
switch (_that) {
case _PriceSnapshotModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PriceSnapshotModel value)?  $default,){
final _that = this;
switch (_that) {
case _PriceSnapshotModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'current_price')  int currentPrice, @JsonKey(name: 'current_price_formatted')  String currentPriceFormatted, @JsonKey(name: 'bid_count')  int bidCount,  String status, @JsonKey(name: 'end_time')  String? endTime, @JsonKey(name: 'is_biddable')  bool isBiddable, @JsonKey(name: 'has_ended')  bool hasEnded, @JsonKey(name: 'min_bid')  MoneyModel? minBid, @JsonKey(name: 'min_increment_percent')  dynamic minIncrementPercent)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PriceSnapshotModel() when $default != null:
return $default(_that.currentPrice,_that.currentPriceFormatted,_that.bidCount,_that.status,_that.endTime,_that.isBiddable,_that.hasEnded,_that.minBid,_that.minIncrementPercent);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'current_price')  int currentPrice, @JsonKey(name: 'current_price_formatted')  String currentPriceFormatted, @JsonKey(name: 'bid_count')  int bidCount,  String status, @JsonKey(name: 'end_time')  String? endTime, @JsonKey(name: 'is_biddable')  bool isBiddable, @JsonKey(name: 'has_ended')  bool hasEnded, @JsonKey(name: 'min_bid')  MoneyModel? minBid, @JsonKey(name: 'min_increment_percent')  dynamic minIncrementPercent)  $default,) {final _that = this;
switch (_that) {
case _PriceSnapshotModel():
return $default(_that.currentPrice,_that.currentPriceFormatted,_that.bidCount,_that.status,_that.endTime,_that.isBiddable,_that.hasEnded,_that.minBid,_that.minIncrementPercent);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'current_price')  int currentPrice, @JsonKey(name: 'current_price_formatted')  String currentPriceFormatted, @JsonKey(name: 'bid_count')  int bidCount,  String status, @JsonKey(name: 'end_time')  String? endTime, @JsonKey(name: 'is_biddable')  bool isBiddable, @JsonKey(name: 'has_ended')  bool hasEnded, @JsonKey(name: 'min_bid')  MoneyModel? minBid, @JsonKey(name: 'min_increment_percent')  dynamic minIncrementPercent)?  $default,) {final _that = this;
switch (_that) {
case _PriceSnapshotModel() when $default != null:
return $default(_that.currentPrice,_that.currentPriceFormatted,_that.bidCount,_that.status,_that.endTime,_that.isBiddable,_that.hasEnded,_that.minBid,_that.minIncrementPercent);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PriceSnapshotModel extends PriceSnapshotModel {
  const _PriceSnapshotModel({@JsonKey(name: 'current_price') this.currentPrice = 0, @JsonKey(name: 'current_price_formatted') this.currentPriceFormatted = '', @JsonKey(name: 'bid_count') this.bidCount = 0, this.status = '', @JsonKey(name: 'end_time') this.endTime, @JsonKey(name: 'is_biddable') this.isBiddable = false, @JsonKey(name: 'has_ended') this.hasEnded = false, @JsonKey(name: 'min_bid') this.minBid, @JsonKey(name: 'min_increment_percent') this.minIncrementPercent}): super._();
  factory _PriceSnapshotModel.fromJson(Map<String, dynamic> json) => _$PriceSnapshotModelFromJson(json);

@override@JsonKey(name: 'current_price') final  int currentPrice;
@override@JsonKey(name: 'current_price_formatted') final  String currentPriceFormatted;
@override@JsonKey(name: 'bid_count') final  int bidCount;
@override@JsonKey() final  String status;
@override@JsonKey(name: 'end_time') final  String? endTime;
@override@JsonKey(name: 'is_biddable') final  bool isBiddable;
@override@JsonKey(name: 'has_ended') final  bool hasEnded;
@override@JsonKey(name: 'min_bid') final  MoneyModel? minBid;
@override@JsonKey(name: 'min_increment_percent') final  dynamic minIncrementPercent;

/// Create a copy of PriceSnapshotModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PriceSnapshotModelCopyWith<_PriceSnapshotModel> get copyWith => __$PriceSnapshotModelCopyWithImpl<_PriceSnapshotModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PriceSnapshotModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PriceSnapshotModel&&(identical(other.currentPrice, currentPrice) || other.currentPrice == currentPrice)&&(identical(other.currentPriceFormatted, currentPriceFormatted) || other.currentPriceFormatted == currentPriceFormatted)&&(identical(other.bidCount, bidCount) || other.bidCount == bidCount)&&(identical(other.status, status) || other.status == status)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.isBiddable, isBiddable) || other.isBiddable == isBiddable)&&(identical(other.hasEnded, hasEnded) || other.hasEnded == hasEnded)&&(identical(other.minBid, minBid) || other.minBid == minBid)&&const DeepCollectionEquality().equals(other.minIncrementPercent, minIncrementPercent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,currentPrice,currentPriceFormatted,bidCount,status,endTime,isBiddable,hasEnded,minBid,const DeepCollectionEquality().hash(minIncrementPercent));
}

@override
String toString() {
    return 'PriceSnapshotModel(currentPrice: $currentPrice, currentPriceFormatted: $currentPriceFormatted, bidCount: $bidCount, status: $status, endTime: $endTime, isBiddable: $isBiddable, hasEnded: $hasEnded, minBid: $minBid, minIncrementPercent: $minIncrementPercent)';
}


}

/// @nodoc
abstract mixin class _$PriceSnapshotModelCopyWith<$Res> implements $PriceSnapshotModelCopyWith<$Res> {
  factory _$PriceSnapshotModelCopyWith(_PriceSnapshotModel value, $Res Function(_PriceSnapshotModel) _then) = __$PriceSnapshotModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'current_price') int currentPrice,@JsonKey(name: 'current_price_formatted') String currentPriceFormatted,@JsonKey(name: 'bid_count') int bidCount, String status,@JsonKey(name: 'end_time') String? endTime,@JsonKey(name: 'is_biddable') bool isBiddable,@JsonKey(name: 'has_ended') bool hasEnded,@JsonKey(name: 'min_bid') MoneyModel? minBid,@JsonKey(name: 'min_increment_percent') dynamic minIncrementPercent
});


@override $MoneyModelCopyWith<$Res>? get minBid;

}
/// @nodoc
class __$PriceSnapshotModelCopyWithImpl<$Res>
    implements _$PriceSnapshotModelCopyWith<$Res> {
  __$PriceSnapshotModelCopyWithImpl(this._self, this._then);

  final _PriceSnapshotModel _self;
  final $Res Function(_PriceSnapshotModel) _then;

/// Create a copy of PriceSnapshotModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentPrice = null,Object? currentPriceFormatted = null,Object? bidCount = null,Object? status = null,Object? endTime = freezed,Object? isBiddable = null,Object? hasEnded = null,Object? minBid = freezed,Object? minIncrementPercent = freezed,}) {
  return _then(_PriceSnapshotModel(
currentPrice: null == currentPrice ? _self.currentPrice : currentPrice // ignore: cast_nullable_to_non_nullable
as int,currentPriceFormatted: null == currentPriceFormatted ? _self.currentPriceFormatted : currentPriceFormatted // ignore: cast_nullable_to_non_nullable
as String,bidCount: null == bidCount ? _self.bidCount : bidCount // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,endTime: freezed == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as String?,isBiddable: null == isBiddable ? _self.isBiddable : isBiddable // ignore: cast_nullable_to_non_nullable
as bool,hasEnded: null == hasEnded ? _self.hasEnded : hasEnded // ignore: cast_nullable_to_non_nullable
as bool,minBid: freezed == minBid ? _self.minBid : minBid // ignore: cast_nullable_to_non_nullable
as MoneyModel?,minIncrementPercent: freezed == minIncrementPercent ? _self.minIncrementPercent : minIncrementPercent // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

/// Create a copy of PriceSnapshotModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyModelCopyWith<$Res>? get minBid {
    if (_self.minBid == null) {
    return null;
  }

  return $MoneyModelCopyWith<$Res>(_self.minBid!, (value) {
    return _then(_self.copyWith(minBid: value));
  });
}
}

// dart format on
