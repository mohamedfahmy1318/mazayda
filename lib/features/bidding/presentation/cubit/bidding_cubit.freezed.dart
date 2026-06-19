// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bidding_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$BiddingState {
  bool get loading => throw _privateConstructorUsedError;
  List<BidEntry> get bids => throw _privateConstructorUsedError;
  int get currentPrice => throw _privateConstructorUsedError;
  String get currentPriceFormatted => throw _privateConstructorUsedError;
  int get bidCount => throw _privateConstructorUsedError;
  bool get isBiddable => throw _privateConstructorUsedError;
  bool get hasEnded => throw _privateConstructorUsedError;
  bool get placingBid => throw _privateConstructorUsedError;
  bool get isLive => throw _privateConstructorUsedError; // متصل بالـ realtime؟
  String? get error => throw _privateConstructorUsedError; // خطأ عام
  String? get bidError => throw _privateConstructorUsedError;

  /// Create a copy of BiddingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BiddingStateCopyWith<BiddingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BiddingStateCopyWith<$Res> {
  factory $BiddingStateCopyWith(
    BiddingState value,
    $Res Function(BiddingState) then,
  ) = _$BiddingStateCopyWithImpl<$Res, BiddingState>;
  @useResult
  $Res call({
    bool loading,
    List<BidEntry> bids,
    int currentPrice,
    String currentPriceFormatted,
    int bidCount,
    bool isBiddable,
    bool hasEnded,
    bool placingBid,
    bool isLive,
    String? error,
    String? bidError,
  });
}

/// @nodoc
class _$BiddingStateCopyWithImpl<$Res, $Val extends BiddingState>
    implements $BiddingStateCopyWith<$Res> {
  _$BiddingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BiddingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? bids = null,
    Object? currentPrice = null,
    Object? currentPriceFormatted = null,
    Object? bidCount = null,
    Object? isBiddable = null,
    Object? hasEnded = null,
    Object? placingBid = null,
    Object? isLive = null,
    Object? error = freezed,
    Object? bidError = freezed,
  }) {
    return _then(
      _value.copyWith(
            loading: null == loading
                ? _value.loading
                : loading // ignore: cast_nullable_to_non_nullable
                      as bool,
            bids: null == bids
                ? _value.bids
                : bids // ignore: cast_nullable_to_non_nullable
                      as List<BidEntry>,
            currentPrice: null == currentPrice
                ? _value.currentPrice
                : currentPrice // ignore: cast_nullable_to_non_nullable
                      as int,
            currentPriceFormatted: null == currentPriceFormatted
                ? _value.currentPriceFormatted
                : currentPriceFormatted // ignore: cast_nullable_to_non_nullable
                      as String,
            bidCount: null == bidCount
                ? _value.bidCount
                : bidCount // ignore: cast_nullable_to_non_nullable
                      as int,
            isBiddable: null == isBiddable
                ? _value.isBiddable
                : isBiddable // ignore: cast_nullable_to_non_nullable
                      as bool,
            hasEnded: null == hasEnded
                ? _value.hasEnded
                : hasEnded // ignore: cast_nullable_to_non_nullable
                      as bool,
            placingBid: null == placingBid
                ? _value.placingBid
                : placingBid // ignore: cast_nullable_to_non_nullable
                      as bool,
            isLive: null == isLive
                ? _value.isLive
                : isLive // ignore: cast_nullable_to_non_nullable
                      as bool,
            error: freezed == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                      as String?,
            bidError: freezed == bidError
                ? _value.bidError
                : bidError // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BiddingStateImplCopyWith<$Res>
    implements $BiddingStateCopyWith<$Res> {
  factory _$$BiddingStateImplCopyWith(
    _$BiddingStateImpl value,
    $Res Function(_$BiddingStateImpl) then,
  ) = __$$BiddingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool loading,
    List<BidEntry> bids,
    int currentPrice,
    String currentPriceFormatted,
    int bidCount,
    bool isBiddable,
    bool hasEnded,
    bool placingBid,
    bool isLive,
    String? error,
    String? bidError,
  });
}

/// @nodoc
class __$$BiddingStateImplCopyWithImpl<$Res>
    extends _$BiddingStateCopyWithImpl<$Res, _$BiddingStateImpl>
    implements _$$BiddingStateImplCopyWith<$Res> {
  __$$BiddingStateImplCopyWithImpl(
    _$BiddingStateImpl _value,
    $Res Function(_$BiddingStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BiddingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? bids = null,
    Object? currentPrice = null,
    Object? currentPriceFormatted = null,
    Object? bidCount = null,
    Object? isBiddable = null,
    Object? hasEnded = null,
    Object? placingBid = null,
    Object? isLive = null,
    Object? error = freezed,
    Object? bidError = freezed,
  }) {
    return _then(
      _$BiddingStateImpl(
        loading: null == loading
            ? _value.loading
            : loading // ignore: cast_nullable_to_non_nullable
                  as bool,
        bids: null == bids
            ? _value._bids
            : bids // ignore: cast_nullable_to_non_nullable
                  as List<BidEntry>,
        currentPrice: null == currentPrice
            ? _value.currentPrice
            : currentPrice // ignore: cast_nullable_to_non_nullable
                  as int,
        currentPriceFormatted: null == currentPriceFormatted
            ? _value.currentPriceFormatted
            : currentPriceFormatted // ignore: cast_nullable_to_non_nullable
                  as String,
        bidCount: null == bidCount
            ? _value.bidCount
            : bidCount // ignore: cast_nullable_to_non_nullable
                  as int,
        isBiddable: null == isBiddable
            ? _value.isBiddable
            : isBiddable // ignore: cast_nullable_to_non_nullable
                  as bool,
        hasEnded: null == hasEnded
            ? _value.hasEnded
            : hasEnded // ignore: cast_nullable_to_non_nullable
                  as bool,
        placingBid: null == placingBid
            ? _value.placingBid
            : placingBid // ignore: cast_nullable_to_non_nullable
                  as bool,
        isLive: null == isLive
            ? _value.isLive
            : isLive // ignore: cast_nullable_to_non_nullable
                  as bool,
        error: freezed == error
            ? _value.error
            : error // ignore: cast_nullable_to_non_nullable
                  as String?,
        bidError: freezed == bidError
            ? _value.bidError
            : bidError // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$BiddingStateImpl implements _BiddingState {
  const _$BiddingStateImpl({
    this.loading = true,
    final List<BidEntry> bids = const <BidEntry>[],
    this.currentPrice = 0,
    this.currentPriceFormatted = '',
    this.bidCount = 0,
    this.isBiddable = false,
    this.hasEnded = false,
    this.placingBid = false,
    this.isLive = false,
    this.error,
    this.bidError,
  }) : _bids = bids;

  @override
  @JsonKey()
  final bool loading;
  final List<BidEntry> _bids;
  @override
  @JsonKey()
  List<BidEntry> get bids {
    if (_bids is EqualUnmodifiableListView) return _bids;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bids);
  }

  @override
  @JsonKey()
  final int currentPrice;
  @override
  @JsonKey()
  final String currentPriceFormatted;
  @override
  @JsonKey()
  final int bidCount;
  @override
  @JsonKey()
  final bool isBiddable;
  @override
  @JsonKey()
  final bool hasEnded;
  @override
  @JsonKey()
  final bool placingBid;
  @override
  @JsonKey()
  final bool isLive;
  // متصل بالـ realtime؟
  @override
  final String? error;
  // خطأ عام
  @override
  final String? bidError;

  @override
  String toString() {
    return 'BiddingState(loading: $loading, bids: $bids, currentPrice: $currentPrice, currentPriceFormatted: $currentPriceFormatted, bidCount: $bidCount, isBiddable: $isBiddable, hasEnded: $hasEnded, placingBid: $placingBid, isLive: $isLive, error: $error, bidError: $bidError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BiddingStateImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            const DeepCollectionEquality().equals(other._bids, _bids) &&
            (identical(other.currentPrice, currentPrice) ||
                other.currentPrice == currentPrice) &&
            (identical(other.currentPriceFormatted, currentPriceFormatted) ||
                other.currentPriceFormatted == currentPriceFormatted) &&
            (identical(other.bidCount, bidCount) ||
                other.bidCount == bidCount) &&
            (identical(other.isBiddable, isBiddable) ||
                other.isBiddable == isBiddable) &&
            (identical(other.hasEnded, hasEnded) ||
                other.hasEnded == hasEnded) &&
            (identical(other.placingBid, placingBid) ||
                other.placingBid == placingBid) &&
            (identical(other.isLive, isLive) || other.isLive == isLive) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.bidError, bidError) ||
                other.bidError == bidError));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    loading,
    const DeepCollectionEquality().hash(_bids),
    currentPrice,
    currentPriceFormatted,
    bidCount,
    isBiddable,
    hasEnded,
    placingBid,
    isLive,
    error,
    bidError,
  );

  /// Create a copy of BiddingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BiddingStateImplCopyWith<_$BiddingStateImpl> get copyWith =>
      __$$BiddingStateImplCopyWithImpl<_$BiddingStateImpl>(this, _$identity);
}

abstract class _BiddingState implements BiddingState {
  const factory _BiddingState({
    final bool loading,
    final List<BidEntry> bids,
    final int currentPrice,
    final String currentPriceFormatted,
    final int bidCount,
    final bool isBiddable,
    final bool hasEnded,
    final bool placingBid,
    final bool isLive,
    final String? error,
    final String? bidError,
  }) = _$BiddingStateImpl;

  @override
  bool get loading;
  @override
  List<BidEntry> get bids;
  @override
  int get currentPrice;
  @override
  String get currentPriceFormatted;
  @override
  int get bidCount;
  @override
  bool get isBiddable;
  @override
  bool get hasEnded;
  @override
  bool get placingBid;
  @override
  bool get isLive; // متصل بالـ realtime؟
  @override
  String? get error; // خطأ عام
  @override
  String? get bidError;

  /// Create a copy of BiddingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BiddingStateImplCopyWith<_$BiddingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
