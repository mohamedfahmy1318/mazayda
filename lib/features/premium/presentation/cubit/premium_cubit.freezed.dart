// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'premium_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PremiumState {

 bool get loading; PremiumOverview? get overview;/// باقة بيتم شراؤها دلوقتي — بنعطّل باقي الأزرار أثناءها.
 String? get busyPlanCode;/// جاري إيقاف التجديد التلقائي.
 bool get cancelling; String? get error;
/// Create a copy of PremiumState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PremiumStateCopyWith<PremiumState> get copyWith => _$PremiumStateCopyWithImpl<PremiumState>(this as PremiumState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as PremiumState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PremiumState&&(identical(other.loading, _this.loading) || other.loading == _this.loading)&&(identical(other.overview, _this.overview) || other.overview == _this.overview)&&(identical(other.busyPlanCode, _this.busyPlanCode) || other.busyPlanCode == _this.busyPlanCode)&&(identical(other.cancelling, _this.cancelling) || other.cancelling == _this.cancelling)&&(identical(other.error, _this.error) || other.error == _this.error));
}


@override
int get hashCode {
  final _this = this as PremiumState;
  return Object.hash(runtimeType,_this.loading,_this.overview,_this.busyPlanCode,_this.cancelling,_this.error);
}

@override
String toString() {
  final _this = this as PremiumState;
  return 'PremiumState(loading: ${_this.loading}, overview: ${_this.overview}, busyPlanCode: ${_this.busyPlanCode}, cancelling: ${_this.cancelling}, error: ${_this.error})';
}


}

/// @nodoc
abstract mixin class $PremiumStateCopyWith<$Res>  {
  factory $PremiumStateCopyWith(PremiumState value, $Res Function(PremiumState) _then) = _$PremiumStateCopyWithImpl;
@useResult
$Res call({
 bool loading, PremiumOverview? overview, String? busyPlanCode, bool cancelling, String? error
});




}
/// @nodoc
class _$PremiumStateCopyWithImpl<$Res>
    implements $PremiumStateCopyWith<$Res> {
  _$PremiumStateCopyWithImpl(this._self, this._then);

  final PremiumState _self;
  final $Res Function(PremiumState) _then;

/// Create a copy of PremiumState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? loading = null,Object? overview = freezed,Object? busyPlanCode = freezed,Object? cancelling = null,Object? error = freezed,}) {
  return _then(PremiumState(
loading: null == loading ? _self.loading : loading // ignore: cast_nullable_to_non_nullable
as bool,overview: freezed == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as PremiumOverview?,busyPlanCode: freezed == busyPlanCode ? _self.busyPlanCode : busyPlanCode // ignore: cast_nullable_to_non_nullable
as String?,cancelling: null == cancelling ? _self.cancelling : cancelling // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PremiumState].
extension PremiumStatePatterns on PremiumState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PremiumState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PremiumState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PremiumState value)  $default,){
final _that = this;
switch (_that) {
case _PremiumState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PremiumState value)?  $default,){
final _that = this;
switch (_that) {
case _PremiumState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool loading,  PremiumOverview? overview,  String? busyPlanCode,  bool cancelling,  String? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PremiumState() when $default != null:
return $default(_that.loading,_that.overview,_that.busyPlanCode,_that.cancelling,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool loading,  PremiumOverview? overview,  String? busyPlanCode,  bool cancelling,  String? error)  $default,) {final _that = this;
switch (_that) {
case _PremiumState():
return $default(_that.loading,_that.overview,_that.busyPlanCode,_that.cancelling,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool loading,  PremiumOverview? overview,  String? busyPlanCode,  bool cancelling,  String? error)?  $default,) {final _that = this;
switch (_that) {
case _PremiumState() when $default != null:
return $default(_that.loading,_that.overview,_that.busyPlanCode,_that.cancelling,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _PremiumState extends PremiumState {
  const _PremiumState({this.loading = true, this.overview, this.busyPlanCode, this.cancelling = false, this.error}): super._();
  

@override@JsonKey() final  bool loading;
@override final  PremiumOverview? overview;
/// باقة بيتم شراؤها دلوقتي — بنعطّل باقي الأزرار أثناءها.
@override final  String? busyPlanCode;
/// جاري إيقاف التجديد التلقائي.
@override@JsonKey() final  bool cancelling;
@override final  String? error;

/// Create a copy of PremiumState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PremiumStateCopyWith<_PremiumState> get copyWith => __$PremiumStateCopyWithImpl<_PremiumState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PremiumState&&(identical(other.loading, loading) || other.loading == loading)&&(identical(other.overview, overview) || other.overview == overview)&&(identical(other.busyPlanCode, busyPlanCode) || other.busyPlanCode == busyPlanCode)&&(identical(other.cancelling, cancelling) || other.cancelling == cancelling)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode {
    return Object.hash(runtimeType,loading,overview,busyPlanCode,cancelling,error);
}

@override
String toString() {
    return 'PremiumState(loading: $loading, overview: $overview, busyPlanCode: $busyPlanCode, cancelling: $cancelling, error: $error)';
}


}

/// @nodoc
abstract mixin class _$PremiumStateCopyWith<$Res> implements $PremiumStateCopyWith<$Res> {
  factory _$PremiumStateCopyWith(_PremiumState value, $Res Function(_PremiumState) _then) = __$PremiumStateCopyWithImpl;
@override @useResult
$Res call({
 bool loading, PremiumOverview? overview, String? busyPlanCode, bool cancelling, String? error
});




}
/// @nodoc
class __$PremiumStateCopyWithImpl<$Res>
    implements _$PremiumStateCopyWith<$Res> {
  __$PremiumStateCopyWithImpl(this._self, this._then);

  final _PremiumState _self;
  final $Res Function(_PremiumState) _then;

/// Create a copy of PremiumState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? loading = null,Object? overview = freezed,Object? busyPlanCode = freezed,Object? cancelling = null,Object? error = freezed,}) {
  return _then(_PremiumState(
loading: null == loading ? _self.loading : loading // ignore: cast_nullable_to_non_nullable
as bool,overview: freezed == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as PremiumOverview?,busyPlanCode: freezed == busyPlanCode ? _self.busyPlanCode : busyPlanCode // ignore: cast_nullable_to_non_nullable
as String?,cancelling: null == cancelling ? _self.cancelling : cancelling // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
