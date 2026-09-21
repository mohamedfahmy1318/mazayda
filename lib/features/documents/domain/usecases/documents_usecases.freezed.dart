// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'documents_usecases.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DownloadDocumentParams {

 String get id; String get title;
/// Create a copy of DownloadDocumentParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DownloadDocumentParamsCopyWith<DownloadDocumentParams> get copyWith => _$DownloadDocumentParamsCopyWithImpl<DownloadDocumentParams>(this as DownloadDocumentParams, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as DownloadDocumentParams;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DownloadDocumentParams&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.title, _this.title) || other.title == _this.title));
}


@override
int get hashCode {
  final _this = this as DownloadDocumentParams;
  return Object.hash(runtimeType,_this.id,_this.title);
}

@override
String toString() {
  final _this = this as DownloadDocumentParams;
  return 'DownloadDocumentParams(id: ${_this.id}, title: ${_this.title})';
}


}

/// @nodoc
abstract mixin class $DownloadDocumentParamsCopyWith<$Res>  {
  factory $DownloadDocumentParamsCopyWith(DownloadDocumentParams value, $Res Function(DownloadDocumentParams) _then) = _$DownloadDocumentParamsCopyWithImpl;
@useResult
$Res call({
 String id, String title
});




}
/// @nodoc
class _$DownloadDocumentParamsCopyWithImpl<$Res>
    implements $DownloadDocumentParamsCopyWith<$Res> {
  _$DownloadDocumentParamsCopyWithImpl(this._self, this._then);

  final DownloadDocumentParams _self;
  final $Res Function(DownloadDocumentParams) _then;

/// Create a copy of DownloadDocumentParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,}) {
  return _then(DownloadDocumentParams(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [DownloadDocumentParams].
extension DownloadDocumentParamsPatterns on DownloadDocumentParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DownloadDocumentParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DownloadDocumentParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DownloadDocumentParams value)  $default,){
final _that = this;
switch (_that) {
case _DownloadDocumentParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DownloadDocumentParams value)?  $default,){
final _that = this;
switch (_that) {
case _DownloadDocumentParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DownloadDocumentParams() when $default != null:
return $default(_that.id,_that.title);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title)  $default,) {final _that = this;
switch (_that) {
case _DownloadDocumentParams():
return $default(_that.id,_that.title);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title)?  $default,) {final _that = this;
switch (_that) {
case _DownloadDocumentParams() when $default != null:
return $default(_that.id,_that.title);case _:
  return null;

}
}

}

/// @nodoc


class _DownloadDocumentParams implements DownloadDocumentParams {
  const _DownloadDocumentParams({required this.id, required this.title});
  

@override final  String id;
@override final  String title;

/// Create a copy of DownloadDocumentParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DownloadDocumentParamsCopyWith<_DownloadDocumentParams> get copyWith => __$DownloadDocumentParamsCopyWithImpl<_DownloadDocumentParams>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DownloadDocumentParams&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title));
}


@override
int get hashCode {
    return Object.hash(runtimeType,id,title);
}

@override
String toString() {
    return 'DownloadDocumentParams(id: $id, title: $title)';
}


}

/// @nodoc
abstract mixin class _$DownloadDocumentParamsCopyWith<$Res> implements $DownloadDocumentParamsCopyWith<$Res> {
  factory _$DownloadDocumentParamsCopyWith(_DownloadDocumentParams value, $Res Function(_DownloadDocumentParams) _then) = __$DownloadDocumentParamsCopyWithImpl;
@override @useResult
$Res call({
 String id, String title
});




}
/// @nodoc
class __$DownloadDocumentParamsCopyWithImpl<$Res>
    implements _$DownloadDocumentParamsCopyWith<$Res> {
  __$DownloadDocumentParamsCopyWithImpl(this._self, this._then);

  final _DownloadDocumentParams _self;
  final $Res Function(_DownloadDocumentParams) _then;

/// Create a copy of DownloadDocumentParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,}) {
  return _then(_DownloadDocumentParams(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$GetDocumentsParams {

 DocumentFilters get filters; int get page;
/// Create a copy of GetDocumentsParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetDocumentsParamsCopyWith<GetDocumentsParams> get copyWith => _$GetDocumentsParamsCopyWithImpl<GetDocumentsParams>(this as GetDocumentsParams, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as GetDocumentsParams;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetDocumentsParams&&(identical(other.filters, _this.filters) || other.filters == _this.filters)&&(identical(other.page, _this.page) || other.page == _this.page));
}


@override
int get hashCode {
  final _this = this as GetDocumentsParams;
  return Object.hash(runtimeType,_this.filters,_this.page);
}

@override
String toString() {
  final _this = this as GetDocumentsParams;
  return 'GetDocumentsParams(filters: ${_this.filters}, page: ${_this.page})';
}


}

/// @nodoc
abstract mixin class $GetDocumentsParamsCopyWith<$Res>  {
  factory $GetDocumentsParamsCopyWith(GetDocumentsParams value, $Res Function(GetDocumentsParams) _then) = _$GetDocumentsParamsCopyWithImpl;
@useResult
$Res call({
 DocumentFilters filters, int page
});




}
/// @nodoc
class _$GetDocumentsParamsCopyWithImpl<$Res>
    implements $GetDocumentsParamsCopyWith<$Res> {
  _$GetDocumentsParamsCopyWithImpl(this._self, this._then);

  final GetDocumentsParams _self;
  final $Res Function(GetDocumentsParams) _then;

/// Create a copy of GetDocumentsParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? filters = null,Object? page = null,}) {
  return _then(GetDocumentsParams(
filters: null == filters ? _self.filters : filters // ignore: cast_nullable_to_non_nullable
as DocumentFilters,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [GetDocumentsParams].
extension GetDocumentsParamsPatterns on GetDocumentsParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetDocumentsParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetDocumentsParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetDocumentsParams value)  $default,){
final _that = this;
switch (_that) {
case _GetDocumentsParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetDocumentsParams value)?  $default,){
final _that = this;
switch (_that) {
case _GetDocumentsParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DocumentFilters filters,  int page)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetDocumentsParams() when $default != null:
return $default(_that.filters,_that.page);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DocumentFilters filters,  int page)  $default,) {final _that = this;
switch (_that) {
case _GetDocumentsParams():
return $default(_that.filters,_that.page);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DocumentFilters filters,  int page)?  $default,) {final _that = this;
switch (_that) {
case _GetDocumentsParams() when $default != null:
return $default(_that.filters,_that.page);case _:
  return null;

}
}

}

/// @nodoc


class _GetDocumentsParams implements GetDocumentsParams {
  const _GetDocumentsParams({this.filters = const DocumentFilters(), this.page = 1});
  

@override@JsonKey() final  DocumentFilters filters;
@override@JsonKey() final  int page;

/// Create a copy of GetDocumentsParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetDocumentsParamsCopyWith<_GetDocumentsParams> get copyWith => __$GetDocumentsParamsCopyWithImpl<_GetDocumentsParams>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetDocumentsParams&&(identical(other.filters, filters) || other.filters == filters)&&(identical(other.page, page) || other.page == page));
}


@override
int get hashCode {
    return Object.hash(runtimeType,filters,page);
}

@override
String toString() {
    return 'GetDocumentsParams(filters: $filters, page: $page)';
}


}

/// @nodoc
abstract mixin class _$GetDocumentsParamsCopyWith<$Res> implements $GetDocumentsParamsCopyWith<$Res> {
  factory _$GetDocumentsParamsCopyWith(_GetDocumentsParams value, $Res Function(_GetDocumentsParams) _then) = __$GetDocumentsParamsCopyWithImpl;
@override @useResult
$Res call({
 DocumentFilters filters, int page
});




}
/// @nodoc
class __$GetDocumentsParamsCopyWithImpl<$Res>
    implements _$GetDocumentsParamsCopyWith<$Res> {
  __$GetDocumentsParamsCopyWithImpl(this._self, this._then);

  final _GetDocumentsParams _self;
  final $Res Function(_GetDocumentsParams) _then;

/// Create a copy of GetDocumentsParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? filters = null,Object? page = null,}) {
  return _then(_GetDocumentsParams(
filters: null == filters ? _self.filters : filters // ignore: cast_nullable_to_non_nullable
as DocumentFilters,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
