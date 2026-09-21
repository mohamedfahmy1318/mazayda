// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_auctions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetAuctionsParams {

 String? get query; String? get category; int? get wilaya; String? get status; String? get type; int get page; int get perPage;
/// Create a copy of GetAuctionsParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetAuctionsParamsCopyWith<GetAuctionsParams> get copyWith => _$GetAuctionsParamsCopyWithImpl<GetAuctionsParams>(this as GetAuctionsParams, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as GetAuctionsParams;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetAuctionsParams&&(identical(other.query, _this.query) || other.query == _this.query)&&(identical(other.category, _this.category) || other.category == _this.category)&&(identical(other.wilaya, _this.wilaya) || other.wilaya == _this.wilaya)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.type, _this.type) || other.type == _this.type)&&(identical(other.page, _this.page) || other.page == _this.page)&&(identical(other.perPage, _this.perPage) || other.perPage == _this.perPage));
}


@override
int get hashCode {
  final _this = this as GetAuctionsParams;
  return Object.hash(runtimeType,_this.query,_this.category,_this.wilaya,_this.status,_this.type,_this.page,_this.perPage);
}

@override
String toString() {
  final _this = this as GetAuctionsParams;
  return 'GetAuctionsParams(query: ${_this.query}, category: ${_this.category}, wilaya: ${_this.wilaya}, status: ${_this.status}, type: ${_this.type}, page: ${_this.page}, perPage: ${_this.perPage})';
}


}

/// @nodoc
abstract mixin class $GetAuctionsParamsCopyWith<$Res>  {
  factory $GetAuctionsParamsCopyWith(GetAuctionsParams value, $Res Function(GetAuctionsParams) _then) = _$GetAuctionsParamsCopyWithImpl;
@useResult
$Res call({
 String? query, String? category, int? wilaya, String? status, String? type, int page, int perPage
});




}
/// @nodoc
class _$GetAuctionsParamsCopyWithImpl<$Res>
    implements $GetAuctionsParamsCopyWith<$Res> {
  _$GetAuctionsParamsCopyWithImpl(this._self, this._then);

  final GetAuctionsParams _self;
  final $Res Function(GetAuctionsParams) _then;

/// Create a copy of GetAuctionsParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = freezed,Object? category = freezed,Object? wilaya = freezed,Object? status = freezed,Object? type = freezed,Object? page = null,Object? perPage = null,}) {
  return _then(GetAuctionsParams(
query: freezed == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,wilaya: freezed == wilaya ? _self.wilaya : wilaya // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [GetAuctionsParams].
extension GetAuctionsParamsPatterns on GetAuctionsParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetAuctionsParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetAuctionsParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetAuctionsParams value)  $default,){
final _that = this;
switch (_that) {
case _GetAuctionsParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetAuctionsParams value)?  $default,){
final _that = this;
switch (_that) {
case _GetAuctionsParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? query,  String? category,  int? wilaya,  String? status,  String? type,  int page,  int perPage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetAuctionsParams() when $default != null:
return $default(_that.query,_that.category,_that.wilaya,_that.status,_that.type,_that.page,_that.perPage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? query,  String? category,  int? wilaya,  String? status,  String? type,  int page,  int perPage)  $default,) {final _that = this;
switch (_that) {
case _GetAuctionsParams():
return $default(_that.query,_that.category,_that.wilaya,_that.status,_that.type,_that.page,_that.perPage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? query,  String? category,  int? wilaya,  String? status,  String? type,  int page,  int perPage)?  $default,) {final _that = this;
switch (_that) {
case _GetAuctionsParams() when $default != null:
return $default(_that.query,_that.category,_that.wilaya,_that.status,_that.type,_that.page,_that.perPage);case _:
  return null;

}
}

}

/// @nodoc


class _GetAuctionsParams implements GetAuctionsParams {
  const _GetAuctionsParams({this.query, this.category, this.wilaya, this.status, this.type, this.page = 1, this.perPage = 12});
  

@override final  String? query;
@override final  String? category;
@override final  int? wilaya;
@override final  String? status;
@override final  String? type;
@override@JsonKey() final  int page;
@override@JsonKey() final  int perPage;

/// Create a copy of GetAuctionsParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetAuctionsParamsCopyWith<_GetAuctionsParams> get copyWith => __$GetAuctionsParamsCopyWithImpl<_GetAuctionsParams>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetAuctionsParams&&(identical(other.query, query) || other.query == query)&&(identical(other.category, category) || other.category == category)&&(identical(other.wilaya, wilaya) || other.wilaya == wilaya)&&(identical(other.status, status) || other.status == status)&&(identical(other.type, type) || other.type == type)&&(identical(other.page, page) || other.page == page)&&(identical(other.perPage, perPage) || other.perPage == perPage));
}


@override
int get hashCode {
    return Object.hash(runtimeType,query,category,wilaya,status,type,page,perPage);
}

@override
String toString() {
    return 'GetAuctionsParams(query: $query, category: $category, wilaya: $wilaya, status: $status, type: $type, page: $page, perPage: $perPage)';
}


}

/// @nodoc
abstract mixin class _$GetAuctionsParamsCopyWith<$Res> implements $GetAuctionsParamsCopyWith<$Res> {
  factory _$GetAuctionsParamsCopyWith(_GetAuctionsParams value, $Res Function(_GetAuctionsParams) _then) = __$GetAuctionsParamsCopyWithImpl;
@override @useResult
$Res call({
 String? query, String? category, int? wilaya, String? status, String? type, int page, int perPage
});




}
/// @nodoc
class __$GetAuctionsParamsCopyWithImpl<$Res>
    implements _$GetAuctionsParamsCopyWith<$Res> {
  __$GetAuctionsParamsCopyWithImpl(this._self, this._then);

  final _GetAuctionsParams _self;
  final $Res Function(_GetAuctionsParams) _then;

/// Create a copy of GetAuctionsParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? query = freezed,Object? category = freezed,Object? wilaya = freezed,Object? status = freezed,Object? type = freezed,Object? page = null,Object? perPage = null,}) {
  return _then(_GetAuctionsParams(
query: freezed == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,wilaya: freezed == wilaya ? _self.wilaya : wilaya // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
