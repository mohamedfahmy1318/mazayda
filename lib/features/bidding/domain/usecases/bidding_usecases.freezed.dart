// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bidding_usecases.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetBidsParams {

 String get auctionId; int get limit;
/// Create a copy of GetBidsParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetBidsParamsCopyWith<GetBidsParams> get copyWith => _$GetBidsParamsCopyWithImpl<GetBidsParams>(this as GetBidsParams, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as GetBidsParams;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetBidsParams&&(identical(other.auctionId, _this.auctionId) || other.auctionId == _this.auctionId)&&(identical(other.limit, _this.limit) || other.limit == _this.limit));
}


@override
int get hashCode {
  final _this = this as GetBidsParams;
  return Object.hash(runtimeType,_this.auctionId,_this.limit);
}

@override
String toString() {
  final _this = this as GetBidsParams;
  return 'GetBidsParams(auctionId: ${_this.auctionId}, limit: ${_this.limit})';
}


}

/// @nodoc
abstract mixin class $GetBidsParamsCopyWith<$Res>  {
  factory $GetBidsParamsCopyWith(GetBidsParams value, $Res Function(GetBidsParams) _then) = _$GetBidsParamsCopyWithImpl;
@useResult
$Res call({
 String auctionId, int limit
});




}
/// @nodoc
class _$GetBidsParamsCopyWithImpl<$Res>
    implements $GetBidsParamsCopyWith<$Res> {
  _$GetBidsParamsCopyWithImpl(this._self, this._then);

  final GetBidsParams _self;
  final $Res Function(GetBidsParams) _then;

/// Create a copy of GetBidsParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? auctionId = null,Object? limit = null,}) {
  return _then(GetBidsParams(
auctionId: null == auctionId ? _self.auctionId : auctionId // ignore: cast_nullable_to_non_nullable
as String,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [GetBidsParams].
extension GetBidsParamsPatterns on GetBidsParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetBidsParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetBidsParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetBidsParams value)  $default,){
final _that = this;
switch (_that) {
case _GetBidsParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetBidsParams value)?  $default,){
final _that = this;
switch (_that) {
case _GetBidsParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String auctionId,  int limit)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetBidsParams() when $default != null:
return $default(_that.auctionId,_that.limit);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String auctionId,  int limit)  $default,) {final _that = this;
switch (_that) {
case _GetBidsParams():
return $default(_that.auctionId,_that.limit);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String auctionId,  int limit)?  $default,) {final _that = this;
switch (_that) {
case _GetBidsParams() when $default != null:
return $default(_that.auctionId,_that.limit);case _:
  return null;

}
}

}

/// @nodoc


class _GetBidsParams implements GetBidsParams {
  const _GetBidsParams({required this.auctionId, this.limit = 10});
  

@override final  String auctionId;
@override@JsonKey() final  int limit;

/// Create a copy of GetBidsParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetBidsParamsCopyWith<_GetBidsParams> get copyWith => __$GetBidsParamsCopyWithImpl<_GetBidsParams>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetBidsParams&&(identical(other.auctionId, auctionId) || other.auctionId == auctionId)&&(identical(other.limit, limit) || other.limit == limit));
}


@override
int get hashCode {
    return Object.hash(runtimeType,auctionId,limit);
}

@override
String toString() {
    return 'GetBidsParams(auctionId: $auctionId, limit: $limit)';
}


}

/// @nodoc
abstract mixin class _$GetBidsParamsCopyWith<$Res> implements $GetBidsParamsCopyWith<$Res> {
  factory _$GetBidsParamsCopyWith(_GetBidsParams value, $Res Function(_GetBidsParams) _then) = __$GetBidsParamsCopyWithImpl;
@override @useResult
$Res call({
 String auctionId, int limit
});




}
/// @nodoc
class __$GetBidsParamsCopyWithImpl<$Res>
    implements _$GetBidsParamsCopyWith<$Res> {
  __$GetBidsParamsCopyWithImpl(this._self, this._then);

  final _GetBidsParams _self;
  final $Res Function(_GetBidsParams) _then;

/// Create a copy of GetBidsParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? auctionId = null,Object? limit = null,}) {
  return _then(_GetBidsParams(
auctionId: null == auctionId ? _self.auctionId : auctionId // ignore: cast_nullable_to_non_nullable
as String,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$PlaceBidParams {

 String get auctionId; int get amount;
/// Create a copy of PlaceBidParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlaceBidParamsCopyWith<PlaceBidParams> get copyWith => _$PlaceBidParamsCopyWithImpl<PlaceBidParams>(this as PlaceBidParams, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as PlaceBidParams;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlaceBidParams&&(identical(other.auctionId, _this.auctionId) || other.auctionId == _this.auctionId)&&(identical(other.amount, _this.amount) || other.amount == _this.amount));
}


@override
int get hashCode {
  final _this = this as PlaceBidParams;
  return Object.hash(runtimeType,_this.auctionId,_this.amount);
}

@override
String toString() {
  final _this = this as PlaceBidParams;
  return 'PlaceBidParams(auctionId: ${_this.auctionId}, amount: ${_this.amount})';
}


}

/// @nodoc
abstract mixin class $PlaceBidParamsCopyWith<$Res>  {
  factory $PlaceBidParamsCopyWith(PlaceBidParams value, $Res Function(PlaceBidParams) _then) = _$PlaceBidParamsCopyWithImpl;
@useResult
$Res call({
 String auctionId, int amount
});




}
/// @nodoc
class _$PlaceBidParamsCopyWithImpl<$Res>
    implements $PlaceBidParamsCopyWith<$Res> {
  _$PlaceBidParamsCopyWithImpl(this._self, this._then);

  final PlaceBidParams _self;
  final $Res Function(PlaceBidParams) _then;

/// Create a copy of PlaceBidParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? auctionId = null,Object? amount = null,}) {
  return _then(PlaceBidParams(
auctionId: null == auctionId ? _self.auctionId : auctionId // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PlaceBidParams].
extension PlaceBidParamsPatterns on PlaceBidParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlaceBidParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlaceBidParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlaceBidParams value)  $default,){
final _that = this;
switch (_that) {
case _PlaceBidParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlaceBidParams value)?  $default,){
final _that = this;
switch (_that) {
case _PlaceBidParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String auctionId,  int amount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlaceBidParams() when $default != null:
return $default(_that.auctionId,_that.amount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String auctionId,  int amount)  $default,) {final _that = this;
switch (_that) {
case _PlaceBidParams():
return $default(_that.auctionId,_that.amount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String auctionId,  int amount)?  $default,) {final _that = this;
switch (_that) {
case _PlaceBidParams() when $default != null:
return $default(_that.auctionId,_that.amount);case _:
  return null;

}
}

}

/// @nodoc


class _PlaceBidParams implements PlaceBidParams {
  const _PlaceBidParams({required this.auctionId, required this.amount});
  

@override final  String auctionId;
@override final  int amount;

/// Create a copy of PlaceBidParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlaceBidParamsCopyWith<_PlaceBidParams> get copyWith => __$PlaceBidParamsCopyWithImpl<_PlaceBidParams>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlaceBidParams&&(identical(other.auctionId, auctionId) || other.auctionId == auctionId)&&(identical(other.amount, amount) || other.amount == amount));
}


@override
int get hashCode {
    return Object.hash(runtimeType,auctionId,amount);
}

@override
String toString() {
    return 'PlaceBidParams(auctionId: $auctionId, amount: $amount)';
}


}

/// @nodoc
abstract mixin class _$PlaceBidParamsCopyWith<$Res> implements $PlaceBidParamsCopyWith<$Res> {
  factory _$PlaceBidParamsCopyWith(_PlaceBidParams value, $Res Function(_PlaceBidParams) _then) = __$PlaceBidParamsCopyWithImpl;
@override @useResult
$Res call({
 String auctionId, int amount
});




}
/// @nodoc
class __$PlaceBidParamsCopyWithImpl<$Res>
    implements _$PlaceBidParamsCopyWith<$Res> {
  __$PlaceBidParamsCopyWithImpl(this._self, this._then);

  final _PlaceBidParams _self;
  final $Res Function(_PlaceBidParams) _then;

/// Create a copy of PlaceBidParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? auctionId = null,Object? amount = null,}) {
  return _then(_PlaceBidParams(
auctionId: null == auctionId ? _self.auctionId : auctionId // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
