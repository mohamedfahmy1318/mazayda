// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'final_payment_preview_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$FinalPaymentPreviewState {
  bool get loading => throw _privateConstructorUsedError;
  FinalPaymentPreview? get preview => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of FinalPaymentPreviewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FinalPaymentPreviewStateCopyWith<FinalPaymentPreviewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinalPaymentPreviewStateCopyWith<$Res> {
  factory $FinalPaymentPreviewStateCopyWith(
    FinalPaymentPreviewState value,
    $Res Function(FinalPaymentPreviewState) then,
  ) = _$FinalPaymentPreviewStateCopyWithImpl<$Res, FinalPaymentPreviewState>;
  @useResult
  $Res call({bool loading, FinalPaymentPreview? preview, String? error});
}

/// @nodoc
class _$FinalPaymentPreviewStateCopyWithImpl<
  $Res,
  $Val extends FinalPaymentPreviewState
>
    implements $FinalPaymentPreviewStateCopyWith<$Res> {
  _$FinalPaymentPreviewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FinalPaymentPreviewState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? preview = freezed,
    Object? error = freezed,
  }) {
    return _then(
      _value.copyWith(
            loading: null == loading
                ? _value.loading
                : loading // ignore: cast_nullable_to_non_nullable
                      as bool,
            preview: freezed == preview
                ? _value.preview
                : preview // ignore: cast_nullable_to_non_nullable
                      as FinalPaymentPreview?,
            error: freezed == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FinalPaymentPreviewStateImplCopyWith<$Res>
    implements $FinalPaymentPreviewStateCopyWith<$Res> {
  factory _$$FinalPaymentPreviewStateImplCopyWith(
    _$FinalPaymentPreviewStateImpl value,
    $Res Function(_$FinalPaymentPreviewStateImpl) then,
  ) = __$$FinalPaymentPreviewStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool loading, FinalPaymentPreview? preview, String? error});
}

/// @nodoc
class __$$FinalPaymentPreviewStateImplCopyWithImpl<$Res>
    extends
        _$FinalPaymentPreviewStateCopyWithImpl<
          $Res,
          _$FinalPaymentPreviewStateImpl
        >
    implements _$$FinalPaymentPreviewStateImplCopyWith<$Res> {
  __$$FinalPaymentPreviewStateImplCopyWithImpl(
    _$FinalPaymentPreviewStateImpl _value,
    $Res Function(_$FinalPaymentPreviewStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FinalPaymentPreviewState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? preview = freezed,
    Object? error = freezed,
  }) {
    return _then(
      _$FinalPaymentPreviewStateImpl(
        loading: null == loading
            ? _value.loading
            : loading // ignore: cast_nullable_to_non_nullable
                  as bool,
        preview: freezed == preview
            ? _value.preview
            : preview // ignore: cast_nullable_to_non_nullable
                  as FinalPaymentPreview?,
        error: freezed == error
            ? _value.error
            : error // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$FinalPaymentPreviewStateImpl implements _FinalPaymentPreviewState {
  const _$FinalPaymentPreviewStateImpl({
    this.loading = true,
    this.preview,
    this.error,
  });

  @override
  @JsonKey()
  final bool loading;
  @override
  final FinalPaymentPreview? preview;
  @override
  final String? error;

  @override
  String toString() {
    return 'FinalPaymentPreviewState(loading: $loading, preview: $preview, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinalPaymentPreviewStateImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.preview, preview) || other.preview == preview) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loading, preview, error);

  /// Create a copy of FinalPaymentPreviewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FinalPaymentPreviewStateImplCopyWith<_$FinalPaymentPreviewStateImpl>
  get copyWith =>
      __$$FinalPaymentPreviewStateImplCopyWithImpl<
        _$FinalPaymentPreviewStateImpl
      >(this, _$identity);
}

abstract class _FinalPaymentPreviewState implements FinalPaymentPreviewState {
  const factory _FinalPaymentPreviewState({
    final bool loading,
    final FinalPaymentPreview? preview,
    final String? error,
  }) = _$FinalPaymentPreviewStateImpl;

  @override
  bool get loading;
  @override
  FinalPaymentPreview? get preview;
  @override
  String? get error;

  /// Create a copy of FinalPaymentPreviewState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FinalPaymentPreviewStateImplCopyWith<_$FinalPaymentPreviewStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}
