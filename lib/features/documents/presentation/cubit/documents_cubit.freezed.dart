// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'documents_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DocumentsState {

 bool get loading; List<UserDocument> get items; DocumentsSummary? get summary; DocumentFilters get filters;/// خيارات الفلاتر المتاحة للمستخدم ده (BE-4) — فاضية لو النداء فشل
/// أو المستخدم ملوش وثائق، وساعتها ما نعرضش الشرائح دي أصلًا.
 DocumentFilterOptions get filterOptions; int get page; bool get hasMore; int get total; String? get error;/// معرّف الوثيقة اللي بتتنزّل حاليًا (عشان نعرض مؤشّر عليها هي بس).
 String? get downloadingId;
/// Create a copy of DocumentsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DocumentsStateCopyWith<DocumentsState> get copyWith => _$DocumentsStateCopyWithImpl<DocumentsState>(this as DocumentsState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as DocumentsState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DocumentsState&&(identical(other.loading, _this.loading) || other.loading == _this.loading)&&const DeepCollectionEquality().equals(other.items, _this.items)&&(identical(other.summary, _this.summary) || other.summary == _this.summary)&&(identical(other.filters, _this.filters) || other.filters == _this.filters)&&(identical(other.filterOptions, _this.filterOptions) || other.filterOptions == _this.filterOptions)&&(identical(other.page, _this.page) || other.page == _this.page)&&(identical(other.hasMore, _this.hasMore) || other.hasMore == _this.hasMore)&&(identical(other.total, _this.total) || other.total == _this.total)&&(identical(other.error, _this.error) || other.error == _this.error)&&(identical(other.downloadingId, _this.downloadingId) || other.downloadingId == _this.downloadingId));
}


@override
int get hashCode {
  final _this = this as DocumentsState;
  return Object.hash(runtimeType,_this.loading,const DeepCollectionEquality().hash(_this.items),_this.summary,_this.filters,_this.filterOptions,_this.page,_this.hasMore,_this.total,_this.error,_this.downloadingId);
}

@override
String toString() {
  final _this = this as DocumentsState;
  return 'DocumentsState(loading: ${_this.loading}, items: ${_this.items}, summary: ${_this.summary}, filters: ${_this.filters}, filterOptions: ${_this.filterOptions}, page: ${_this.page}, hasMore: ${_this.hasMore}, total: ${_this.total}, error: ${_this.error}, downloadingId: ${_this.downloadingId})';
}


}

/// @nodoc
abstract mixin class $DocumentsStateCopyWith<$Res>  {
  factory $DocumentsStateCopyWith(DocumentsState value, $Res Function(DocumentsState) _then) = _$DocumentsStateCopyWithImpl;
@useResult
$Res call({
 bool loading, List<UserDocument> items, DocumentsSummary? summary, DocumentFilters filters, DocumentFilterOptions filterOptions, int page, bool hasMore, int total, String? error, String? downloadingId
});




}
/// @nodoc
class _$DocumentsStateCopyWithImpl<$Res>
    implements $DocumentsStateCopyWith<$Res> {
  _$DocumentsStateCopyWithImpl(this._self, this._then);

  final DocumentsState _self;
  final $Res Function(DocumentsState) _then;

/// Create a copy of DocumentsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? loading = null,Object? items = null,Object? summary = freezed,Object? filters = null,Object? filterOptions = null,Object? page = null,Object? hasMore = null,Object? total = null,Object? error = freezed,Object? downloadingId = freezed,}) {
  return _then(DocumentsState(
loading: null == loading ? _self.loading : loading // ignore: cast_nullable_to_non_nullable
as bool,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<UserDocument>,summary: freezed == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as DocumentsSummary?,filters: null == filters ? _self.filters : filters // ignore: cast_nullable_to_non_nullable
as DocumentFilters,filterOptions: null == filterOptions ? _self.filterOptions : filterOptions // ignore: cast_nullable_to_non_nullable
as DocumentFilterOptions,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,downloadingId: freezed == downloadingId ? _self.downloadingId : downloadingId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DocumentsState].
extension DocumentsStatePatterns on DocumentsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DocumentsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DocumentsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DocumentsState value)  $default,){
final _that = this;
switch (_that) {
case _DocumentsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DocumentsState value)?  $default,){
final _that = this;
switch (_that) {
case _DocumentsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool loading,  List<UserDocument> items,  DocumentsSummary? summary,  DocumentFilters filters,  DocumentFilterOptions filterOptions,  int page,  bool hasMore,  int total,  String? error,  String? downloadingId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DocumentsState() when $default != null:
return $default(_that.loading,_that.items,_that.summary,_that.filters,_that.filterOptions,_that.page,_that.hasMore,_that.total,_that.error,_that.downloadingId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool loading,  List<UserDocument> items,  DocumentsSummary? summary,  DocumentFilters filters,  DocumentFilterOptions filterOptions,  int page,  bool hasMore,  int total,  String? error,  String? downloadingId)  $default,) {final _that = this;
switch (_that) {
case _DocumentsState():
return $default(_that.loading,_that.items,_that.summary,_that.filters,_that.filterOptions,_that.page,_that.hasMore,_that.total,_that.error,_that.downloadingId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool loading,  List<UserDocument> items,  DocumentsSummary? summary,  DocumentFilters filters,  DocumentFilterOptions filterOptions,  int page,  bool hasMore,  int total,  String? error,  String? downloadingId)?  $default,) {final _that = this;
switch (_that) {
case _DocumentsState() when $default != null:
return $default(_that.loading,_that.items,_that.summary,_that.filters,_that.filterOptions,_that.page,_that.hasMore,_that.total,_that.error,_that.downloadingId);case _:
  return null;

}
}

}

/// @nodoc


class _DocumentsState extends DocumentsState {
  const _DocumentsState({this.loading = false,  List<UserDocument> items = const <UserDocument>[], this.summary, this.filters = const DocumentFilters(), this.filterOptions = DocumentFilterOptions.empty, this.page = 1, this.hasMore = false, this.total = 0, this.error, this.downloadingId}): _items = items,super._();
  

@override@JsonKey() final  bool loading;
 final  List<UserDocument> _items;
@override@JsonKey() List<UserDocument> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  DocumentsSummary? summary;
@override@JsonKey() final  DocumentFilters filters;
/// خيارات الفلاتر المتاحة للمستخدم ده (BE-4) — فاضية لو النداء فشل
/// أو المستخدم ملوش وثائق، وساعتها ما نعرضش الشرائح دي أصلًا.
@override@JsonKey() final  DocumentFilterOptions filterOptions;
@override@JsonKey() final  int page;
@override@JsonKey() final  bool hasMore;
@override@JsonKey() final  int total;
@override final  String? error;
/// معرّف الوثيقة اللي بتتنزّل حاليًا (عشان نعرض مؤشّر عليها هي بس).
@override final  String? downloadingId;

/// Create a copy of DocumentsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DocumentsStateCopyWith<_DocumentsState> get copyWith => __$DocumentsStateCopyWithImpl<_DocumentsState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DocumentsState&&(identical(other.loading, loading) || other.loading == loading)&&const DeepCollectionEquality().equals(other.items, _items)&&(identical(other.summary, summary) || other.summary == summary)&&(identical(other.filters, filters) || other.filters == filters)&&(identical(other.filterOptions, filterOptions) || other.filterOptions == filterOptions)&&(identical(other.page, page) || other.page == page)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.total, total) || other.total == total)&&(identical(other.error, error) || other.error == error)&&(identical(other.downloadingId, downloadingId) || other.downloadingId == downloadingId));
}


@override
int get hashCode {
    return Object.hash(runtimeType,loading,const DeepCollectionEquality().hash(_items),summary,filters,filterOptions,page,hasMore,total,error,downloadingId);
}

@override
String toString() {
    return 'DocumentsState(loading: $loading, items: $items, summary: $summary, filters: $filters, filterOptions: $filterOptions, page: $page, hasMore: $hasMore, total: $total, error: $error, downloadingId: $downloadingId)';
}


}

/// @nodoc
abstract mixin class _$DocumentsStateCopyWith<$Res> implements $DocumentsStateCopyWith<$Res> {
  factory _$DocumentsStateCopyWith(_DocumentsState value, $Res Function(_DocumentsState) _then) = __$DocumentsStateCopyWithImpl;
@override @useResult
$Res call({
 bool loading, List<UserDocument> items, DocumentsSummary? summary, DocumentFilters filters, DocumentFilterOptions filterOptions, int page, bool hasMore, int total, String? error, String? downloadingId
});




}
/// @nodoc
class __$DocumentsStateCopyWithImpl<$Res>
    implements _$DocumentsStateCopyWith<$Res> {
  __$DocumentsStateCopyWithImpl(this._self, this._then);

  final _DocumentsState _self;
  final $Res Function(_DocumentsState) _then;

/// Create a copy of DocumentsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? loading = null,Object? items = null,Object? summary = freezed,Object? filters = null,Object? filterOptions = null,Object? page = null,Object? hasMore = null,Object? total = null,Object? error = freezed,Object? downloadingId = freezed,}) {
  return _then(_DocumentsState(
loading: null == loading ? _self.loading : loading // ignore: cast_nullable_to_non_nullable
as bool,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<UserDocument>,summary: freezed == summary ? _self.summary : summary // ignore: cast_nullable_to_non_nullable
as DocumentsSummary?,filters: null == filters ? _self.filters : filters // ignore: cast_nullable_to_non_nullable
as DocumentFilters,filterOptions: null == filterOptions ? _self.filterOptions : filterOptions // ignore: cast_nullable_to_non_nullable
as DocumentFilterOptions,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,downloadingId: freezed == downloadingId ? _self.downloadingId : downloadingId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
