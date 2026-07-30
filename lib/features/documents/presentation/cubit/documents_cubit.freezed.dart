// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'documents_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$DocumentsState {
  bool get loading => throw _privateConstructorUsedError;
  List<UserDocument> get items => throw _privateConstructorUsedError;
  DocumentsSummary? get summary => throw _privateConstructorUsedError;
  DocumentFilters get filters => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  bool get hasMore => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// معرّف الوثيقة اللي بتتنزّل حاليًا (عشان نعرض مؤشّر عليها هي بس).
  String? get downloadingId => throw _privateConstructorUsedError;

  /// Create a copy of DocumentsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DocumentsStateCopyWith<DocumentsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentsStateCopyWith<$Res> {
  factory $DocumentsStateCopyWith(
    DocumentsState value,
    $Res Function(DocumentsState) then,
  ) = _$DocumentsStateCopyWithImpl<$Res, DocumentsState>;
  @useResult
  $Res call({
    bool loading,
    List<UserDocument> items,
    DocumentsSummary? summary,
    DocumentFilters filters,
    int page,
    bool hasMore,
    int total,
    String? error,
    String? downloadingId,
  });
}

/// @nodoc
class _$DocumentsStateCopyWithImpl<$Res, $Val extends DocumentsState>
    implements $DocumentsStateCopyWith<$Res> {
  _$DocumentsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DocumentsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? items = null,
    Object? summary = freezed,
    Object? filters = null,
    Object? page = null,
    Object? hasMore = null,
    Object? total = null,
    Object? error = freezed,
    Object? downloadingId = freezed,
  }) {
    return _then(
      _value.copyWith(
            loading: null == loading
                ? _value.loading
                : loading // ignore: cast_nullable_to_non_nullable
                      as bool,
            items: null == items
                ? _value.items
                : items // ignore: cast_nullable_to_non_nullable
                      as List<UserDocument>,
            summary: freezed == summary
                ? _value.summary
                : summary // ignore: cast_nullable_to_non_nullable
                      as DocumentsSummary?,
            filters: null == filters
                ? _value.filters
                : filters // ignore: cast_nullable_to_non_nullable
                      as DocumentFilters,
            page: null == page
                ? _value.page
                : page // ignore: cast_nullable_to_non_nullable
                      as int,
            hasMore: null == hasMore
                ? _value.hasMore
                : hasMore // ignore: cast_nullable_to_non_nullable
                      as bool,
            total: null == total
                ? _value.total
                : total // ignore: cast_nullable_to_non_nullable
                      as int,
            error: freezed == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                      as String?,
            downloadingId: freezed == downloadingId
                ? _value.downloadingId
                : downloadingId // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DocumentsStateImplCopyWith<$Res>
    implements $DocumentsStateCopyWith<$Res> {
  factory _$$DocumentsStateImplCopyWith(
    _$DocumentsStateImpl value,
    $Res Function(_$DocumentsStateImpl) then,
  ) = __$$DocumentsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool loading,
    List<UserDocument> items,
    DocumentsSummary? summary,
    DocumentFilters filters,
    int page,
    bool hasMore,
    int total,
    String? error,
    String? downloadingId,
  });
}

/// @nodoc
class __$$DocumentsStateImplCopyWithImpl<$Res>
    extends _$DocumentsStateCopyWithImpl<$Res, _$DocumentsStateImpl>
    implements _$$DocumentsStateImplCopyWith<$Res> {
  __$$DocumentsStateImplCopyWithImpl(
    _$DocumentsStateImpl _value,
    $Res Function(_$DocumentsStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DocumentsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? items = null,
    Object? summary = freezed,
    Object? filters = null,
    Object? page = null,
    Object? hasMore = null,
    Object? total = null,
    Object? error = freezed,
    Object? downloadingId = freezed,
  }) {
    return _then(
      _$DocumentsStateImpl(
        loading: null == loading
            ? _value.loading
            : loading // ignore: cast_nullable_to_non_nullable
                  as bool,
        items: null == items
            ? _value._items
            : items // ignore: cast_nullable_to_non_nullable
                  as List<UserDocument>,
        summary: freezed == summary
            ? _value.summary
            : summary // ignore: cast_nullable_to_non_nullable
                  as DocumentsSummary?,
        filters: null == filters
            ? _value.filters
            : filters // ignore: cast_nullable_to_non_nullable
                  as DocumentFilters,
        page: null == page
            ? _value.page
            : page // ignore: cast_nullable_to_non_nullable
                  as int,
        hasMore: null == hasMore
            ? _value.hasMore
            : hasMore // ignore: cast_nullable_to_non_nullable
                  as bool,
        total: null == total
            ? _value.total
            : total // ignore: cast_nullable_to_non_nullable
                  as int,
        error: freezed == error
            ? _value.error
            : error // ignore: cast_nullable_to_non_nullable
                  as String?,
        downloadingId: freezed == downloadingId
            ? _value.downloadingId
            : downloadingId // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$DocumentsStateImpl extends _DocumentsState {
  const _$DocumentsStateImpl({
    this.loading = false,
    final List<UserDocument> items = const <UserDocument>[],
    this.summary,
    this.filters = const DocumentFilters(),
    this.page = 1,
    this.hasMore = false,
    this.total = 0,
    this.error,
    this.downloadingId,
  }) : _items = items,
       super._();

  @override
  @JsonKey()
  final bool loading;
  final List<UserDocument> _items;
  @override
  @JsonKey()
  List<UserDocument> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final DocumentsSummary? summary;
  @override
  @JsonKey()
  final DocumentFilters filters;
  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final bool hasMore;
  @override
  @JsonKey()
  final int total;
  @override
  final String? error;

  /// معرّف الوثيقة اللي بتتنزّل حاليًا (عشان نعرض مؤشّر عليها هي بس).
  @override
  final String? downloadingId;

  @override
  String toString() {
    return 'DocumentsState(loading: $loading, items: $items, summary: $summary, filters: $filters, page: $page, hasMore: $hasMore, total: $total, error: $error, downloadingId: $downloadingId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DocumentsStateImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            (identical(other.filters, filters) || other.filters == filters) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.downloadingId, downloadingId) ||
                other.downloadingId == downloadingId));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    loading,
    const DeepCollectionEquality().hash(_items),
    summary,
    filters,
    page,
    hasMore,
    total,
    error,
    downloadingId,
  );

  /// Create a copy of DocumentsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DocumentsStateImplCopyWith<_$DocumentsStateImpl> get copyWith =>
      __$$DocumentsStateImplCopyWithImpl<_$DocumentsStateImpl>(
        this,
        _$identity,
      );
}

abstract class _DocumentsState extends DocumentsState {
  const factory _DocumentsState({
    final bool loading,
    final List<UserDocument> items,
    final DocumentsSummary? summary,
    final DocumentFilters filters,
    final int page,
    final bool hasMore,
    final int total,
    final String? error,
    final String? downloadingId,
  }) = _$DocumentsStateImpl;
  const _DocumentsState._() : super._();

  @override
  bool get loading;
  @override
  List<UserDocument> get items;
  @override
  DocumentsSummary? get summary;
  @override
  DocumentFilters get filters;
  @override
  int get page;
  @override
  bool get hasMore;
  @override
  int get total;
  @override
  String? get error;

  /// معرّف الوثيقة اللي بتتنزّل حاليًا (عشان نعرض مؤشّر عليها هي بس).
  @override
  String? get downloadingId;

  /// Create a copy of DocumentsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DocumentsStateImplCopyWith<_$DocumentsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
