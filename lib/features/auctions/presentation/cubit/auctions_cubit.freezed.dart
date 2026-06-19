// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auctions_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AuctionsState {
  bool get loading => throw _privateConstructorUsedError;
  List<Auction> get auctions => throw _privateConstructorUsedError;
  bool get hasMore => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError; // فلاتر نشطة
  String get query => throw _privateConstructorUsedError;
  String? get statusFilter => throw _privateConstructorUsedError;
  String? get typeFilter => throw _privateConstructorUsedError;
  int? get wilayaId => throw _privateConstructorUsedError;
  String? get wilayaName => throw _privateConstructorUsedError;

  /// Create a copy of AuctionsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuctionsStateCopyWith<AuctionsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuctionsStateCopyWith<$Res> {
  factory $AuctionsStateCopyWith(
    AuctionsState value,
    $Res Function(AuctionsState) then,
  ) = _$AuctionsStateCopyWithImpl<$Res, AuctionsState>;
  @useResult
  $Res call({
    bool loading,
    List<Auction> auctions,
    bool hasMore,
    int page,
    String? error,
    String query,
    String? statusFilter,
    String? typeFilter,
    int? wilayaId,
    String? wilayaName,
  });
}

/// @nodoc
class _$AuctionsStateCopyWithImpl<$Res, $Val extends AuctionsState>
    implements $AuctionsStateCopyWith<$Res> {
  _$AuctionsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuctionsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? auctions = null,
    Object? hasMore = null,
    Object? page = null,
    Object? error = freezed,
    Object? query = null,
    Object? statusFilter = freezed,
    Object? typeFilter = freezed,
    Object? wilayaId = freezed,
    Object? wilayaName = freezed,
  }) {
    return _then(
      _value.copyWith(
            loading: null == loading
                ? _value.loading
                : loading // ignore: cast_nullable_to_non_nullable
                      as bool,
            auctions: null == auctions
                ? _value.auctions
                : auctions // ignore: cast_nullable_to_non_nullable
                      as List<Auction>,
            hasMore: null == hasMore
                ? _value.hasMore
                : hasMore // ignore: cast_nullable_to_non_nullable
                      as bool,
            page: null == page
                ? _value.page
                : page // ignore: cast_nullable_to_non_nullable
                      as int,
            error: freezed == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                      as String?,
            query: null == query
                ? _value.query
                : query // ignore: cast_nullable_to_non_nullable
                      as String,
            statusFilter: freezed == statusFilter
                ? _value.statusFilter
                : statusFilter // ignore: cast_nullable_to_non_nullable
                      as String?,
            typeFilter: freezed == typeFilter
                ? _value.typeFilter
                : typeFilter // ignore: cast_nullable_to_non_nullable
                      as String?,
            wilayaId: freezed == wilayaId
                ? _value.wilayaId
                : wilayaId // ignore: cast_nullable_to_non_nullable
                      as int?,
            wilayaName: freezed == wilayaName
                ? _value.wilayaName
                : wilayaName // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AuctionsStateImplCopyWith<$Res>
    implements $AuctionsStateCopyWith<$Res> {
  factory _$$AuctionsStateImplCopyWith(
    _$AuctionsStateImpl value,
    $Res Function(_$AuctionsStateImpl) then,
  ) = __$$AuctionsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool loading,
    List<Auction> auctions,
    bool hasMore,
    int page,
    String? error,
    String query,
    String? statusFilter,
    String? typeFilter,
    int? wilayaId,
    String? wilayaName,
  });
}

/// @nodoc
class __$$AuctionsStateImplCopyWithImpl<$Res>
    extends _$AuctionsStateCopyWithImpl<$Res, _$AuctionsStateImpl>
    implements _$$AuctionsStateImplCopyWith<$Res> {
  __$$AuctionsStateImplCopyWithImpl(
    _$AuctionsStateImpl _value,
    $Res Function(_$AuctionsStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuctionsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? auctions = null,
    Object? hasMore = null,
    Object? page = null,
    Object? error = freezed,
    Object? query = null,
    Object? statusFilter = freezed,
    Object? typeFilter = freezed,
    Object? wilayaId = freezed,
    Object? wilayaName = freezed,
  }) {
    return _then(
      _$AuctionsStateImpl(
        loading: null == loading
            ? _value.loading
            : loading // ignore: cast_nullable_to_non_nullable
                  as bool,
        auctions: null == auctions
            ? _value._auctions
            : auctions // ignore: cast_nullable_to_non_nullable
                  as List<Auction>,
        hasMore: null == hasMore
            ? _value.hasMore
            : hasMore // ignore: cast_nullable_to_non_nullable
                  as bool,
        page: null == page
            ? _value.page
            : page // ignore: cast_nullable_to_non_nullable
                  as int,
        error: freezed == error
            ? _value.error
            : error // ignore: cast_nullable_to_non_nullable
                  as String?,
        query: null == query
            ? _value.query
            : query // ignore: cast_nullable_to_non_nullable
                  as String,
        statusFilter: freezed == statusFilter
            ? _value.statusFilter
            : statusFilter // ignore: cast_nullable_to_non_nullable
                  as String?,
        typeFilter: freezed == typeFilter
            ? _value.typeFilter
            : typeFilter // ignore: cast_nullable_to_non_nullable
                  as String?,
        wilayaId: freezed == wilayaId
            ? _value.wilayaId
            : wilayaId // ignore: cast_nullable_to_non_nullable
                  as int?,
        wilayaName: freezed == wilayaName
            ? _value.wilayaName
            : wilayaName // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$AuctionsStateImpl implements _AuctionsState {
  const _$AuctionsStateImpl({
    this.loading = false,
    final List<Auction> auctions = const <Auction>[],
    this.hasMore = false,
    this.page = 1,
    this.error,
    this.query = '',
    this.statusFilter,
    this.typeFilter,
    this.wilayaId,
    this.wilayaName,
  }) : _auctions = auctions;

  @override
  @JsonKey()
  final bool loading;
  final List<Auction> _auctions;
  @override
  @JsonKey()
  List<Auction> get auctions {
    if (_auctions is EqualUnmodifiableListView) return _auctions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_auctions);
  }

  @override
  @JsonKey()
  final bool hasMore;
  @override
  @JsonKey()
  final int page;
  @override
  final String? error;
  // فلاتر نشطة
  @override
  @JsonKey()
  final String query;
  @override
  final String? statusFilter;
  @override
  final String? typeFilter;
  @override
  final int? wilayaId;
  @override
  final String? wilayaName;

  @override
  String toString() {
    return 'AuctionsState(loading: $loading, auctions: $auctions, hasMore: $hasMore, page: $page, error: $error, query: $query, statusFilter: $statusFilter, typeFilter: $typeFilter, wilayaId: $wilayaId, wilayaName: $wilayaName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuctionsStateImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            const DeepCollectionEquality().equals(other._auctions, _auctions) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.statusFilter, statusFilter) ||
                other.statusFilter == statusFilter) &&
            (identical(other.typeFilter, typeFilter) ||
                other.typeFilter == typeFilter) &&
            (identical(other.wilayaId, wilayaId) ||
                other.wilayaId == wilayaId) &&
            (identical(other.wilayaName, wilayaName) ||
                other.wilayaName == wilayaName));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    loading,
    const DeepCollectionEquality().hash(_auctions),
    hasMore,
    page,
    error,
    query,
    statusFilter,
    typeFilter,
    wilayaId,
    wilayaName,
  );

  /// Create a copy of AuctionsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuctionsStateImplCopyWith<_$AuctionsStateImpl> get copyWith =>
      __$$AuctionsStateImplCopyWithImpl<_$AuctionsStateImpl>(this, _$identity);
}

abstract class _AuctionsState implements AuctionsState {
  const factory _AuctionsState({
    final bool loading,
    final List<Auction> auctions,
    final bool hasMore,
    final int page,
    final String? error,
    final String query,
    final String? statusFilter,
    final String? typeFilter,
    final int? wilayaId,
    final String? wilayaName,
  }) = _$AuctionsStateImpl;

  @override
  bool get loading;
  @override
  List<Auction> get auctions;
  @override
  bool get hasMore;
  @override
  int get page;
  @override
  String? get error; // فلاتر نشطة
  @override
  String get query;
  @override
  String? get statusFilter;
  @override
  String? get typeFilter;
  @override
  int? get wilayaId;
  @override
  String? get wilayaName;

  /// Create a copy of AuctionsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuctionsStateImplCopyWith<_$AuctionsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
