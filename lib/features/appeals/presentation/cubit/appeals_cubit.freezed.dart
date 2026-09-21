// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appeals_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppealsState {

 bool get loading; List<Appeal> get items; bool get submitting; bool get submitted; String? get error;
/// Create a copy of AppealsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppealsStateCopyWith<AppealsState> get copyWith => _$AppealsStateCopyWithImpl<AppealsState>(this as AppealsState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as AppealsState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppealsState&&(identical(other.loading, _this.loading) || other.loading == _this.loading)&&const DeepCollectionEquality().equals(other.items, _this.items)&&(identical(other.submitting, _this.submitting) || other.submitting == _this.submitting)&&(identical(other.submitted, _this.submitted) || other.submitted == _this.submitted)&&(identical(other.error, _this.error) || other.error == _this.error));
}


@override
int get hashCode {
  final _this = this as AppealsState;
  return Object.hash(runtimeType,_this.loading,const DeepCollectionEquality().hash(_this.items),_this.submitting,_this.submitted,_this.error);
}

@override
String toString() {
  final _this = this as AppealsState;
  return 'AppealsState(loading: ${_this.loading}, items: ${_this.items}, submitting: ${_this.submitting}, submitted: ${_this.submitted}, error: ${_this.error})';
}


}

/// @nodoc
abstract mixin class $AppealsStateCopyWith<$Res>  {
  factory $AppealsStateCopyWith(AppealsState value, $Res Function(AppealsState) _then) = _$AppealsStateCopyWithImpl;
@useResult
$Res call({
 bool loading, List<Appeal> items, bool submitting, bool submitted, String? error
});




}
/// @nodoc
class _$AppealsStateCopyWithImpl<$Res>
    implements $AppealsStateCopyWith<$Res> {
  _$AppealsStateCopyWithImpl(this._self, this._then);

  final AppealsState _self;
  final $Res Function(AppealsState) _then;

/// Create a copy of AppealsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? loading = null,Object? items = null,Object? submitting = null,Object? submitted = null,Object? error = freezed,}) {
  return _then(AppealsState(
loading: null == loading ? _self.loading : loading // ignore: cast_nullable_to_non_nullable
as bool,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<Appeal>,submitting: null == submitting ? _self.submitting : submitting // ignore: cast_nullable_to_non_nullable
as bool,submitted: null == submitted ? _self.submitted : submitted // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AppealsState].
extension AppealsStatePatterns on AppealsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppealsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppealsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppealsState value)  $default,){
final _that = this;
switch (_that) {
case _AppealsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppealsState value)?  $default,){
final _that = this;
switch (_that) {
case _AppealsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool loading,  List<Appeal> items,  bool submitting,  bool submitted,  String? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppealsState() when $default != null:
return $default(_that.loading,_that.items,_that.submitting,_that.submitted,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool loading,  List<Appeal> items,  bool submitting,  bool submitted,  String? error)  $default,) {final _that = this;
switch (_that) {
case _AppealsState():
return $default(_that.loading,_that.items,_that.submitting,_that.submitted,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool loading,  List<Appeal> items,  bool submitting,  bool submitted,  String? error)?  $default,) {final _that = this;
switch (_that) {
case _AppealsState() when $default != null:
return $default(_that.loading,_that.items,_that.submitting,_that.submitted,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _AppealsState implements AppealsState {
  const _AppealsState({this.loading = true,  List<Appeal> items = const <Appeal>[], this.submitting = false, this.submitted = false, this.error}): _items = items;
  

@override@JsonKey() final  bool loading;
 final  List<Appeal> _items;
@override@JsonKey() List<Appeal> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override@JsonKey() final  bool submitting;
@override@JsonKey() final  bool submitted;
@override final  String? error;

/// Create a copy of AppealsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppealsStateCopyWith<_AppealsState> get copyWith => __$AppealsStateCopyWithImpl<_AppealsState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppealsState&&(identical(other.loading, loading) || other.loading == loading)&&const DeepCollectionEquality().equals(other.items, _items)&&(identical(other.submitting, submitting) || other.submitting == submitting)&&(identical(other.submitted, submitted) || other.submitted == submitted)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode {
    return Object.hash(runtimeType,loading,const DeepCollectionEquality().hash(_items),submitting,submitted,error);
}

@override
String toString() {
    return 'AppealsState(loading: $loading, items: $items, submitting: $submitting, submitted: $submitted, error: $error)';
}


}

/// @nodoc
abstract mixin class _$AppealsStateCopyWith<$Res> implements $AppealsStateCopyWith<$Res> {
  factory _$AppealsStateCopyWith(_AppealsState value, $Res Function(_AppealsState) _then) = __$AppealsStateCopyWithImpl;
@override @useResult
$Res call({
 bool loading, List<Appeal> items, bool submitting, bool submitted, String? error
});




}
/// @nodoc
class __$AppealsStateCopyWithImpl<$Res>
    implements _$AppealsStateCopyWith<$Res> {
  __$AppealsStateCopyWithImpl(this._self, this._then);

  final _AppealsState _self;
  final $Res Function(_AppealsState) _then;

/// Create a copy of AppealsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? loading = null,Object? items = null,Object? submitting = null,Object? submitted = null,Object? error = freezed,}) {
  return _then(_AppealsState(
loading: null == loading ? _self.loading : loading // ignore: cast_nullable_to_non_nullable
as bool,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<Appeal>,submitting: null == submitting ? _self.submitting : submitting // ignore: cast_nullable_to_non_nullable
as bool,submitted: null == submitted ? _self.submitted : submitted // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
