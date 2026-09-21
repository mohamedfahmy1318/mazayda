// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'final_payment_preview_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FinalPaymentPreviewState {

 bool get loading; FinalPaymentPreview? get preview; String? get error;
/// Create a copy of FinalPaymentPreviewState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FinalPaymentPreviewStateCopyWith<FinalPaymentPreviewState> get copyWith => _$FinalPaymentPreviewStateCopyWithImpl<FinalPaymentPreviewState>(this as FinalPaymentPreviewState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as FinalPaymentPreviewState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FinalPaymentPreviewState&&(identical(other.loading, _this.loading) || other.loading == _this.loading)&&(identical(other.preview, _this.preview) || other.preview == _this.preview)&&(identical(other.error, _this.error) || other.error == _this.error));
}


@override
int get hashCode {
  final _this = this as FinalPaymentPreviewState;
  return Object.hash(runtimeType,_this.loading,_this.preview,_this.error);
}

@override
String toString() {
  final _this = this as FinalPaymentPreviewState;
  return 'FinalPaymentPreviewState(loading: ${_this.loading}, preview: ${_this.preview}, error: ${_this.error})';
}


}

/// @nodoc
abstract mixin class $FinalPaymentPreviewStateCopyWith<$Res>  {
  factory $FinalPaymentPreviewStateCopyWith(FinalPaymentPreviewState value, $Res Function(FinalPaymentPreviewState) _then) = _$FinalPaymentPreviewStateCopyWithImpl;
@useResult
$Res call({
 bool loading, FinalPaymentPreview? preview, String? error
});




}
/// @nodoc
class _$FinalPaymentPreviewStateCopyWithImpl<$Res>
    implements $FinalPaymentPreviewStateCopyWith<$Res> {
  _$FinalPaymentPreviewStateCopyWithImpl(this._self, this._then);

  final FinalPaymentPreviewState _self;
  final $Res Function(FinalPaymentPreviewState) _then;

/// Create a copy of FinalPaymentPreviewState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? loading = null,Object? preview = freezed,Object? error = freezed,}) {
  return _then(FinalPaymentPreviewState(
loading: null == loading ? _self.loading : loading // ignore: cast_nullable_to_non_nullable
as bool,preview: freezed == preview ? _self.preview : preview // ignore: cast_nullable_to_non_nullable
as FinalPaymentPreview?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [FinalPaymentPreviewState].
extension FinalPaymentPreviewStatePatterns on FinalPaymentPreviewState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FinalPaymentPreviewState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FinalPaymentPreviewState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FinalPaymentPreviewState value)  $default,){
final _that = this;
switch (_that) {
case _FinalPaymentPreviewState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FinalPaymentPreviewState value)?  $default,){
final _that = this;
switch (_that) {
case _FinalPaymentPreviewState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool loading,  FinalPaymentPreview? preview,  String? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FinalPaymentPreviewState() when $default != null:
return $default(_that.loading,_that.preview,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool loading,  FinalPaymentPreview? preview,  String? error)  $default,) {final _that = this;
switch (_that) {
case _FinalPaymentPreviewState():
return $default(_that.loading,_that.preview,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool loading,  FinalPaymentPreview? preview,  String? error)?  $default,) {final _that = this;
switch (_that) {
case _FinalPaymentPreviewState() when $default != null:
return $default(_that.loading,_that.preview,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _FinalPaymentPreviewState implements FinalPaymentPreviewState {
  const _FinalPaymentPreviewState({this.loading = true, this.preview, this.error});
  

@override@JsonKey() final  bool loading;
@override final  FinalPaymentPreview? preview;
@override final  String? error;

/// Create a copy of FinalPaymentPreviewState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FinalPaymentPreviewStateCopyWith<_FinalPaymentPreviewState> get copyWith => __$FinalPaymentPreviewStateCopyWithImpl<_FinalPaymentPreviewState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _FinalPaymentPreviewState&&(identical(other.loading, loading) || other.loading == loading)&&(identical(other.preview, preview) || other.preview == preview)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode {
    return Object.hash(runtimeType,loading,preview,error);
}

@override
String toString() {
    return 'FinalPaymentPreviewState(loading: $loading, preview: $preview, error: $error)';
}


}

/// @nodoc
abstract mixin class _$FinalPaymentPreviewStateCopyWith<$Res> implements $FinalPaymentPreviewStateCopyWith<$Res> {
  factory _$FinalPaymentPreviewStateCopyWith(_FinalPaymentPreviewState value, $Res Function(_FinalPaymentPreviewState) _then) = __$FinalPaymentPreviewStateCopyWithImpl;
@override @useResult
$Res call({
 bool loading, FinalPaymentPreview? preview, String? error
});




}
/// @nodoc
class __$FinalPaymentPreviewStateCopyWithImpl<$Res>
    implements _$FinalPaymentPreviewStateCopyWith<$Res> {
  __$FinalPaymentPreviewStateCopyWithImpl(this._self, this._then);

  final _FinalPaymentPreviewState _self;
  final $Res Function(_FinalPaymentPreviewState) _then;

/// Create a copy of FinalPaymentPreviewState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? loading = null,Object? preview = freezed,Object? error = freezed,}) {
  return _then(_FinalPaymentPreviewState(
loading: null == loading ? _self.loading : loading // ignore: cast_nullable_to_non_nullable
as bool,preview: freezed == preview ? _self.preview : preview // ignore: cast_nullable_to_non_nullable
as FinalPaymentPreview?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
