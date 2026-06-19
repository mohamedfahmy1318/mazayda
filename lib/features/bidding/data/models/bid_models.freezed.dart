// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bid_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

BidEntryModel _$BidEntryModelFromJson(Map<String, dynamic> json) {
  return _BidEntryModel.fromJson(json);
}

/// @nodoc
mixin _$BidEntryModel {
  MoneyModel? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: 'bidder_alias')
  String? get bidderAlias => throw _privateConstructorUsedError;
  @JsonKey(name: 'bid_time')
  String? get bidTime => throw _privateConstructorUsedError;

  /// Serializes this BidEntryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BidEntryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BidEntryModelCopyWith<BidEntryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BidEntryModelCopyWith<$Res> {
  factory $BidEntryModelCopyWith(
    BidEntryModel value,
    $Res Function(BidEntryModel) then,
  ) = _$BidEntryModelCopyWithImpl<$Res, BidEntryModel>;
  @useResult
  $Res call({
    MoneyModel? amount,
    @JsonKey(name: 'bidder_alias') String? bidderAlias,
    @JsonKey(name: 'bid_time') String? bidTime,
  });

  $MoneyModelCopyWith<$Res>? get amount;
}

/// @nodoc
class _$BidEntryModelCopyWithImpl<$Res, $Val extends BidEntryModel>
    implements $BidEntryModelCopyWith<$Res> {
  _$BidEntryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BidEntryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = freezed,
    Object? bidderAlias = freezed,
    Object? bidTime = freezed,
  }) {
    return _then(
      _value.copyWith(
            amount: freezed == amount
                ? _value.amount
                : amount // ignore: cast_nullable_to_non_nullable
                      as MoneyModel?,
            bidderAlias: freezed == bidderAlias
                ? _value.bidderAlias
                : bidderAlias // ignore: cast_nullable_to_non_nullable
                      as String?,
            bidTime: freezed == bidTime
                ? _value.bidTime
                : bidTime // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }

  /// Create a copy of BidEntryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyModelCopyWith<$Res>? get amount {
    if (_value.amount == null) {
      return null;
    }

    return $MoneyModelCopyWith<$Res>(_value.amount!, (value) {
      return _then(_value.copyWith(amount: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BidEntryModelImplCopyWith<$Res>
    implements $BidEntryModelCopyWith<$Res> {
  factory _$$BidEntryModelImplCopyWith(
    _$BidEntryModelImpl value,
    $Res Function(_$BidEntryModelImpl) then,
  ) = __$$BidEntryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    MoneyModel? amount,
    @JsonKey(name: 'bidder_alias') String? bidderAlias,
    @JsonKey(name: 'bid_time') String? bidTime,
  });

  @override
  $MoneyModelCopyWith<$Res>? get amount;
}

/// @nodoc
class __$$BidEntryModelImplCopyWithImpl<$Res>
    extends _$BidEntryModelCopyWithImpl<$Res, _$BidEntryModelImpl>
    implements _$$BidEntryModelImplCopyWith<$Res> {
  __$$BidEntryModelImplCopyWithImpl(
    _$BidEntryModelImpl _value,
    $Res Function(_$BidEntryModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BidEntryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = freezed,
    Object? bidderAlias = freezed,
    Object? bidTime = freezed,
  }) {
    return _then(
      _$BidEntryModelImpl(
        amount: freezed == amount
            ? _value.amount
            : amount // ignore: cast_nullable_to_non_nullable
                  as MoneyModel?,
        bidderAlias: freezed == bidderAlias
            ? _value.bidderAlias
            : bidderAlias // ignore: cast_nullable_to_non_nullable
                  as String?,
        bidTime: freezed == bidTime
            ? _value.bidTime
            : bidTime // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BidEntryModelImpl extends _BidEntryModel {
  const _$BidEntryModelImpl({
    this.amount,
    @JsonKey(name: 'bidder_alias') this.bidderAlias,
    @JsonKey(name: 'bid_time') this.bidTime,
  }) : super._();

  factory _$BidEntryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BidEntryModelImplFromJson(json);

  @override
  final MoneyModel? amount;
  @override
  @JsonKey(name: 'bidder_alias')
  final String? bidderAlias;
  @override
  @JsonKey(name: 'bid_time')
  final String? bidTime;

  @override
  String toString() {
    return 'BidEntryModel(amount: $amount, bidderAlias: $bidderAlias, bidTime: $bidTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BidEntryModelImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.bidderAlias, bidderAlias) ||
                other.bidderAlias == bidderAlias) &&
            (identical(other.bidTime, bidTime) || other.bidTime == bidTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, amount, bidderAlias, bidTime);

  /// Create a copy of BidEntryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BidEntryModelImplCopyWith<_$BidEntryModelImpl> get copyWith =>
      __$$BidEntryModelImplCopyWithImpl<_$BidEntryModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BidEntryModelImplToJson(this);
  }
}

abstract class _BidEntryModel extends BidEntryModel {
  const factory _BidEntryModel({
    final MoneyModel? amount,
    @JsonKey(name: 'bidder_alias') final String? bidderAlias,
    @JsonKey(name: 'bid_time') final String? bidTime,
  }) = _$BidEntryModelImpl;
  const _BidEntryModel._() : super._();

  factory _BidEntryModel.fromJson(Map<String, dynamic> json) =
      _$BidEntryModelImpl.fromJson;

  @override
  MoneyModel? get amount;
  @override
  @JsonKey(name: 'bidder_alias')
  String? get bidderAlias;
  @override
  @JsonKey(name: 'bid_time')
  String? get bidTime;

  /// Create a copy of BidEntryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BidEntryModelImplCopyWith<_$BidEntryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PriceSnapshotModel _$PriceSnapshotModelFromJson(Map<String, dynamic> json) {
  return _PriceSnapshotModel.fromJson(json);
}

/// @nodoc
mixin _$PriceSnapshotModel {
  @JsonKey(name: 'current_price')
  int get currentPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_price_formatted')
  String get currentPriceFormatted => throw _privateConstructorUsedError;
  @JsonKey(name: 'bid_count')
  int get bidCount => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_biddable')
  bool get isBiddable => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_ended')
  bool get hasEnded => throw _privateConstructorUsedError;

  /// Serializes this PriceSnapshotModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PriceSnapshotModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PriceSnapshotModelCopyWith<PriceSnapshotModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceSnapshotModelCopyWith<$Res> {
  factory $PriceSnapshotModelCopyWith(
    PriceSnapshotModel value,
    $Res Function(PriceSnapshotModel) then,
  ) = _$PriceSnapshotModelCopyWithImpl<$Res, PriceSnapshotModel>;
  @useResult
  $Res call({
    @JsonKey(name: 'current_price') int currentPrice,
    @JsonKey(name: 'current_price_formatted') String currentPriceFormatted,
    @JsonKey(name: 'bid_count') int bidCount,
    String status,
    @JsonKey(name: 'is_biddable') bool isBiddable,
    @JsonKey(name: 'has_ended') bool hasEnded,
  });
}

/// @nodoc
class _$PriceSnapshotModelCopyWithImpl<$Res, $Val extends PriceSnapshotModel>
    implements $PriceSnapshotModelCopyWith<$Res> {
  _$PriceSnapshotModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PriceSnapshotModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPrice = null,
    Object? currentPriceFormatted = null,
    Object? bidCount = null,
    Object? status = null,
    Object? isBiddable = null,
    Object? hasEnded = null,
  }) {
    return _then(
      _value.copyWith(
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
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String,
            isBiddable: null == isBiddable
                ? _value.isBiddable
                : isBiddable // ignore: cast_nullable_to_non_nullable
                      as bool,
            hasEnded: null == hasEnded
                ? _value.hasEnded
                : hasEnded // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PriceSnapshotModelImplCopyWith<$Res>
    implements $PriceSnapshotModelCopyWith<$Res> {
  factory _$$PriceSnapshotModelImplCopyWith(
    _$PriceSnapshotModelImpl value,
    $Res Function(_$PriceSnapshotModelImpl) then,
  ) = __$$PriceSnapshotModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'current_price') int currentPrice,
    @JsonKey(name: 'current_price_formatted') String currentPriceFormatted,
    @JsonKey(name: 'bid_count') int bidCount,
    String status,
    @JsonKey(name: 'is_biddable') bool isBiddable,
    @JsonKey(name: 'has_ended') bool hasEnded,
  });
}

/// @nodoc
class __$$PriceSnapshotModelImplCopyWithImpl<$Res>
    extends _$PriceSnapshotModelCopyWithImpl<$Res, _$PriceSnapshotModelImpl>
    implements _$$PriceSnapshotModelImplCopyWith<$Res> {
  __$$PriceSnapshotModelImplCopyWithImpl(
    _$PriceSnapshotModelImpl _value,
    $Res Function(_$PriceSnapshotModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PriceSnapshotModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPrice = null,
    Object? currentPriceFormatted = null,
    Object? bidCount = null,
    Object? status = null,
    Object? isBiddable = null,
    Object? hasEnded = null,
  }) {
    return _then(
      _$PriceSnapshotModelImpl(
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
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String,
        isBiddable: null == isBiddable
            ? _value.isBiddable
            : isBiddable // ignore: cast_nullable_to_non_nullable
                  as bool,
        hasEnded: null == hasEnded
            ? _value.hasEnded
            : hasEnded // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PriceSnapshotModelImpl extends _PriceSnapshotModel {
  const _$PriceSnapshotModelImpl({
    @JsonKey(name: 'current_price') this.currentPrice = 0,
    @JsonKey(name: 'current_price_formatted') this.currentPriceFormatted = '',
    @JsonKey(name: 'bid_count') this.bidCount = 0,
    this.status = '',
    @JsonKey(name: 'is_biddable') this.isBiddable = false,
    @JsonKey(name: 'has_ended') this.hasEnded = false,
  }) : super._();

  factory _$PriceSnapshotModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PriceSnapshotModelImplFromJson(json);

  @override
  @JsonKey(name: 'current_price')
  final int currentPrice;
  @override
  @JsonKey(name: 'current_price_formatted')
  final String currentPriceFormatted;
  @override
  @JsonKey(name: 'bid_count')
  final int bidCount;
  @override
  @JsonKey()
  final String status;
  @override
  @JsonKey(name: 'is_biddable')
  final bool isBiddable;
  @override
  @JsonKey(name: 'has_ended')
  final bool hasEnded;

  @override
  String toString() {
    return 'PriceSnapshotModel(currentPrice: $currentPrice, currentPriceFormatted: $currentPriceFormatted, bidCount: $bidCount, status: $status, isBiddable: $isBiddable, hasEnded: $hasEnded)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PriceSnapshotModelImpl &&
            (identical(other.currentPrice, currentPrice) ||
                other.currentPrice == currentPrice) &&
            (identical(other.currentPriceFormatted, currentPriceFormatted) ||
                other.currentPriceFormatted == currentPriceFormatted) &&
            (identical(other.bidCount, bidCount) ||
                other.bidCount == bidCount) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isBiddable, isBiddable) ||
                other.isBiddable == isBiddable) &&
            (identical(other.hasEnded, hasEnded) ||
                other.hasEnded == hasEnded));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    currentPrice,
    currentPriceFormatted,
    bidCount,
    status,
    isBiddable,
    hasEnded,
  );

  /// Create a copy of PriceSnapshotModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PriceSnapshotModelImplCopyWith<_$PriceSnapshotModelImpl> get copyWith =>
      __$$PriceSnapshotModelImplCopyWithImpl<_$PriceSnapshotModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PriceSnapshotModelImplToJson(this);
  }
}

abstract class _PriceSnapshotModel extends PriceSnapshotModel {
  const factory _PriceSnapshotModel({
    @JsonKey(name: 'current_price') final int currentPrice,
    @JsonKey(name: 'current_price_formatted')
    final String currentPriceFormatted,
    @JsonKey(name: 'bid_count') final int bidCount,
    final String status,
    @JsonKey(name: 'is_biddable') final bool isBiddable,
    @JsonKey(name: 'has_ended') final bool hasEnded,
  }) = _$PriceSnapshotModelImpl;
  const _PriceSnapshotModel._() : super._();

  factory _PriceSnapshotModel.fromJson(Map<String, dynamic> json) =
      _$PriceSnapshotModelImpl.fromJson;

  @override
  @JsonKey(name: 'current_price')
  int get currentPrice;
  @override
  @JsonKey(name: 'current_price_formatted')
  String get currentPriceFormatted;
  @override
  @JsonKey(name: 'bid_count')
  int get bidCount;
  @override
  String get status;
  @override
  @JsonKey(name: 'is_biddable')
  bool get isBiddable;
  @override
  @JsonKey(name: 'has_ended')
  bool get hasEnded;

  /// Create a copy of PriceSnapshotModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PriceSnapshotModelImplCopyWith<_$PriceSnapshotModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
