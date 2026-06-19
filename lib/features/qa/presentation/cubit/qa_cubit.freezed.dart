// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qa_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$QaState {
  bool get loading => throw _privateConstructorUsedError;
  List<AuctionQuestion> get items => throw _privateConstructorUsedError;
  bool get asking => throw _privateConstructorUsedError;
  bool get asked => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of QaState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QaStateCopyWith<QaState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QaStateCopyWith<$Res> {
  factory $QaStateCopyWith(QaState value, $Res Function(QaState) then) =
      _$QaStateCopyWithImpl<$Res, QaState>;
  @useResult
  $Res call({
    bool loading,
    List<AuctionQuestion> items,
    bool asking,
    bool asked,
    String? error,
  });
}

/// @nodoc
class _$QaStateCopyWithImpl<$Res, $Val extends QaState>
    implements $QaStateCopyWith<$Res> {
  _$QaStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QaState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? items = null,
    Object? asking = null,
    Object? asked = null,
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
                      as List<AuctionQuestion>,
            asking: null == asking
                ? _value.asking
                : asking // ignore: cast_nullable_to_non_nullable
                      as bool,
            asked: null == asked
                ? _value.asked
                : asked // ignore: cast_nullable_to_non_nullable
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
abstract class _$$QaStateImplCopyWith<$Res> implements $QaStateCopyWith<$Res> {
  factory _$$QaStateImplCopyWith(
    _$QaStateImpl value,
    $Res Function(_$QaStateImpl) then,
  ) = __$$QaStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool loading,
    List<AuctionQuestion> items,
    bool asking,
    bool asked,
    String? error,
  });
}

/// @nodoc
class __$$QaStateImplCopyWithImpl<$Res>
    extends _$QaStateCopyWithImpl<$Res, _$QaStateImpl>
    implements _$$QaStateImplCopyWith<$Res> {
  __$$QaStateImplCopyWithImpl(
    _$QaStateImpl _value,
    $Res Function(_$QaStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of QaState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? items = null,
    Object? asking = null,
    Object? asked = null,
    Object? error = freezed,
  }) {
    return _then(
      _$QaStateImpl(
        loading: null == loading
            ? _value.loading
            : loading // ignore: cast_nullable_to_non_nullable
                  as bool,
        items: null == items
            ? _value._items
            : items // ignore: cast_nullable_to_non_nullable
                  as List<AuctionQuestion>,
        asking: null == asking
            ? _value.asking
            : asking // ignore: cast_nullable_to_non_nullable
                  as bool,
        asked: null == asked
            ? _value.asked
            : asked // ignore: cast_nullable_to_non_nullable
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

class _$QaStateImpl implements _QaState {
  const _$QaStateImpl({
    this.loading = true,
    final List<AuctionQuestion> items = const <AuctionQuestion>[],
    this.asking = false,
    this.asked = false,
    this.error,
  }) : _items = items;

  @override
  @JsonKey()
  final bool loading;
  final List<AuctionQuestion> _items;
  @override
  @JsonKey()
  List<AuctionQuestion> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  @JsonKey()
  final bool asking;
  @override
  @JsonKey()
  final bool asked;
  @override
  final String? error;

  @override
  String toString() {
    return 'QaState(loading: $loading, items: $items, asking: $asking, asked: $asked, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QaStateImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.asking, asking) || other.asking == asking) &&
            (identical(other.asked, asked) || other.asked == asked) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    loading,
    const DeepCollectionEquality().hash(_items),
    asking,
    asked,
    error,
  );

  /// Create a copy of QaState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QaStateImplCopyWith<_$QaStateImpl> get copyWith =>
      __$$QaStateImplCopyWithImpl<_$QaStateImpl>(this, _$identity);
}

abstract class _QaState implements QaState {
  const factory _QaState({
    final bool loading,
    final List<AuctionQuestion> items,
    final bool asking,
    final bool asked,
    final String? error,
  }) = _$QaStateImpl;

  @override
  bool get loading;
  @override
  List<AuctionQuestion> get items;
  @override
  bool get asking;
  @override
  bool get asked;
  @override
  String? get error;

  /// Create a copy of QaState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QaStateImplCopyWith<_$QaStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
