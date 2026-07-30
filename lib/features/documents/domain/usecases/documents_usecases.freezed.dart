// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'documents_usecases.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$DownloadDocumentParams {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  /// Create a copy of DownloadDocumentParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DownloadDocumentParamsCopyWith<DownloadDocumentParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadDocumentParamsCopyWith<$Res> {
  factory $DownloadDocumentParamsCopyWith(
    DownloadDocumentParams value,
    $Res Function(DownloadDocumentParams) then,
  ) = _$DownloadDocumentParamsCopyWithImpl<$Res, DownloadDocumentParams>;
  @useResult
  $Res call({String id, String title});
}

/// @nodoc
class _$DownloadDocumentParamsCopyWithImpl<
  $Res,
  $Val extends DownloadDocumentParams
>
    implements $DownloadDocumentParamsCopyWith<$Res> {
  _$DownloadDocumentParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DownloadDocumentParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? title = null}) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DownloadDocumentParamsImplCopyWith<$Res>
    implements $DownloadDocumentParamsCopyWith<$Res> {
  factory _$$DownloadDocumentParamsImplCopyWith(
    _$DownloadDocumentParamsImpl value,
    $Res Function(_$DownloadDocumentParamsImpl) then,
  ) = __$$DownloadDocumentParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title});
}

/// @nodoc
class __$$DownloadDocumentParamsImplCopyWithImpl<$Res>
    extends
        _$DownloadDocumentParamsCopyWithImpl<$Res, _$DownloadDocumentParamsImpl>
    implements _$$DownloadDocumentParamsImplCopyWith<$Res> {
  __$$DownloadDocumentParamsImplCopyWithImpl(
    _$DownloadDocumentParamsImpl _value,
    $Res Function(_$DownloadDocumentParamsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DownloadDocumentParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? title = null}) {
    return _then(
      _$DownloadDocumentParamsImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$DownloadDocumentParamsImpl implements _DownloadDocumentParams {
  const _$DownloadDocumentParamsImpl({required this.id, required this.title});

  @override
  final String id;
  @override
  final String title;

  @override
  String toString() {
    return 'DownloadDocumentParams(id: $id, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DownloadDocumentParamsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title);

  /// Create a copy of DownloadDocumentParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DownloadDocumentParamsImplCopyWith<_$DownloadDocumentParamsImpl>
  get copyWith =>
      __$$DownloadDocumentParamsImplCopyWithImpl<_$DownloadDocumentParamsImpl>(
        this,
        _$identity,
      );
}

abstract class _DownloadDocumentParams implements DownloadDocumentParams {
  const factory _DownloadDocumentParams({
    required final String id,
    required final String title,
  }) = _$DownloadDocumentParamsImpl;

  @override
  String get id;
  @override
  String get title;

  /// Create a copy of DownloadDocumentParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DownloadDocumentParamsImplCopyWith<_$DownloadDocumentParamsImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetDocumentsParams {
  DocumentFilters get filters => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;

  /// Create a copy of GetDocumentsParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetDocumentsParamsCopyWith<GetDocumentsParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetDocumentsParamsCopyWith<$Res> {
  factory $GetDocumentsParamsCopyWith(
    GetDocumentsParams value,
    $Res Function(GetDocumentsParams) then,
  ) = _$GetDocumentsParamsCopyWithImpl<$Res, GetDocumentsParams>;
  @useResult
  $Res call({DocumentFilters filters, int page});
}

/// @nodoc
class _$GetDocumentsParamsCopyWithImpl<$Res, $Val extends GetDocumentsParams>
    implements $GetDocumentsParamsCopyWith<$Res> {
  _$GetDocumentsParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetDocumentsParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? filters = null, Object? page = null}) {
    return _then(
      _value.copyWith(
            filters: null == filters
                ? _value.filters
                : filters // ignore: cast_nullable_to_non_nullable
                      as DocumentFilters,
            page: null == page
                ? _value.page
                : page // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GetDocumentsParamsImplCopyWith<$Res>
    implements $GetDocumentsParamsCopyWith<$Res> {
  factory _$$GetDocumentsParamsImplCopyWith(
    _$GetDocumentsParamsImpl value,
    $Res Function(_$GetDocumentsParamsImpl) then,
  ) = __$$GetDocumentsParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DocumentFilters filters, int page});
}

/// @nodoc
class __$$GetDocumentsParamsImplCopyWithImpl<$Res>
    extends _$GetDocumentsParamsCopyWithImpl<$Res, _$GetDocumentsParamsImpl>
    implements _$$GetDocumentsParamsImplCopyWith<$Res> {
  __$$GetDocumentsParamsImplCopyWithImpl(
    _$GetDocumentsParamsImpl _value,
    $Res Function(_$GetDocumentsParamsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GetDocumentsParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? filters = null, Object? page = null}) {
    return _then(
      _$GetDocumentsParamsImpl(
        filters: null == filters
            ? _value.filters
            : filters // ignore: cast_nullable_to_non_nullable
                  as DocumentFilters,
        page: null == page
            ? _value.page
            : page // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$GetDocumentsParamsImpl implements _GetDocumentsParams {
  const _$GetDocumentsParamsImpl({
    this.filters = const DocumentFilters(),
    this.page = 1,
  });

  @override
  @JsonKey()
  final DocumentFilters filters;
  @override
  @JsonKey()
  final int page;

  @override
  String toString() {
    return 'GetDocumentsParams(filters: $filters, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDocumentsParamsImpl &&
            (identical(other.filters, filters) || other.filters == filters) &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filters, page);

  /// Create a copy of GetDocumentsParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDocumentsParamsImplCopyWith<_$GetDocumentsParamsImpl> get copyWith =>
      __$$GetDocumentsParamsImplCopyWithImpl<_$GetDocumentsParamsImpl>(
        this,
        _$identity,
      );
}

abstract class _GetDocumentsParams implements GetDocumentsParams {
  const factory _GetDocumentsParams({
    final DocumentFilters filters,
    final int page,
  }) = _$GetDocumentsParamsImpl;

  @override
  DocumentFilters get filters;
  @override
  int get page;

  /// Create a copy of GetDocumentsParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetDocumentsParamsImplCopyWith<_$GetDocumentsParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
