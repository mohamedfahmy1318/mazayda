// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_auctions_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MyAuctionsState {

 MyAuctionTab get tab; bool get loading; List<AuctionListItem> get items;/// أعداد كل التبويبات — بتيجي مع كل طلب في meta.counts.
 MyAuctionCounts get counts; String? get error;
/// Create a copy of MyAuctionsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MyAuctionsStateCopyWith<MyAuctionsState> get copyWith => _$MyAuctionsStateCopyWithImpl<MyAuctionsState>(this as MyAuctionsState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as MyAuctionsState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MyAuctionsState&&(identical(other.tab, _this.tab) || other.tab == _this.tab)&&(identical(other.loading, _this.loading) || other.loading == _this.loading)&&const DeepCollectionEquality().equals(other.items, _this.items)&&(identical(other.counts, _this.counts) || other.counts == _this.counts)&&(identical(other.error, _this.error) || other.error == _this.error));
}


@override
int get hashCode {
  final _this = this as MyAuctionsState;
  return Object.hash(runtimeType,_this.tab,_this.loading,const DeepCollectionEquality().hash(_this.items),_this.counts,_this.error);
}

@override
String toString() {
  final _this = this as MyAuctionsState;
  return 'MyAuctionsState(tab: ${_this.tab}, loading: ${_this.loading}, items: ${_this.items}, counts: ${_this.counts}, error: ${_this.error})';
}


}

/// @nodoc
abstract mixin class $MyAuctionsStateCopyWith<$Res>  {
  factory $MyAuctionsStateCopyWith(MyAuctionsState value, $Res Function(MyAuctionsState) _then) = _$MyAuctionsStateCopyWithImpl;
@useResult
$Res call({
 MyAuctionTab tab, bool loading, List<AuctionListItem> items, MyAuctionCounts counts, String? error
});




}
/// @nodoc
class _$MyAuctionsStateCopyWithImpl<$Res>
    implements $MyAuctionsStateCopyWith<$Res> {
  _$MyAuctionsStateCopyWithImpl(this._self, this._then);

  final MyAuctionsState _self;
  final $Res Function(MyAuctionsState) _then;

/// Create a copy of MyAuctionsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tab = null,Object? loading = null,Object? items = null,Object? counts = null,Object? error = freezed,}) {
  return _then(MyAuctionsState(
tab: null == tab ? _self.tab : tab // ignore: cast_nullable_to_non_nullable
as MyAuctionTab,loading: null == loading ? _self.loading : loading // ignore: cast_nullable_to_non_nullable
as bool,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<AuctionListItem>,counts: null == counts ? _self.counts : counts // ignore: cast_nullable_to_non_nullable
as MyAuctionCounts,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MyAuctionsState].
extension MyAuctionsStatePatterns on MyAuctionsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MyAuctionsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MyAuctionsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MyAuctionsState value)  $default,){
final _that = this;
switch (_that) {
case _MyAuctionsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MyAuctionsState value)?  $default,){
final _that = this;
switch (_that) {
case _MyAuctionsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( MyAuctionTab tab,  bool loading,  List<AuctionListItem> items,  MyAuctionCounts counts,  String? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MyAuctionsState() when $default != null:
return $default(_that.tab,_that.loading,_that.items,_that.counts,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( MyAuctionTab tab,  bool loading,  List<AuctionListItem> items,  MyAuctionCounts counts,  String? error)  $default,) {final _that = this;
switch (_that) {
case _MyAuctionsState():
return $default(_that.tab,_that.loading,_that.items,_that.counts,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( MyAuctionTab tab,  bool loading,  List<AuctionListItem> items,  MyAuctionCounts counts,  String? error)?  $default,) {final _that = this;
switch (_that) {
case _MyAuctionsState() when $default != null:
return $default(_that.tab,_that.loading,_that.items,_that.counts,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _MyAuctionsState implements MyAuctionsState {
  const _MyAuctionsState({this.tab = MyAuctionTab.all, this.loading = true,  List<AuctionListItem> items = const <AuctionListItem>[], this.counts = MyAuctionCounts.empty, this.error}): _items = items;
  

@override@JsonKey() final  MyAuctionTab tab;
@override@JsonKey() final  bool loading;
 final  List<AuctionListItem> _items;
@override@JsonKey() List<AuctionListItem> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

/// أعداد كل التبويبات — بتيجي مع كل طلب في meta.counts.
@override@JsonKey() final  MyAuctionCounts counts;
@override final  String? error;

/// Create a copy of MyAuctionsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MyAuctionsStateCopyWith<_MyAuctionsState> get copyWith => __$MyAuctionsStateCopyWithImpl<_MyAuctionsState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _MyAuctionsState&&(identical(other.tab, tab) || other.tab == tab)&&(identical(other.loading, loading) || other.loading == loading)&&const DeepCollectionEquality().equals(other.items, _items)&&(identical(other.counts, counts) || other.counts == counts)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode {
    return Object.hash(runtimeType,tab,loading,const DeepCollectionEquality().hash(_items),counts,error);
}

@override
String toString() {
    return 'MyAuctionsState(tab: $tab, loading: $loading, items: $items, counts: $counts, error: $error)';
}


}

/// @nodoc
abstract mixin class _$MyAuctionsStateCopyWith<$Res> implements $MyAuctionsStateCopyWith<$Res> {
  factory _$MyAuctionsStateCopyWith(_MyAuctionsState value, $Res Function(_MyAuctionsState) _then) = __$MyAuctionsStateCopyWithImpl;
@override @useResult
$Res call({
 MyAuctionTab tab, bool loading, List<AuctionListItem> items, MyAuctionCounts counts, String? error
});




}
/// @nodoc
class __$MyAuctionsStateCopyWithImpl<$Res>
    implements _$MyAuctionsStateCopyWith<$Res> {
  __$MyAuctionsStateCopyWithImpl(this._self, this._then);

  final _MyAuctionsState _self;
  final $Res Function(_MyAuctionsState) _then;

/// Create a copy of MyAuctionsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tab = null,Object? loading = null,Object? items = null,Object? counts = null,Object? error = freezed,}) {
  return _then(_MyAuctionsState(
tab: null == tab ? _self.tab : tab // ignore: cast_nullable_to_non_nullable
as MyAuctionTab,loading: null == loading ? _self.loading : loading // ignore: cast_nullable_to_non_nullable
as bool,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<AuctionListItem>,counts: null == counts ? _self.counts : counts // ignore: cast_nullable_to_non_nullable
as MyAuctionCounts,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
