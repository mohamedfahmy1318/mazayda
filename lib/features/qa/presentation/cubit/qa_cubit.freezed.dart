// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qa_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$QaState {

 bool get loading; List<AuctionQuestion> get items; bool get asking; bool get asked; String? get error;
/// Create a copy of QaState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QaStateCopyWith<QaState> get copyWith => _$QaStateCopyWithImpl<QaState>(this as QaState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as QaState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QaState&&(identical(other.loading, _this.loading) || other.loading == _this.loading)&&const DeepCollectionEquality().equals(other.items, _this.items)&&(identical(other.asking, _this.asking) || other.asking == _this.asking)&&(identical(other.asked, _this.asked) || other.asked == _this.asked)&&(identical(other.error, _this.error) || other.error == _this.error));
}


@override
int get hashCode {
  final _this = this as QaState;
  return Object.hash(runtimeType,_this.loading,const DeepCollectionEquality().hash(_this.items),_this.asking,_this.asked,_this.error);
}

@override
String toString() {
  final _this = this as QaState;
  return 'QaState(loading: ${_this.loading}, items: ${_this.items}, asking: ${_this.asking}, asked: ${_this.asked}, error: ${_this.error})';
}


}

/// @nodoc
abstract mixin class $QaStateCopyWith<$Res>  {
  factory $QaStateCopyWith(QaState value, $Res Function(QaState) _then) = _$QaStateCopyWithImpl;
@useResult
$Res call({
 bool loading, List<AuctionQuestion> items, bool asking, bool asked, String? error
});




}
/// @nodoc
class _$QaStateCopyWithImpl<$Res>
    implements $QaStateCopyWith<$Res> {
  _$QaStateCopyWithImpl(this._self, this._then);

  final QaState _self;
  final $Res Function(QaState) _then;

/// Create a copy of QaState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? loading = null,Object? items = null,Object? asking = null,Object? asked = null,Object? error = freezed,}) {
  return _then(QaState(
loading: null == loading ? _self.loading : loading // ignore: cast_nullable_to_non_nullable
as bool,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<AuctionQuestion>,asking: null == asking ? _self.asking : asking // ignore: cast_nullable_to_non_nullable
as bool,asked: null == asked ? _self.asked : asked // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [QaState].
extension QaStatePatterns on QaState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QaState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QaState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QaState value)  $default,){
final _that = this;
switch (_that) {
case _QaState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QaState value)?  $default,){
final _that = this;
switch (_that) {
case _QaState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool loading,  List<AuctionQuestion> items,  bool asking,  bool asked,  String? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QaState() when $default != null:
return $default(_that.loading,_that.items,_that.asking,_that.asked,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool loading,  List<AuctionQuestion> items,  bool asking,  bool asked,  String? error)  $default,) {final _that = this;
switch (_that) {
case _QaState():
return $default(_that.loading,_that.items,_that.asking,_that.asked,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool loading,  List<AuctionQuestion> items,  bool asking,  bool asked,  String? error)?  $default,) {final _that = this;
switch (_that) {
case _QaState() when $default != null:
return $default(_that.loading,_that.items,_that.asking,_that.asked,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _QaState implements QaState {
  const _QaState({this.loading = true,  List<AuctionQuestion> items = const <AuctionQuestion>[], this.asking = false, this.asked = false, this.error}): _items = items;
  

@override@JsonKey() final  bool loading;
 final  List<AuctionQuestion> _items;
@override@JsonKey() List<AuctionQuestion> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override@JsonKey() final  bool asking;
@override@JsonKey() final  bool asked;
@override final  String? error;

/// Create a copy of QaState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QaStateCopyWith<_QaState> get copyWith => __$QaStateCopyWithImpl<_QaState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _QaState&&(identical(other.loading, loading) || other.loading == loading)&&const DeepCollectionEquality().equals(other.items, _items)&&(identical(other.asking, asking) || other.asking == asking)&&(identical(other.asked, asked) || other.asked == asked)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode {
    return Object.hash(runtimeType,loading,const DeepCollectionEquality().hash(_items),asking,asked,error);
}

@override
String toString() {
    return 'QaState(loading: $loading, items: $items, asking: $asking, asked: $asked, error: $error)';
}


}

/// @nodoc
abstract mixin class _$QaStateCopyWith<$Res> implements $QaStateCopyWith<$Res> {
  factory _$QaStateCopyWith(_QaState value, $Res Function(_QaState) _then) = __$QaStateCopyWithImpl;
@override @useResult
$Res call({
 bool loading, List<AuctionQuestion> items, bool asking, bool asked, String? error
});




}
/// @nodoc
class __$QaStateCopyWithImpl<$Res>
    implements _$QaStateCopyWith<$Res> {
  __$QaStateCopyWithImpl(this._self, this._then);

  final _QaState _self;
  final $Res Function(_QaState) _then;

/// Create a copy of QaState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? loading = null,Object? items = null,Object? asking = null,Object? asked = null,Object? error = freezed,}) {
  return _then(_QaState(
loading: null == loading ? _self.loading : loading // ignore: cast_nullable_to_non_nullable
as bool,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<AuctionQuestion>,asking: null == asking ? _self.asking : asking // ignore: cast_nullable_to_non_nullable
as bool,asked: null == asked ? _self.asked : asked // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
