// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$OtpState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int cooldown) initial,
    required TResult Function() verifying,
    required TResult Function() verified,
    required TResult Function(String message) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int cooldown)? initial,
    TResult? Function()? verifying,
    TResult? Function()? verified,
    TResult? Function(String message)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int cooldown)? initial,
    TResult Function()? verifying,
    TResult Function()? verified,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OtpInitial value) initial,
    required TResult Function(OtpVerifying value) verifying,
    required TResult Function(OtpVerified value) verified,
    required TResult Function(OtpError value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OtpInitial value)? initial,
    TResult? Function(OtpVerifying value)? verifying,
    TResult? Function(OtpVerified value)? verified,
    TResult? Function(OtpError value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OtpInitial value)? initial,
    TResult Function(OtpVerifying value)? verifying,
    TResult Function(OtpVerified value)? verified,
    TResult Function(OtpError value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpStateCopyWith<$Res> {
  factory $OtpStateCopyWith(OtpState value, $Res Function(OtpState) then) =
      _$OtpStateCopyWithImpl<$Res, OtpState>;
}

/// @nodoc
class _$OtpStateCopyWithImpl<$Res, $Val extends OtpState>
    implements $OtpStateCopyWith<$Res> {
  _$OtpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OtpState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$OtpInitialImplCopyWith<$Res> {
  factory _$$OtpInitialImplCopyWith(
    _$OtpInitialImpl value,
    $Res Function(_$OtpInitialImpl) then,
  ) = __$$OtpInitialImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int cooldown});
}

/// @nodoc
class __$$OtpInitialImplCopyWithImpl<$Res>
    extends _$OtpStateCopyWithImpl<$Res, _$OtpInitialImpl>
    implements _$$OtpInitialImplCopyWith<$Res> {
  __$$OtpInitialImplCopyWithImpl(
    _$OtpInitialImpl _value,
    $Res Function(_$OtpInitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OtpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? cooldown = null}) {
    return _then(
      _$OtpInitialImpl(
        cooldown: null == cooldown
            ? _value.cooldown
            : cooldown // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$OtpInitialImpl implements OtpInitial {
  const _$OtpInitialImpl({this.cooldown = 0});

  @override
  @JsonKey()
  final int cooldown;

  @override
  String toString() {
    return 'OtpState.initial(cooldown: $cooldown)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpInitialImpl &&
            (identical(other.cooldown, cooldown) ||
                other.cooldown == cooldown));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cooldown);

  /// Create a copy of OtpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpInitialImplCopyWith<_$OtpInitialImpl> get copyWith =>
      __$$OtpInitialImplCopyWithImpl<_$OtpInitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int cooldown) initial,
    required TResult Function() verifying,
    required TResult Function() verified,
    required TResult Function(String message) error,
  }) {
    return initial(cooldown);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int cooldown)? initial,
    TResult? Function()? verifying,
    TResult? Function()? verified,
    TResult? Function(String message)? error,
  }) {
    return initial?.call(cooldown);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int cooldown)? initial,
    TResult Function()? verifying,
    TResult Function()? verified,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(cooldown);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OtpInitial value) initial,
    required TResult Function(OtpVerifying value) verifying,
    required TResult Function(OtpVerified value) verified,
    required TResult Function(OtpError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OtpInitial value)? initial,
    TResult? Function(OtpVerifying value)? verifying,
    TResult? Function(OtpVerified value)? verified,
    TResult? Function(OtpError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OtpInitial value)? initial,
    TResult Function(OtpVerifying value)? verifying,
    TResult Function(OtpVerified value)? verified,
    TResult Function(OtpError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class OtpInitial implements OtpState {
  const factory OtpInitial({final int cooldown}) = _$OtpInitialImpl;

  int get cooldown;

  /// Create a copy of OtpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OtpInitialImplCopyWith<_$OtpInitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OtpVerifyingImplCopyWith<$Res> {
  factory _$$OtpVerifyingImplCopyWith(
    _$OtpVerifyingImpl value,
    $Res Function(_$OtpVerifyingImpl) then,
  ) = __$$OtpVerifyingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OtpVerifyingImplCopyWithImpl<$Res>
    extends _$OtpStateCopyWithImpl<$Res, _$OtpVerifyingImpl>
    implements _$$OtpVerifyingImplCopyWith<$Res> {
  __$$OtpVerifyingImplCopyWithImpl(
    _$OtpVerifyingImpl _value,
    $Res Function(_$OtpVerifyingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OtpState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OtpVerifyingImpl implements OtpVerifying {
  const _$OtpVerifyingImpl();

  @override
  String toString() {
    return 'OtpState.verifying()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OtpVerifyingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int cooldown) initial,
    required TResult Function() verifying,
    required TResult Function() verified,
    required TResult Function(String message) error,
  }) {
    return verifying();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int cooldown)? initial,
    TResult? Function()? verifying,
    TResult? Function()? verified,
    TResult? Function(String message)? error,
  }) {
    return verifying?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int cooldown)? initial,
    TResult Function()? verifying,
    TResult Function()? verified,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (verifying != null) {
      return verifying();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OtpInitial value) initial,
    required TResult Function(OtpVerifying value) verifying,
    required TResult Function(OtpVerified value) verified,
    required TResult Function(OtpError value) error,
  }) {
    return verifying(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OtpInitial value)? initial,
    TResult? Function(OtpVerifying value)? verifying,
    TResult? Function(OtpVerified value)? verified,
    TResult? Function(OtpError value)? error,
  }) {
    return verifying?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OtpInitial value)? initial,
    TResult Function(OtpVerifying value)? verifying,
    TResult Function(OtpVerified value)? verified,
    TResult Function(OtpError value)? error,
    required TResult orElse(),
  }) {
    if (verifying != null) {
      return verifying(this);
    }
    return orElse();
  }
}

abstract class OtpVerifying implements OtpState {
  const factory OtpVerifying() = _$OtpVerifyingImpl;
}

/// @nodoc
abstract class _$$OtpVerifiedImplCopyWith<$Res> {
  factory _$$OtpVerifiedImplCopyWith(
    _$OtpVerifiedImpl value,
    $Res Function(_$OtpVerifiedImpl) then,
  ) = __$$OtpVerifiedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OtpVerifiedImplCopyWithImpl<$Res>
    extends _$OtpStateCopyWithImpl<$Res, _$OtpVerifiedImpl>
    implements _$$OtpVerifiedImplCopyWith<$Res> {
  __$$OtpVerifiedImplCopyWithImpl(
    _$OtpVerifiedImpl _value,
    $Res Function(_$OtpVerifiedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OtpState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OtpVerifiedImpl implements OtpVerified {
  const _$OtpVerifiedImpl();

  @override
  String toString() {
    return 'OtpState.verified()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OtpVerifiedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int cooldown) initial,
    required TResult Function() verifying,
    required TResult Function() verified,
    required TResult Function(String message) error,
  }) {
    return verified();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int cooldown)? initial,
    TResult? Function()? verifying,
    TResult? Function()? verified,
    TResult? Function(String message)? error,
  }) {
    return verified?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int cooldown)? initial,
    TResult Function()? verifying,
    TResult Function()? verified,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (verified != null) {
      return verified();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OtpInitial value) initial,
    required TResult Function(OtpVerifying value) verifying,
    required TResult Function(OtpVerified value) verified,
    required TResult Function(OtpError value) error,
  }) {
    return verified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OtpInitial value)? initial,
    TResult? Function(OtpVerifying value)? verifying,
    TResult? Function(OtpVerified value)? verified,
    TResult? Function(OtpError value)? error,
  }) {
    return verified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OtpInitial value)? initial,
    TResult Function(OtpVerifying value)? verifying,
    TResult Function(OtpVerified value)? verified,
    TResult Function(OtpError value)? error,
    required TResult orElse(),
  }) {
    if (verified != null) {
      return verified(this);
    }
    return orElse();
  }
}

abstract class OtpVerified implements OtpState {
  const factory OtpVerified() = _$OtpVerifiedImpl;
}

/// @nodoc
abstract class _$$OtpErrorImplCopyWith<$Res> {
  factory _$$OtpErrorImplCopyWith(
    _$OtpErrorImpl value,
    $Res Function(_$OtpErrorImpl) then,
  ) = __$$OtpErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$OtpErrorImplCopyWithImpl<$Res>
    extends _$OtpStateCopyWithImpl<$Res, _$OtpErrorImpl>
    implements _$$OtpErrorImplCopyWith<$Res> {
  __$$OtpErrorImplCopyWithImpl(
    _$OtpErrorImpl _value,
    $Res Function(_$OtpErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OtpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$OtpErrorImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$OtpErrorImpl implements OtpError {
  const _$OtpErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'OtpState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of OtpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpErrorImplCopyWith<_$OtpErrorImpl> get copyWith =>
      __$$OtpErrorImplCopyWithImpl<_$OtpErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int cooldown) initial,
    required TResult Function() verifying,
    required TResult Function() verified,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int cooldown)? initial,
    TResult? Function()? verifying,
    TResult? Function()? verified,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int cooldown)? initial,
    TResult Function()? verifying,
    TResult Function()? verified,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OtpInitial value) initial,
    required TResult Function(OtpVerifying value) verifying,
    required TResult Function(OtpVerified value) verified,
    required TResult Function(OtpError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OtpInitial value)? initial,
    TResult? Function(OtpVerifying value)? verifying,
    TResult? Function(OtpVerified value)? verified,
    TResult? Function(OtpError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OtpInitial value)? initial,
    TResult Function(OtpVerifying value)? verifying,
    TResult Function(OtpVerified value)? verified,
    TResult Function(OtpError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class OtpError implements OtpState {
  const factory OtpError(final String message) = _$OtpErrorImpl;

  String get message;

  /// Create a copy of OtpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OtpErrorImplCopyWith<_$OtpErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
