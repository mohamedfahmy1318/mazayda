// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appeals_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AppealsState {
  bool get loading => throw _privateConstructorUsedError;
  List<Appeal> get items => throw _privateConstructorUsedError;
  bool get submitting => throw _privateConstructorUsedError;
  bool get submitted => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of AppealsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppealsStateCopyWith<AppealsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppealsStateCopyWith<$Res> {
  factory $AppealsStateCopyWith(
    AppealsState value,
    $Res Function(AppealsState) then,
  ) = _$AppealsStateCopyWithImpl<$Res, AppealsState>;
  @useResult
  $Res call({
    bool loading,
    List<Appeal> items,
    bool submitting,
    bool submitted,
    String? error,
  });
}

/// @nodoc
class _$AppealsStateCopyWithImpl<$Res, $Val extends AppealsState>
    implements $AppealsStateCopyWith<$Res> {
  _$AppealsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppealsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? items = null,
    Object? submitting = null,
    Object? submitted = null,
    Object? error = freezed,
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
                      as List<Appeal>,
            submitting: null == submitting
                ? _value.submitting
                : submitting // ignore: cast_nullable_to_non_nullable
                      as bool,
            submitted: null == submitted
                ? _value.submitted
                : submitted // ignore: cast_nullable_to_non_nullable
                      as bool,
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
abstract class _$$AppealsStateImplCopyWith<$Res>
    implements $AppealsStateCopyWith<$Res> {
  factory _$$AppealsStateImplCopyWith(
    _$AppealsStateImpl value,
    $Res Function(_$AppealsStateImpl) then,
  ) = __$$AppealsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool loading,
    List<Appeal> items,
    bool submitting,
    bool submitted,
    String? error,
  });
}

/// @nodoc
class __$$AppealsStateImplCopyWithImpl<$Res>
    extends _$AppealsStateCopyWithImpl<$Res, _$AppealsStateImpl>
    implements _$$AppealsStateImplCopyWith<$Res> {
  __$$AppealsStateImplCopyWithImpl(
    _$AppealsStateImpl _value,
    $Res Function(_$AppealsStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AppealsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? items = null,
    Object? submitting = null,
    Object? submitted = null,
    Object? error = freezed,
  }) {
    return _then(
      _$AppealsStateImpl(
        loading: null == loading
            ? _value.loading
            : loading // ignore: cast_nullable_to_non_nullable
                  as bool,
        items: null == items
            ? _value._items
            : items // ignore: cast_nullable_to_non_nullable
                  as List<Appeal>,
        submitting: null == submitting
            ? _value.submitting
            : submitting // ignore: cast_nullable_to_non_nullable
                  as bool,
        submitted: null == submitted
            ? _value.submitted
            : submitted // ignore: cast_nullable_to_non_nullable
                  as bool,
        error: freezed == error
            ? _value.error
            : error // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$AppealsStateImpl implements _AppealsState {
  const _$AppealsStateImpl({
    this.loading = true,
    final List<Appeal> items = const <Appeal>[],
    this.submitting = false,
    this.submitted = false,
    this.error,
  }) : _items = items;

  @override
  @JsonKey()
  final bool loading;
  final List<Appeal> _items;
  @override
  @JsonKey()
  List<Appeal> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  @JsonKey()
  final bool submitting;
  @override
  @JsonKey()
  final bool submitted;
  @override
  final String? error;

  @override
  String toString() {
    return 'AppealsState(loading: $loading, items: $items, submitting: $submitting, submitted: $submitted, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppealsStateImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.submitting, submitting) ||
                other.submitting == submitting) &&
            (identical(other.submitted, submitted) ||
                other.submitted == submitted) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    loading,
    const DeepCollectionEquality().hash(_items),
    submitting,
    submitted,
    error,
  );

  /// Create a copy of AppealsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppealsStateImplCopyWith<_$AppealsStateImpl> get copyWith =>
      __$$AppealsStateImplCopyWithImpl<_$AppealsStateImpl>(this, _$identity);
}

abstract class _AppealsState implements AppealsState {
  const factory _AppealsState({
    final bool loading,
    final List<Appeal> items,
    final bool submitting,
    final bool submitted,
    final String? error,
  }) = _$AppealsStateImpl;

  @override
  bool get loading;
  @override
  List<Appeal> get items;
  @override
  bool get submitting;
  @override
  bool get submitted;
  @override
  String? get error;

  /// Create a copy of AppealsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppealsStateImplCopyWith<_$AppealsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
