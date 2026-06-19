// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_auctions_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$MyAuctionsState {
  MyAuctionTab get tab => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  List<Participation> get items => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of MyAuctionsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MyAuctionsStateCopyWith<MyAuctionsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyAuctionsStateCopyWith<$Res> {
  factory $MyAuctionsStateCopyWith(
    MyAuctionsState value,
    $Res Function(MyAuctionsState) then,
  ) = _$MyAuctionsStateCopyWithImpl<$Res, MyAuctionsState>;
  @useResult
  $Res call({
    MyAuctionTab tab,
    bool loading,
    List<Participation> items,
    String? error,
  });
}

/// @nodoc
class _$MyAuctionsStateCopyWithImpl<$Res, $Val extends MyAuctionsState>
    implements $MyAuctionsStateCopyWith<$Res> {
  _$MyAuctionsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyAuctionsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tab = null,
    Object? loading = null,
    Object? items = null,
    Object? error = freezed,
  }) {
    return _then(
      _value.copyWith(
            tab: null == tab
                ? _value.tab
                : tab // ignore: cast_nullable_to_non_nullable
                      as MyAuctionTab,
            loading: null == loading
                ? _value.loading
                : loading // ignore: cast_nullable_to_non_nullable
                      as bool,
            items: null == items
                ? _value.items
                : items // ignore: cast_nullable_to_non_nullable
                      as List<Participation>,
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
abstract class _$$MyAuctionsStateImplCopyWith<$Res>
    implements $MyAuctionsStateCopyWith<$Res> {
  factory _$$MyAuctionsStateImplCopyWith(
    _$MyAuctionsStateImpl value,
    $Res Function(_$MyAuctionsStateImpl) then,
  ) = __$$MyAuctionsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    MyAuctionTab tab,
    bool loading,
    List<Participation> items,
    String? error,
  });
}

/// @nodoc
class __$$MyAuctionsStateImplCopyWithImpl<$Res>
    extends _$MyAuctionsStateCopyWithImpl<$Res, _$MyAuctionsStateImpl>
    implements _$$MyAuctionsStateImplCopyWith<$Res> {
  __$$MyAuctionsStateImplCopyWithImpl(
    _$MyAuctionsStateImpl _value,
    $Res Function(_$MyAuctionsStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MyAuctionsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tab = null,
    Object? loading = null,
    Object? items = null,
    Object? error = freezed,
  }) {
    return _then(
      _$MyAuctionsStateImpl(
        tab: null == tab
            ? _value.tab
            : tab // ignore: cast_nullable_to_non_nullable
                  as MyAuctionTab,
        loading: null == loading
            ? _value.loading
            : loading // ignore: cast_nullable_to_non_nullable
                  as bool,
        items: null == items
            ? _value._items
            : items // ignore: cast_nullable_to_non_nullable
                  as List<Participation>,
        error: freezed == error
            ? _value.error
            : error // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$MyAuctionsStateImpl implements _MyAuctionsState {
  const _$MyAuctionsStateImpl({
    this.tab = MyAuctionTab.active,
    this.loading = true,
    final List<Participation> items = const <Participation>[],
    this.error,
  }) : _items = items;

  @override
  @JsonKey()
  final MyAuctionTab tab;
  @override
  @JsonKey()
  final bool loading;
  final List<Participation> _items;
  @override
  @JsonKey()
  List<Participation> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final String? error;

  @override
  String toString() {
    return 'MyAuctionsState(tab: $tab, loading: $loading, items: $items, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyAuctionsStateImpl &&
            (identical(other.tab, tab) || other.tab == tab) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    tab,
    loading,
    const DeepCollectionEquality().hash(_items),
    error,
  );

  /// Create a copy of MyAuctionsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MyAuctionsStateImplCopyWith<_$MyAuctionsStateImpl> get copyWith =>
      __$$MyAuctionsStateImplCopyWithImpl<_$MyAuctionsStateImpl>(
        this,
        _$identity,
      );
}

abstract class _MyAuctionsState implements MyAuctionsState {
  const factory _MyAuctionsState({
    final MyAuctionTab tab,
    final bool loading,
    final List<Participation> items,
    final String? error,
  }) = _$MyAuctionsStateImpl;

  @override
  MyAuctionTab get tab;
  @override
  bool get loading;
  @override
  List<Participation> get items;
  @override
  String? get error;

  /// Create a copy of MyAuctionsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MyAuctionsStateImplCopyWith<_$MyAuctionsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
