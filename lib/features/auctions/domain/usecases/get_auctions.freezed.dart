// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_auctions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$GetAuctionsParams {
  String? get query => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  int? get wilaya => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get perPage => throw _privateConstructorUsedError;

  /// Create a copy of GetAuctionsParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetAuctionsParamsCopyWith<GetAuctionsParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetAuctionsParamsCopyWith<$Res> {
  factory $GetAuctionsParamsCopyWith(
    GetAuctionsParams value,
    $Res Function(GetAuctionsParams) then,
  ) = _$GetAuctionsParamsCopyWithImpl<$Res, GetAuctionsParams>;
  @useResult
  $Res call({
    String? query,
    String? category,
    int? wilaya,
    String? status,
    String? type,
    int page,
    int perPage,
  });
}

/// @nodoc
class _$GetAuctionsParamsCopyWithImpl<$Res, $Val extends GetAuctionsParams>
    implements $GetAuctionsParamsCopyWith<$Res> {
  _$GetAuctionsParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetAuctionsParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
    Object? category = freezed,
    Object? wilaya = freezed,
    Object? status = freezed,
    Object? type = freezed,
    Object? page = null,
    Object? perPage = null,
  }) {
    return _then(
      _value.copyWith(
            query: freezed == query
                ? _value.query
                : query // ignore: cast_nullable_to_non_nullable
                      as String?,
            category: freezed == category
                ? _value.category
                : category // ignore: cast_nullable_to_non_nullable
                      as String?,
            wilaya: freezed == wilaya
                ? _value.wilaya
                : wilaya // ignore: cast_nullable_to_non_nullable
                      as int?,
            status: freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String?,
            type: freezed == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as String?,
            page: null == page
                ? _value.page
                : page // ignore: cast_nullable_to_non_nullable
                      as int,
            perPage: null == perPage
                ? _value.perPage
                : perPage // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GetAuctionsParamsImplCopyWith<$Res>
    implements $GetAuctionsParamsCopyWith<$Res> {
  factory _$$GetAuctionsParamsImplCopyWith(
    _$GetAuctionsParamsImpl value,
    $Res Function(_$GetAuctionsParamsImpl) then,
  ) = __$$GetAuctionsParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? query,
    String? category,
    int? wilaya,
    String? status,
    String? type,
    int page,
    int perPage,
  });
}

/// @nodoc
class __$$GetAuctionsParamsImplCopyWithImpl<$Res>
    extends _$GetAuctionsParamsCopyWithImpl<$Res, _$GetAuctionsParamsImpl>
    implements _$$GetAuctionsParamsImplCopyWith<$Res> {
  __$$GetAuctionsParamsImplCopyWithImpl(
    _$GetAuctionsParamsImpl _value,
    $Res Function(_$GetAuctionsParamsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GetAuctionsParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
    Object? category = freezed,
    Object? wilaya = freezed,
    Object? status = freezed,
    Object? type = freezed,
    Object? page = null,
    Object? perPage = null,
  }) {
    return _then(
      _$GetAuctionsParamsImpl(
        query: freezed == query
            ? _value.query
            : query // ignore: cast_nullable_to_non_nullable
                  as String?,
        category: freezed == category
            ? _value.category
            : category // ignore: cast_nullable_to_non_nullable
                  as String?,
        wilaya: freezed == wilaya
            ? _value.wilaya
            : wilaya // ignore: cast_nullable_to_non_nullable
                  as int?,
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String?,
        type: freezed == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String?,
        page: null == page
            ? _value.page
            : page // ignore: cast_nullable_to_non_nullable
                  as int,
        perPage: null == perPage
            ? _value.perPage
            : perPage // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$GetAuctionsParamsImpl implements _GetAuctionsParams {
  const _$GetAuctionsParamsImpl({
    this.query,
    this.category,
    this.wilaya,
    this.status,
    this.type,
    this.page = 1,
    this.perPage = 12,
  });

  @override
  final String? query;
  @override
  final String? category;
  @override
  final int? wilaya;
  @override
  final String? status;
  @override
  final String? type;
  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final int perPage;

  @override
  String toString() {
    return 'GetAuctionsParams(query: $query, category: $category, wilaya: $wilaya, status: $status, type: $type, page: $page, perPage: $perPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAuctionsParamsImpl &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.wilaya, wilaya) || other.wilaya == wilaya) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.perPage, perPage) || other.perPage == perPage));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    query,
    category,
    wilaya,
    status,
    type,
    page,
    perPage,
  );

  /// Create a copy of GetAuctionsParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAuctionsParamsImplCopyWith<_$GetAuctionsParamsImpl> get copyWith =>
      __$$GetAuctionsParamsImplCopyWithImpl<_$GetAuctionsParamsImpl>(
        this,
        _$identity,
      );
}

abstract class _GetAuctionsParams implements GetAuctionsParams {
  const factory _GetAuctionsParams({
    final String? query,
    final String? category,
    final int? wilaya,
    final String? status,
    final String? type,
    final int page,
    final int perPage,
  }) = _$GetAuctionsParamsImpl;

  @override
  String? get query;
  @override
  String? get category;
  @override
  int? get wilaya;
  @override
  String? get status;
  @override
  String? get type;
  @override
  int get page;
  @override
  int get perPage;

  /// Create a copy of GetAuctionsParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetAuctionsParamsImplCopyWith<_$GetAuctionsParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
