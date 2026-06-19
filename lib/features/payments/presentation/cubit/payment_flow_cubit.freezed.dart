// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_flow_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$PaymentFlowState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() preparing,
    required TResult Function(String url, String ref) openGateway,
    required TResult Function() polling,
    required TResult Function() confirmed,
    required TResult Function(String message) failed,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? preparing,
    TResult? Function(String url, String ref)? openGateway,
    TResult? Function()? polling,
    TResult? Function()? confirmed,
    TResult? Function(String message)? failed,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? preparing,
    TResult Function(String url, String ref)? openGateway,
    TResult Function()? polling,
    TResult Function()? confirmed,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PaymentIdle value) idle,
    required TResult Function(PaymentPreparing value) preparing,
    required TResult Function(PaymentOpenGateway value) openGateway,
    required TResult Function(PaymentPolling value) polling,
    required TResult Function(PaymentConfirmed value) confirmed,
    required TResult Function(PaymentFailed value) failed,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PaymentIdle value)? idle,
    TResult? Function(PaymentPreparing value)? preparing,
    TResult? Function(PaymentOpenGateway value)? openGateway,
    TResult? Function(PaymentPolling value)? polling,
    TResult? Function(PaymentConfirmed value)? confirmed,
    TResult? Function(PaymentFailed value)? failed,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaymentIdle value)? idle,
    TResult Function(PaymentPreparing value)? preparing,
    TResult Function(PaymentOpenGateway value)? openGateway,
    TResult Function(PaymentPolling value)? polling,
    TResult Function(PaymentConfirmed value)? confirmed,
    TResult Function(PaymentFailed value)? failed,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentFlowStateCopyWith<$Res> {
  factory $PaymentFlowStateCopyWith(
    PaymentFlowState value,
    $Res Function(PaymentFlowState) then,
  ) = _$PaymentFlowStateCopyWithImpl<$Res, PaymentFlowState>;
}

/// @nodoc
class _$PaymentFlowStateCopyWithImpl<$Res, $Val extends PaymentFlowState>
    implements $PaymentFlowStateCopyWith<$Res> {
  _$PaymentFlowStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentFlowState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$PaymentIdleImplCopyWith<$Res> {
  factory _$$PaymentIdleImplCopyWith(
    _$PaymentIdleImpl value,
    $Res Function(_$PaymentIdleImpl) then,
  ) = __$$PaymentIdleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PaymentIdleImplCopyWithImpl<$Res>
    extends _$PaymentFlowStateCopyWithImpl<$Res, _$PaymentIdleImpl>
    implements _$$PaymentIdleImplCopyWith<$Res> {
  __$$PaymentIdleImplCopyWithImpl(
    _$PaymentIdleImpl _value,
    $Res Function(_$PaymentIdleImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PaymentFlowState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PaymentIdleImpl implements PaymentIdle {
  const _$PaymentIdleImpl();

  @override
  String toString() {
    return 'PaymentFlowState.idle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PaymentIdleImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() preparing,
    required TResult Function(String url, String ref) openGateway,
    required TResult Function() polling,
    required TResult Function() confirmed,
    required TResult Function(String message) failed,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? preparing,
    TResult? Function(String url, String ref)? openGateway,
    TResult? Function()? polling,
    TResult? Function()? confirmed,
    TResult? Function(String message)? failed,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? preparing,
    TResult Function(String url, String ref)? openGateway,
    TResult Function()? polling,
    TResult Function()? confirmed,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PaymentIdle value) idle,
    required TResult Function(PaymentPreparing value) preparing,
    required TResult Function(PaymentOpenGateway value) openGateway,
    required TResult Function(PaymentPolling value) polling,
    required TResult Function(PaymentConfirmed value) confirmed,
    required TResult Function(PaymentFailed value) failed,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PaymentIdle value)? idle,
    TResult? Function(PaymentPreparing value)? preparing,
    TResult? Function(PaymentOpenGateway value)? openGateway,
    TResult? Function(PaymentPolling value)? polling,
    TResult? Function(PaymentConfirmed value)? confirmed,
    TResult? Function(PaymentFailed value)? failed,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaymentIdle value)? idle,
    TResult Function(PaymentPreparing value)? preparing,
    TResult Function(PaymentOpenGateway value)? openGateway,
    TResult Function(PaymentPolling value)? polling,
    TResult Function(PaymentConfirmed value)? confirmed,
    TResult Function(PaymentFailed value)? failed,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class PaymentIdle implements PaymentFlowState {
  const factory PaymentIdle() = _$PaymentIdleImpl;
}

/// @nodoc
abstract class _$$PaymentPreparingImplCopyWith<$Res> {
  factory _$$PaymentPreparingImplCopyWith(
    _$PaymentPreparingImpl value,
    $Res Function(_$PaymentPreparingImpl) then,
  ) = __$$PaymentPreparingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PaymentPreparingImplCopyWithImpl<$Res>
    extends _$PaymentFlowStateCopyWithImpl<$Res, _$PaymentPreparingImpl>
    implements _$$PaymentPreparingImplCopyWith<$Res> {
  __$$PaymentPreparingImplCopyWithImpl(
    _$PaymentPreparingImpl _value,
    $Res Function(_$PaymentPreparingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PaymentFlowState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PaymentPreparingImpl implements PaymentPreparing {
  const _$PaymentPreparingImpl();

  @override
  String toString() {
    return 'PaymentFlowState.preparing()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PaymentPreparingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() preparing,
    required TResult Function(String url, String ref) openGateway,
    required TResult Function() polling,
    required TResult Function() confirmed,
    required TResult Function(String message) failed,
  }) {
    return preparing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? preparing,
    TResult? Function(String url, String ref)? openGateway,
    TResult? Function()? polling,
    TResult? Function()? confirmed,
    TResult? Function(String message)? failed,
  }) {
    return preparing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? preparing,
    TResult Function(String url, String ref)? openGateway,
    TResult Function()? polling,
    TResult Function()? confirmed,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (preparing != null) {
      return preparing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PaymentIdle value) idle,
    required TResult Function(PaymentPreparing value) preparing,
    required TResult Function(PaymentOpenGateway value) openGateway,
    required TResult Function(PaymentPolling value) polling,
    required TResult Function(PaymentConfirmed value) confirmed,
    required TResult Function(PaymentFailed value) failed,
  }) {
    return preparing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PaymentIdle value)? idle,
    TResult? Function(PaymentPreparing value)? preparing,
    TResult? Function(PaymentOpenGateway value)? openGateway,
    TResult? Function(PaymentPolling value)? polling,
    TResult? Function(PaymentConfirmed value)? confirmed,
    TResult? Function(PaymentFailed value)? failed,
  }) {
    return preparing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaymentIdle value)? idle,
    TResult Function(PaymentPreparing value)? preparing,
    TResult Function(PaymentOpenGateway value)? openGateway,
    TResult Function(PaymentPolling value)? polling,
    TResult Function(PaymentConfirmed value)? confirmed,
    TResult Function(PaymentFailed value)? failed,
    required TResult orElse(),
  }) {
    if (preparing != null) {
      return preparing(this);
    }
    return orElse();
  }
}

abstract class PaymentPreparing implements PaymentFlowState {
  const factory PaymentPreparing() = _$PaymentPreparingImpl;
}

/// @nodoc
abstract class _$$PaymentOpenGatewayImplCopyWith<$Res> {
  factory _$$PaymentOpenGatewayImplCopyWith(
    _$PaymentOpenGatewayImpl value,
    $Res Function(_$PaymentOpenGatewayImpl) then,
  ) = __$$PaymentOpenGatewayImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String url, String ref});
}

/// @nodoc
class __$$PaymentOpenGatewayImplCopyWithImpl<$Res>
    extends _$PaymentFlowStateCopyWithImpl<$Res, _$PaymentOpenGatewayImpl>
    implements _$$PaymentOpenGatewayImplCopyWith<$Res> {
  __$$PaymentOpenGatewayImplCopyWithImpl(
    _$PaymentOpenGatewayImpl _value,
    $Res Function(_$PaymentOpenGatewayImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PaymentFlowState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? url = null, Object? ref = null}) {
    return _then(
      _$PaymentOpenGatewayImpl(
        null == url
            ? _value.url
            : url // ignore: cast_nullable_to_non_nullable
                  as String,
        null == ref
            ? _value.ref
            : ref // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$PaymentOpenGatewayImpl implements PaymentOpenGateway {
  const _$PaymentOpenGatewayImpl(this.url, this.ref);

  @override
  final String url;
  @override
  final String ref;

  @override
  String toString() {
    return 'PaymentFlowState.openGateway(url: $url, ref: $ref)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentOpenGatewayImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.ref, ref) || other.ref == ref));
  }

  @override
  int get hashCode => Object.hash(runtimeType, url, ref);

  /// Create a copy of PaymentFlowState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentOpenGatewayImplCopyWith<_$PaymentOpenGatewayImpl> get copyWith =>
      __$$PaymentOpenGatewayImplCopyWithImpl<_$PaymentOpenGatewayImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() preparing,
    required TResult Function(String url, String ref) openGateway,
    required TResult Function() polling,
    required TResult Function() confirmed,
    required TResult Function(String message) failed,
  }) {
    return openGateway(url, ref);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? preparing,
    TResult? Function(String url, String ref)? openGateway,
    TResult? Function()? polling,
    TResult? Function()? confirmed,
    TResult? Function(String message)? failed,
  }) {
    return openGateway?.call(url, ref);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? preparing,
    TResult Function(String url, String ref)? openGateway,
    TResult Function()? polling,
    TResult Function()? confirmed,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (openGateway != null) {
      return openGateway(url, ref);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PaymentIdle value) idle,
    required TResult Function(PaymentPreparing value) preparing,
    required TResult Function(PaymentOpenGateway value) openGateway,
    required TResult Function(PaymentPolling value) polling,
    required TResult Function(PaymentConfirmed value) confirmed,
    required TResult Function(PaymentFailed value) failed,
  }) {
    return openGateway(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PaymentIdle value)? idle,
    TResult? Function(PaymentPreparing value)? preparing,
    TResult? Function(PaymentOpenGateway value)? openGateway,
    TResult? Function(PaymentPolling value)? polling,
    TResult? Function(PaymentConfirmed value)? confirmed,
    TResult? Function(PaymentFailed value)? failed,
  }) {
    return openGateway?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaymentIdle value)? idle,
    TResult Function(PaymentPreparing value)? preparing,
    TResult Function(PaymentOpenGateway value)? openGateway,
    TResult Function(PaymentPolling value)? polling,
    TResult Function(PaymentConfirmed value)? confirmed,
    TResult Function(PaymentFailed value)? failed,
    required TResult orElse(),
  }) {
    if (openGateway != null) {
      return openGateway(this);
    }
    return orElse();
  }
}

abstract class PaymentOpenGateway implements PaymentFlowState {
  const factory PaymentOpenGateway(final String url, final String ref) =
      _$PaymentOpenGatewayImpl;

  String get url;
  String get ref;

  /// Create a copy of PaymentFlowState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentOpenGatewayImplCopyWith<_$PaymentOpenGatewayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PaymentPollingImplCopyWith<$Res> {
  factory _$$PaymentPollingImplCopyWith(
    _$PaymentPollingImpl value,
    $Res Function(_$PaymentPollingImpl) then,
  ) = __$$PaymentPollingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PaymentPollingImplCopyWithImpl<$Res>
    extends _$PaymentFlowStateCopyWithImpl<$Res, _$PaymentPollingImpl>
    implements _$$PaymentPollingImplCopyWith<$Res> {
  __$$PaymentPollingImplCopyWithImpl(
    _$PaymentPollingImpl _value,
    $Res Function(_$PaymentPollingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PaymentFlowState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PaymentPollingImpl implements PaymentPolling {
  const _$PaymentPollingImpl();

  @override
  String toString() {
    return 'PaymentFlowState.polling()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PaymentPollingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() preparing,
    required TResult Function(String url, String ref) openGateway,
    required TResult Function() polling,
    required TResult Function() confirmed,
    required TResult Function(String message) failed,
  }) {
    return polling();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? preparing,
    TResult? Function(String url, String ref)? openGateway,
    TResult? Function()? polling,
    TResult? Function()? confirmed,
    TResult? Function(String message)? failed,
  }) {
    return polling?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? preparing,
    TResult Function(String url, String ref)? openGateway,
    TResult Function()? polling,
    TResult Function()? confirmed,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (polling != null) {
      return polling();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PaymentIdle value) idle,
    required TResult Function(PaymentPreparing value) preparing,
    required TResult Function(PaymentOpenGateway value) openGateway,
    required TResult Function(PaymentPolling value) polling,
    required TResult Function(PaymentConfirmed value) confirmed,
    required TResult Function(PaymentFailed value) failed,
  }) {
    return polling(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PaymentIdle value)? idle,
    TResult? Function(PaymentPreparing value)? preparing,
    TResult? Function(PaymentOpenGateway value)? openGateway,
    TResult? Function(PaymentPolling value)? polling,
    TResult? Function(PaymentConfirmed value)? confirmed,
    TResult? Function(PaymentFailed value)? failed,
  }) {
    return polling?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaymentIdle value)? idle,
    TResult Function(PaymentPreparing value)? preparing,
    TResult Function(PaymentOpenGateway value)? openGateway,
    TResult Function(PaymentPolling value)? polling,
    TResult Function(PaymentConfirmed value)? confirmed,
    TResult Function(PaymentFailed value)? failed,
    required TResult orElse(),
  }) {
    if (polling != null) {
      return polling(this);
    }
    return orElse();
  }
}

abstract class PaymentPolling implements PaymentFlowState {
  const factory PaymentPolling() = _$PaymentPollingImpl;
}

/// @nodoc
abstract class _$$PaymentConfirmedImplCopyWith<$Res> {
  factory _$$PaymentConfirmedImplCopyWith(
    _$PaymentConfirmedImpl value,
    $Res Function(_$PaymentConfirmedImpl) then,
  ) = __$$PaymentConfirmedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PaymentConfirmedImplCopyWithImpl<$Res>
    extends _$PaymentFlowStateCopyWithImpl<$Res, _$PaymentConfirmedImpl>
    implements _$$PaymentConfirmedImplCopyWith<$Res> {
  __$$PaymentConfirmedImplCopyWithImpl(
    _$PaymentConfirmedImpl _value,
    $Res Function(_$PaymentConfirmedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PaymentFlowState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PaymentConfirmedImpl implements PaymentConfirmed {
  const _$PaymentConfirmedImpl();

  @override
  String toString() {
    return 'PaymentFlowState.confirmed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PaymentConfirmedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() preparing,
    required TResult Function(String url, String ref) openGateway,
    required TResult Function() polling,
    required TResult Function() confirmed,
    required TResult Function(String message) failed,
  }) {
    return confirmed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? preparing,
    TResult? Function(String url, String ref)? openGateway,
    TResult? Function()? polling,
    TResult? Function()? confirmed,
    TResult? Function(String message)? failed,
  }) {
    return confirmed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? preparing,
    TResult Function(String url, String ref)? openGateway,
    TResult Function()? polling,
    TResult Function()? confirmed,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (confirmed != null) {
      return confirmed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PaymentIdle value) idle,
    required TResult Function(PaymentPreparing value) preparing,
    required TResult Function(PaymentOpenGateway value) openGateway,
    required TResult Function(PaymentPolling value) polling,
    required TResult Function(PaymentConfirmed value) confirmed,
    required TResult Function(PaymentFailed value) failed,
  }) {
    return confirmed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PaymentIdle value)? idle,
    TResult? Function(PaymentPreparing value)? preparing,
    TResult? Function(PaymentOpenGateway value)? openGateway,
    TResult? Function(PaymentPolling value)? polling,
    TResult? Function(PaymentConfirmed value)? confirmed,
    TResult? Function(PaymentFailed value)? failed,
  }) {
    return confirmed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaymentIdle value)? idle,
    TResult Function(PaymentPreparing value)? preparing,
    TResult Function(PaymentOpenGateway value)? openGateway,
    TResult Function(PaymentPolling value)? polling,
    TResult Function(PaymentConfirmed value)? confirmed,
    TResult Function(PaymentFailed value)? failed,
    required TResult orElse(),
  }) {
    if (confirmed != null) {
      return confirmed(this);
    }
    return orElse();
  }
}

abstract class PaymentConfirmed implements PaymentFlowState {
  const factory PaymentConfirmed() = _$PaymentConfirmedImpl;
}

/// @nodoc
abstract class _$$PaymentFailedImplCopyWith<$Res> {
  factory _$$PaymentFailedImplCopyWith(
    _$PaymentFailedImpl value,
    $Res Function(_$PaymentFailedImpl) then,
  ) = __$$PaymentFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$PaymentFailedImplCopyWithImpl<$Res>
    extends _$PaymentFlowStateCopyWithImpl<$Res, _$PaymentFailedImpl>
    implements _$$PaymentFailedImplCopyWith<$Res> {
  __$$PaymentFailedImplCopyWithImpl(
    _$PaymentFailedImpl _value,
    $Res Function(_$PaymentFailedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PaymentFlowState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$PaymentFailedImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$PaymentFailedImpl implements PaymentFailed {
  const _$PaymentFailedImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'PaymentFlowState.failed(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentFailedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of PaymentFlowState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentFailedImplCopyWith<_$PaymentFailedImpl> get copyWith =>
      __$$PaymentFailedImplCopyWithImpl<_$PaymentFailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() preparing,
    required TResult Function(String url, String ref) openGateway,
    required TResult Function() polling,
    required TResult Function() confirmed,
    required TResult Function(String message) failed,
  }) {
    return failed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? preparing,
    TResult? Function(String url, String ref)? openGateway,
    TResult? Function()? polling,
    TResult? Function()? confirmed,
    TResult? Function(String message)? failed,
  }) {
    return failed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? preparing,
    TResult Function(String url, String ref)? openGateway,
    TResult Function()? polling,
    TResult Function()? confirmed,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PaymentIdle value) idle,
    required TResult Function(PaymentPreparing value) preparing,
    required TResult Function(PaymentOpenGateway value) openGateway,
    required TResult Function(PaymentPolling value) polling,
    required TResult Function(PaymentConfirmed value) confirmed,
    required TResult Function(PaymentFailed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PaymentIdle value)? idle,
    TResult? Function(PaymentPreparing value)? preparing,
    TResult? Function(PaymentOpenGateway value)? openGateway,
    TResult? Function(PaymentPolling value)? polling,
    TResult? Function(PaymentConfirmed value)? confirmed,
    TResult? Function(PaymentFailed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PaymentIdle value)? idle,
    TResult Function(PaymentPreparing value)? preparing,
    TResult Function(PaymentOpenGateway value)? openGateway,
    TResult Function(PaymentPolling value)? polling,
    TResult Function(PaymentConfirmed value)? confirmed,
    TResult Function(PaymentFailed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class PaymentFailed implements PaymentFlowState {
  const factory PaymentFailed(final String message) = _$PaymentFailedImpl;

  String get message;

  /// Create a copy of PaymentFlowState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentFailedImplCopyWith<_$PaymentFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
