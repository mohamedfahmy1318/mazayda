// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_otp.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$VerifyOtpParams {
  String get userId => throw _privateConstructorUsedError;
  String get otp => throw _privateConstructorUsedError;
  String get deviceName => throw _privateConstructorUsedError;

  /// Create a copy of VerifyOtpParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VerifyOtpParamsCopyWith<VerifyOtpParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyOtpParamsCopyWith<$Res> {
  factory $VerifyOtpParamsCopyWith(
    VerifyOtpParams value,
    $Res Function(VerifyOtpParams) then,
  ) = _$VerifyOtpParamsCopyWithImpl<$Res, VerifyOtpParams>;
  @useResult
  $Res call({String userId, String otp, String deviceName});
}

/// @nodoc
class _$VerifyOtpParamsCopyWithImpl<$Res, $Val extends VerifyOtpParams>
    implements $VerifyOtpParamsCopyWith<$Res> {
  _$VerifyOtpParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VerifyOtpParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? otp = null,
    Object? deviceName = null,
  }) {
    return _then(
      _value.copyWith(
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as String,
            otp: null == otp
                ? _value.otp
                : otp // ignore: cast_nullable_to_non_nullable
                      as String,
            deviceName: null == deviceName
                ? _value.deviceName
                : deviceName // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$VerifyOtpParamsImplCopyWith<$Res>
    implements $VerifyOtpParamsCopyWith<$Res> {
  factory _$$VerifyOtpParamsImplCopyWith(
    _$VerifyOtpParamsImpl value,
    $Res Function(_$VerifyOtpParamsImpl) then,
  ) = __$$VerifyOtpParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, String otp, String deviceName});
}

/// @nodoc
class __$$VerifyOtpParamsImplCopyWithImpl<$Res>
    extends _$VerifyOtpParamsCopyWithImpl<$Res, _$VerifyOtpParamsImpl>
    implements _$$VerifyOtpParamsImplCopyWith<$Res> {
  __$$VerifyOtpParamsImplCopyWithImpl(
    _$VerifyOtpParamsImpl _value,
    $Res Function(_$VerifyOtpParamsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of VerifyOtpParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? otp = null,
    Object? deviceName = null,
  }) {
    return _then(
      _$VerifyOtpParamsImpl(
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as String,
        otp: null == otp
            ? _value.otp
            : otp // ignore: cast_nullable_to_non_nullable
                  as String,
        deviceName: null == deviceName
            ? _value.deviceName
            : deviceName // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$VerifyOtpParamsImpl implements _VerifyOtpParams {
  const _$VerifyOtpParamsImpl({
    required this.userId,
    required this.otp,
    required this.deviceName,
  });

  @override
  final String userId;
  @override
  final String otp;
  @override
  final String deviceName;

  @override
  String toString() {
    return 'VerifyOtpParams(userId: $userId, otp: $otp, deviceName: $deviceName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyOtpParamsImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.deviceName, deviceName) ||
                other.deviceName == deviceName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, otp, deviceName);

  /// Create a copy of VerifyOtpParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyOtpParamsImplCopyWith<_$VerifyOtpParamsImpl> get copyWith =>
      __$$VerifyOtpParamsImplCopyWithImpl<_$VerifyOtpParamsImpl>(
        this,
        _$identity,
      );
}

abstract class _VerifyOtpParams implements VerifyOtpParams {
  const factory _VerifyOtpParams({
    required final String userId,
    required final String otp,
    required final String deviceName,
  }) = _$VerifyOtpParamsImpl;

  @override
  String get userId;
  @override
  String get otp;
  @override
  String get deviceName;

  /// Create a copy of VerifyOtpParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerifyOtpParamsImplCopyWith<_$VerifyOtpParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
