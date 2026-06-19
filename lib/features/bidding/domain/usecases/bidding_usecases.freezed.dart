// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bidding_usecases.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$GetBidsParams {
  String get auctionId => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;

  /// Create a copy of GetBidsParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetBidsParamsCopyWith<GetBidsParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetBidsParamsCopyWith<$Res> {
  factory $GetBidsParamsCopyWith(
    GetBidsParams value,
    $Res Function(GetBidsParams) then,
  ) = _$GetBidsParamsCopyWithImpl<$Res, GetBidsParams>;
  @useResult
  $Res call({String auctionId, int limit});
}

/// @nodoc
class _$GetBidsParamsCopyWithImpl<$Res, $Val extends GetBidsParams>
    implements $GetBidsParamsCopyWith<$Res> {
  _$GetBidsParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetBidsParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? auctionId = null, Object? limit = null}) {
    return _then(
      _value.copyWith(
            auctionId: null == auctionId
                ? _value.auctionId
                : auctionId // ignore: cast_nullable_to_non_nullable
                      as String,
            limit: null == limit
                ? _value.limit
                : limit // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GetBidsParamsImplCopyWith<$Res>
    implements $GetBidsParamsCopyWith<$Res> {
  factory _$$GetBidsParamsImplCopyWith(
    _$GetBidsParamsImpl value,
    $Res Function(_$GetBidsParamsImpl) then,
  ) = __$$GetBidsParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String auctionId, int limit});
}

/// @nodoc
class __$$GetBidsParamsImplCopyWithImpl<$Res>
    extends _$GetBidsParamsCopyWithImpl<$Res, _$GetBidsParamsImpl>
    implements _$$GetBidsParamsImplCopyWith<$Res> {
  __$$GetBidsParamsImplCopyWithImpl(
    _$GetBidsParamsImpl _value,
    $Res Function(_$GetBidsParamsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GetBidsParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? auctionId = null, Object? limit = null}) {
    return _then(
      _$GetBidsParamsImpl(
        auctionId: null == auctionId
            ? _value.auctionId
            : auctionId // ignore: cast_nullable_to_non_nullable
                  as String,
        limit: null == limit
            ? _value.limit
            : limit // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$GetBidsParamsImpl implements _GetBidsParams {
  const _$GetBidsParamsImpl({required this.auctionId, this.limit = 10});

  @override
  final String auctionId;
  @override
  @JsonKey()
  final int limit;

  @override
  String toString() {
    return 'GetBidsParams(auctionId: $auctionId, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetBidsParamsImpl &&
            (identical(other.auctionId, auctionId) ||
                other.auctionId == auctionId) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, auctionId, limit);

  /// Create a copy of GetBidsParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetBidsParamsImplCopyWith<_$GetBidsParamsImpl> get copyWith =>
      __$$GetBidsParamsImplCopyWithImpl<_$GetBidsParamsImpl>(this, _$identity);
}

abstract class _GetBidsParams implements GetBidsParams {
  const factory _GetBidsParams({
    required final String auctionId,
    final int limit,
  }) = _$GetBidsParamsImpl;

  @override
  String get auctionId;
  @override
  int get limit;

  /// Create a copy of GetBidsParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetBidsParamsImplCopyWith<_$GetBidsParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PlaceBidParams {
  String get auctionId => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;

  /// Create a copy of PlaceBidParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlaceBidParamsCopyWith<PlaceBidParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceBidParamsCopyWith<$Res> {
  factory $PlaceBidParamsCopyWith(
    PlaceBidParams value,
    $Res Function(PlaceBidParams) then,
  ) = _$PlaceBidParamsCopyWithImpl<$Res, PlaceBidParams>;
  @useResult
  $Res call({String auctionId, int amount});
}

/// @nodoc
class _$PlaceBidParamsCopyWithImpl<$Res, $Val extends PlaceBidParams>
    implements $PlaceBidParamsCopyWith<$Res> {
  _$PlaceBidParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlaceBidParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? auctionId = null, Object? amount = null}) {
    return _then(
      _value.copyWith(
            auctionId: null == auctionId
                ? _value.auctionId
                : auctionId // ignore: cast_nullable_to_non_nullable
                      as String,
            amount: null == amount
                ? _value.amount
                : amount // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PlaceBidParamsImplCopyWith<$Res>
    implements $PlaceBidParamsCopyWith<$Res> {
  factory _$$PlaceBidParamsImplCopyWith(
    _$PlaceBidParamsImpl value,
    $Res Function(_$PlaceBidParamsImpl) then,
  ) = __$$PlaceBidParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String auctionId, int amount});
}

/// @nodoc
class __$$PlaceBidParamsImplCopyWithImpl<$Res>
    extends _$PlaceBidParamsCopyWithImpl<$Res, _$PlaceBidParamsImpl>
    implements _$$PlaceBidParamsImplCopyWith<$Res> {
  __$$PlaceBidParamsImplCopyWithImpl(
    _$PlaceBidParamsImpl _value,
    $Res Function(_$PlaceBidParamsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PlaceBidParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? auctionId = null, Object? amount = null}) {
    return _then(
      _$PlaceBidParamsImpl(
        auctionId: null == auctionId
            ? _value.auctionId
            : auctionId // ignore: cast_nullable_to_non_nullable
                  as String,
        amount: null == amount
            ? _value.amount
            : amount // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$PlaceBidParamsImpl implements _PlaceBidParams {
  const _$PlaceBidParamsImpl({required this.auctionId, required this.amount});

  @override
  final String auctionId;
  @override
  final int amount;

  @override
  String toString() {
    return 'PlaceBidParams(auctionId: $auctionId, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceBidParamsImpl &&
            (identical(other.auctionId, auctionId) ||
                other.auctionId == auctionId) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, auctionId, amount);

  /// Create a copy of PlaceBidParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceBidParamsImplCopyWith<_$PlaceBidParamsImpl> get copyWith =>
      __$$PlaceBidParamsImplCopyWithImpl<_$PlaceBidParamsImpl>(
        this,
        _$identity,
      );
}

abstract class _PlaceBidParams implements PlaceBidParams {
  const factory _PlaceBidParams({
    required final String auctionId,
    required final int amount,
  }) = _$PlaceBidParamsImpl;

  @override
  String get auctionId;
  @override
  int get amount;

  /// Create a copy of PlaceBidParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlaceBidParamsImplCopyWith<_$PlaceBidParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
