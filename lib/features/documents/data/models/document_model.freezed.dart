// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'document_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DocumentAuctionRefModel _$DocumentAuctionRefModelFromJson(
  Map<String, dynamic> json,
) {
  return _DocumentAuctionRefModel.fromJson(json);
}

/// @nodoc
mixin _$DocumentAuctionRefModel {
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'entity_name')
  String? get entityName => throw _privateConstructorUsedError;
  @JsonKey(name: 'wilaya_name')
  String? get wilayaName => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_name')
  String? get categoryName => throw _privateConstructorUsedError;

  /// Serializes this DocumentAuctionRefModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DocumentAuctionRefModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DocumentAuctionRefModelCopyWith<DocumentAuctionRefModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentAuctionRefModelCopyWith<$Res> {
  factory $DocumentAuctionRefModelCopyWith(
    DocumentAuctionRefModel value,
    $Res Function(DocumentAuctionRefModel) then,
  ) = _$DocumentAuctionRefModelCopyWithImpl<$Res, DocumentAuctionRefModel>;
  @useResult
  $Res call({
    String? id,
    String? title,
    @JsonKey(name: 'entity_name') String? entityName,
    @JsonKey(name: 'wilaya_name') String? wilayaName,
    @JsonKey(name: 'category_name') String? categoryName,
  });
}

/// @nodoc
class _$DocumentAuctionRefModelCopyWithImpl<
  $Res,
  $Val extends DocumentAuctionRefModel
>
    implements $DocumentAuctionRefModelCopyWith<$Res> {
  _$DocumentAuctionRefModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DocumentAuctionRefModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? entityName = freezed,
    Object? wilayaName = freezed,
    Object? categoryName = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            title: freezed == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String?,
            entityName: freezed == entityName
                ? _value.entityName
                : entityName // ignore: cast_nullable_to_non_nullable
                      as String?,
            wilayaName: freezed == wilayaName
                ? _value.wilayaName
                : wilayaName // ignore: cast_nullable_to_non_nullable
                      as String?,
            categoryName: freezed == categoryName
                ? _value.categoryName
                : categoryName // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DocumentAuctionRefModelImplCopyWith<$Res>
    implements $DocumentAuctionRefModelCopyWith<$Res> {
  factory _$$DocumentAuctionRefModelImplCopyWith(
    _$DocumentAuctionRefModelImpl value,
    $Res Function(_$DocumentAuctionRefModelImpl) then,
  ) = __$$DocumentAuctionRefModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    String? title,
    @JsonKey(name: 'entity_name') String? entityName,
    @JsonKey(name: 'wilaya_name') String? wilayaName,
    @JsonKey(name: 'category_name') String? categoryName,
  });
}

/// @nodoc
class __$$DocumentAuctionRefModelImplCopyWithImpl<$Res>
    extends
        _$DocumentAuctionRefModelCopyWithImpl<
          $Res,
          _$DocumentAuctionRefModelImpl
        >
    implements _$$DocumentAuctionRefModelImplCopyWith<$Res> {
  __$$DocumentAuctionRefModelImplCopyWithImpl(
    _$DocumentAuctionRefModelImpl _value,
    $Res Function(_$DocumentAuctionRefModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DocumentAuctionRefModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? entityName = freezed,
    Object? wilayaName = freezed,
    Object? categoryName = freezed,
  }) {
    return _then(
      _$DocumentAuctionRefModelImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        title: freezed == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String?,
        entityName: freezed == entityName
            ? _value.entityName
            : entityName // ignore: cast_nullable_to_non_nullable
                  as String?,
        wilayaName: freezed == wilayaName
            ? _value.wilayaName
            : wilayaName // ignore: cast_nullable_to_non_nullable
                  as String?,
        categoryName: freezed == categoryName
            ? _value.categoryName
            : categoryName // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DocumentAuctionRefModelImpl extends _DocumentAuctionRefModel {
  const _$DocumentAuctionRefModelImpl({
    this.id,
    this.title,
    @JsonKey(name: 'entity_name') this.entityName,
    @JsonKey(name: 'wilaya_name') this.wilayaName,
    @JsonKey(name: 'category_name') this.categoryName,
  }) : super._();

  factory _$DocumentAuctionRefModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DocumentAuctionRefModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String? title;
  @override
  @JsonKey(name: 'entity_name')
  final String? entityName;
  @override
  @JsonKey(name: 'wilaya_name')
  final String? wilayaName;
  @override
  @JsonKey(name: 'category_name')
  final String? categoryName;

  @override
  String toString() {
    return 'DocumentAuctionRefModel(id: $id, title: $title, entityName: $entityName, wilayaName: $wilayaName, categoryName: $categoryName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DocumentAuctionRefModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.entityName, entityName) ||
                other.entityName == entityName) &&
            (identical(other.wilayaName, wilayaName) ||
                other.wilayaName == wilayaName) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, entityName, wilayaName, categoryName);

  /// Create a copy of DocumentAuctionRefModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DocumentAuctionRefModelImplCopyWith<_$DocumentAuctionRefModelImpl>
  get copyWith =>
      __$$DocumentAuctionRefModelImplCopyWithImpl<
        _$DocumentAuctionRefModelImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DocumentAuctionRefModelImplToJson(this);
  }
}

abstract class _DocumentAuctionRefModel extends DocumentAuctionRefModel {
  const factory _DocumentAuctionRefModel({
    final String? id,
    final String? title,
    @JsonKey(name: 'entity_name') final String? entityName,
    @JsonKey(name: 'wilaya_name') final String? wilayaName,
    @JsonKey(name: 'category_name') final String? categoryName,
  }) = _$DocumentAuctionRefModelImpl;
  const _DocumentAuctionRefModel._() : super._();

  factory _DocumentAuctionRefModel.fromJson(Map<String, dynamic> json) =
      _$DocumentAuctionRefModelImpl.fromJson;

  @override
  String? get id;
  @override
  String? get title;
  @override
  @JsonKey(name: 'entity_name')
  String? get entityName;
  @override
  @JsonKey(name: 'wilaya_name')
  String? get wilayaName;
  @override
  @JsonKey(name: 'category_name')
  String? get categoryName;

  /// Create a copy of DocumentAuctionRefModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DocumentAuctionRefModelImplCopyWith<_$DocumentAuctionRefModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}

DocumentModel _$DocumentModelFromJson(Map<String, dynamic> json) {
  return _DocumentModel.fromJson(json);
}

/// @nodoc
mixin _$DocumentModel {
  String get id => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'type_label')
  String? get typeLabel => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_public')
  bool get isPublic => throw _privateConstructorUsedError;
  @JsonKey(name: 'file_size')
  int get fileSize => throw _privateConstructorUsedError;
  @JsonKey(name: 'file_size_human')
  String? get fileSizeHuman => throw _privateConstructorUsedError;
  @JsonKey(name: 'issued_at')
  String? get issuedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'download_url')
  String? get downloadUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'verify_url')
  String? get verifyUrl => throw _privateConstructorUsedError;
  DocumentAuctionRefModel? get auction => throw _privateConstructorUsedError;

  /// Serializes this DocumentModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DocumentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DocumentModelCopyWith<DocumentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentModelCopyWith<$Res> {
  factory $DocumentModelCopyWith(
    DocumentModel value,
    $Res Function(DocumentModel) then,
  ) = _$DocumentModelCopyWithImpl<$Res, DocumentModel>;
  @useResult
  $Res call({
    String id,
    String? type,
    @JsonKey(name: 'type_label') String? typeLabel,
    String? title,
    @JsonKey(name: 'is_public') bool isPublic,
    @JsonKey(name: 'file_size') int fileSize,
    @JsonKey(name: 'file_size_human') String? fileSizeHuman,
    @JsonKey(name: 'issued_at') String? issuedAt,
    @JsonKey(name: 'download_url') String? downloadUrl,
    @JsonKey(name: 'verify_url') String? verifyUrl,
    DocumentAuctionRefModel? auction,
  });

  $DocumentAuctionRefModelCopyWith<$Res>? get auction;
}

/// @nodoc
class _$DocumentModelCopyWithImpl<$Res, $Val extends DocumentModel>
    implements $DocumentModelCopyWith<$Res> {
  _$DocumentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DocumentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = freezed,
    Object? typeLabel = freezed,
    Object? title = freezed,
    Object? isPublic = null,
    Object? fileSize = null,
    Object? fileSizeHuman = freezed,
    Object? issuedAt = freezed,
    Object? downloadUrl = freezed,
    Object? verifyUrl = freezed,
    Object? auction = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            type: freezed == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as String?,
            typeLabel: freezed == typeLabel
                ? _value.typeLabel
                : typeLabel // ignore: cast_nullable_to_non_nullable
                      as String?,
            title: freezed == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String?,
            isPublic: null == isPublic
                ? _value.isPublic
                : isPublic // ignore: cast_nullable_to_non_nullable
                      as bool,
            fileSize: null == fileSize
                ? _value.fileSize
                : fileSize // ignore: cast_nullable_to_non_nullable
                      as int,
            fileSizeHuman: freezed == fileSizeHuman
                ? _value.fileSizeHuman
                : fileSizeHuman // ignore: cast_nullable_to_non_nullable
                      as String?,
            issuedAt: freezed == issuedAt
                ? _value.issuedAt
                : issuedAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            downloadUrl: freezed == downloadUrl
                ? _value.downloadUrl
                : downloadUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            verifyUrl: freezed == verifyUrl
                ? _value.verifyUrl
                : verifyUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            auction: freezed == auction
                ? _value.auction
                : auction // ignore: cast_nullable_to_non_nullable
                      as DocumentAuctionRefModel?,
          )
          as $Val,
    );
  }

  /// Create a copy of DocumentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DocumentAuctionRefModelCopyWith<$Res>? get auction {
    if (_value.auction == null) {
      return null;
    }

    return $DocumentAuctionRefModelCopyWith<$Res>(_value.auction!, (value) {
      return _then(_value.copyWith(auction: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DocumentModelImplCopyWith<$Res>
    implements $DocumentModelCopyWith<$Res> {
  factory _$$DocumentModelImplCopyWith(
    _$DocumentModelImpl value,
    $Res Function(_$DocumentModelImpl) then,
  ) = __$$DocumentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String? type,
    @JsonKey(name: 'type_label') String? typeLabel,
    String? title,
    @JsonKey(name: 'is_public') bool isPublic,
    @JsonKey(name: 'file_size') int fileSize,
    @JsonKey(name: 'file_size_human') String? fileSizeHuman,
    @JsonKey(name: 'issued_at') String? issuedAt,
    @JsonKey(name: 'download_url') String? downloadUrl,
    @JsonKey(name: 'verify_url') String? verifyUrl,
    DocumentAuctionRefModel? auction,
  });

  @override
  $DocumentAuctionRefModelCopyWith<$Res>? get auction;
}

/// @nodoc
class __$$DocumentModelImplCopyWithImpl<$Res>
    extends _$DocumentModelCopyWithImpl<$Res, _$DocumentModelImpl>
    implements _$$DocumentModelImplCopyWith<$Res> {
  __$$DocumentModelImplCopyWithImpl(
    _$DocumentModelImpl _value,
    $Res Function(_$DocumentModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DocumentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = freezed,
    Object? typeLabel = freezed,
    Object? title = freezed,
    Object? isPublic = null,
    Object? fileSize = null,
    Object? fileSizeHuman = freezed,
    Object? issuedAt = freezed,
    Object? downloadUrl = freezed,
    Object? verifyUrl = freezed,
    Object? auction = freezed,
  }) {
    return _then(
      _$DocumentModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        type: freezed == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String?,
        typeLabel: freezed == typeLabel
            ? _value.typeLabel
            : typeLabel // ignore: cast_nullable_to_non_nullable
                  as String?,
        title: freezed == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String?,
        isPublic: null == isPublic
            ? _value.isPublic
            : isPublic // ignore: cast_nullable_to_non_nullable
                  as bool,
        fileSize: null == fileSize
            ? _value.fileSize
            : fileSize // ignore: cast_nullable_to_non_nullable
                  as int,
        fileSizeHuman: freezed == fileSizeHuman
            ? _value.fileSizeHuman
            : fileSizeHuman // ignore: cast_nullable_to_non_nullable
                  as String?,
        issuedAt: freezed == issuedAt
            ? _value.issuedAt
            : issuedAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        downloadUrl: freezed == downloadUrl
            ? _value.downloadUrl
            : downloadUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        verifyUrl: freezed == verifyUrl
            ? _value.verifyUrl
            : verifyUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        auction: freezed == auction
            ? _value.auction
            : auction // ignore: cast_nullable_to_non_nullable
                  as DocumentAuctionRefModel?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DocumentModelImpl extends _DocumentModel {
  const _$DocumentModelImpl({
    required this.id,
    this.type,
    @JsonKey(name: 'type_label') this.typeLabel,
    this.title,
    @JsonKey(name: 'is_public') this.isPublic = false,
    @JsonKey(name: 'file_size') this.fileSize = 0,
    @JsonKey(name: 'file_size_human') this.fileSizeHuman,
    @JsonKey(name: 'issued_at') this.issuedAt,
    @JsonKey(name: 'download_url') this.downloadUrl,
    @JsonKey(name: 'verify_url') this.verifyUrl,
    this.auction,
  }) : super._();

  factory _$DocumentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DocumentModelImplFromJson(json);

  @override
  final String id;
  @override
  final String? type;
  @override
  @JsonKey(name: 'type_label')
  final String? typeLabel;
  @override
  final String? title;
  @override
  @JsonKey(name: 'is_public')
  final bool isPublic;
  @override
  @JsonKey(name: 'file_size')
  final int fileSize;
  @override
  @JsonKey(name: 'file_size_human')
  final String? fileSizeHuman;
  @override
  @JsonKey(name: 'issued_at')
  final String? issuedAt;
  @override
  @JsonKey(name: 'download_url')
  final String? downloadUrl;
  @override
  @JsonKey(name: 'verify_url')
  final String? verifyUrl;
  @override
  final DocumentAuctionRefModel? auction;

  @override
  String toString() {
    return 'DocumentModel(id: $id, type: $type, typeLabel: $typeLabel, title: $title, isPublic: $isPublic, fileSize: $fileSize, fileSizeHuman: $fileSizeHuman, issuedAt: $issuedAt, downloadUrl: $downloadUrl, verifyUrl: $verifyUrl, auction: $auction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DocumentModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.typeLabel, typeLabel) ||
                other.typeLabel == typeLabel) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.isPublic, isPublic) ||
                other.isPublic == isPublic) &&
            (identical(other.fileSize, fileSize) ||
                other.fileSize == fileSize) &&
            (identical(other.fileSizeHuman, fileSizeHuman) ||
                other.fileSizeHuman == fileSizeHuman) &&
            (identical(other.issuedAt, issuedAt) ||
                other.issuedAt == issuedAt) &&
            (identical(other.downloadUrl, downloadUrl) ||
                other.downloadUrl == downloadUrl) &&
            (identical(other.verifyUrl, verifyUrl) ||
                other.verifyUrl == verifyUrl) &&
            (identical(other.auction, auction) || other.auction == auction));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    type,
    typeLabel,
    title,
    isPublic,
    fileSize,
    fileSizeHuman,
    issuedAt,
    downloadUrl,
    verifyUrl,
    auction,
  );

  /// Create a copy of DocumentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DocumentModelImplCopyWith<_$DocumentModelImpl> get copyWith =>
      __$$DocumentModelImplCopyWithImpl<_$DocumentModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DocumentModelImplToJson(this);
  }
}

abstract class _DocumentModel extends DocumentModel {
  const factory _DocumentModel({
    required final String id,
    final String? type,
    @JsonKey(name: 'type_label') final String? typeLabel,
    final String? title,
    @JsonKey(name: 'is_public') final bool isPublic,
    @JsonKey(name: 'file_size') final int fileSize,
    @JsonKey(name: 'file_size_human') final String? fileSizeHuman,
    @JsonKey(name: 'issued_at') final String? issuedAt,
    @JsonKey(name: 'download_url') final String? downloadUrl,
    @JsonKey(name: 'verify_url') final String? verifyUrl,
    final DocumentAuctionRefModel? auction,
  }) = _$DocumentModelImpl;
  const _DocumentModel._() : super._();

  factory _DocumentModel.fromJson(Map<String, dynamic> json) =
      _$DocumentModelImpl.fromJson;

  @override
  String get id;
  @override
  String? get type;
  @override
  @JsonKey(name: 'type_label')
  String? get typeLabel;
  @override
  String? get title;
  @override
  @JsonKey(name: 'is_public')
  bool get isPublic;
  @override
  @JsonKey(name: 'file_size')
  int get fileSize;
  @override
  @JsonKey(name: 'file_size_human')
  String? get fileSizeHuman;
  @override
  @JsonKey(name: 'issued_at')
  String? get issuedAt;
  @override
  @JsonKey(name: 'download_url')
  String? get downloadUrl;
  @override
  @JsonKey(name: 'verify_url')
  String? get verifyUrl;
  @override
  DocumentAuctionRefModel? get auction;

  /// Create a copy of DocumentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DocumentModelImplCopyWith<_$DocumentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DocumentsSummaryModel _$DocumentsSummaryModelFromJson(
  Map<String, dynamic> json,
) {
  return _DocumentsSummaryModel.fromJson(json);
}

/// @nodoc
mixin _$DocumentsSummaryModel {
  int get total => throw _privateConstructorUsedError;
  int get books => throw _privateConstructorUsedError;
  int get awards => throw _privateConstructorUsedError;
  int get receipts => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_bytes')
  int get totalBytes => throw _privateConstructorUsedError;

  /// Serializes this DocumentsSummaryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DocumentsSummaryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DocumentsSummaryModelCopyWith<DocumentsSummaryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentsSummaryModelCopyWith<$Res> {
  factory $DocumentsSummaryModelCopyWith(
    DocumentsSummaryModel value,
    $Res Function(DocumentsSummaryModel) then,
  ) = _$DocumentsSummaryModelCopyWithImpl<$Res, DocumentsSummaryModel>;
  @useResult
  $Res call({
    int total,
    int books,
    int awards,
    int receipts,
    @JsonKey(name: 'total_bytes') int totalBytes,
  });
}

/// @nodoc
class _$DocumentsSummaryModelCopyWithImpl<
  $Res,
  $Val extends DocumentsSummaryModel
>
    implements $DocumentsSummaryModelCopyWith<$Res> {
  _$DocumentsSummaryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DocumentsSummaryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? books = null,
    Object? awards = null,
    Object? receipts = null,
    Object? totalBytes = null,
  }) {
    return _then(
      _value.copyWith(
            total: null == total
                ? _value.total
                : total // ignore: cast_nullable_to_non_nullable
                      as int,
            books: null == books
                ? _value.books
                : books // ignore: cast_nullable_to_non_nullable
                      as int,
            awards: null == awards
                ? _value.awards
                : awards // ignore: cast_nullable_to_non_nullable
                      as int,
            receipts: null == receipts
                ? _value.receipts
                : receipts // ignore: cast_nullable_to_non_nullable
                      as int,
            totalBytes: null == totalBytes
                ? _value.totalBytes
                : totalBytes // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DocumentsSummaryModelImplCopyWith<$Res>
    implements $DocumentsSummaryModelCopyWith<$Res> {
  factory _$$DocumentsSummaryModelImplCopyWith(
    _$DocumentsSummaryModelImpl value,
    $Res Function(_$DocumentsSummaryModelImpl) then,
  ) = __$$DocumentsSummaryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int total,
    int books,
    int awards,
    int receipts,
    @JsonKey(name: 'total_bytes') int totalBytes,
  });
}

/// @nodoc
class __$$DocumentsSummaryModelImplCopyWithImpl<$Res>
    extends
        _$DocumentsSummaryModelCopyWithImpl<$Res, _$DocumentsSummaryModelImpl>
    implements _$$DocumentsSummaryModelImplCopyWith<$Res> {
  __$$DocumentsSummaryModelImplCopyWithImpl(
    _$DocumentsSummaryModelImpl _value,
    $Res Function(_$DocumentsSummaryModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DocumentsSummaryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? books = null,
    Object? awards = null,
    Object? receipts = null,
    Object? totalBytes = null,
  }) {
    return _then(
      _$DocumentsSummaryModelImpl(
        total: null == total
            ? _value.total
            : total // ignore: cast_nullable_to_non_nullable
                  as int,
        books: null == books
            ? _value.books
            : books // ignore: cast_nullable_to_non_nullable
                  as int,
        awards: null == awards
            ? _value.awards
            : awards // ignore: cast_nullable_to_non_nullable
                  as int,
        receipts: null == receipts
            ? _value.receipts
            : receipts // ignore: cast_nullable_to_non_nullable
                  as int,
        totalBytes: null == totalBytes
            ? _value.totalBytes
            : totalBytes // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DocumentsSummaryModelImpl extends _DocumentsSummaryModel {
  const _$DocumentsSummaryModelImpl({
    this.total = 0,
    this.books = 0,
    this.awards = 0,
    this.receipts = 0,
    @JsonKey(name: 'total_bytes') this.totalBytes = 0,
  }) : super._();

  factory _$DocumentsSummaryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DocumentsSummaryModelImplFromJson(json);

  @override
  @JsonKey()
  final int total;
  @override
  @JsonKey()
  final int books;
  @override
  @JsonKey()
  final int awards;
  @override
  @JsonKey()
  final int receipts;
  @override
  @JsonKey(name: 'total_bytes')
  final int totalBytes;

  @override
  String toString() {
    return 'DocumentsSummaryModel(total: $total, books: $books, awards: $awards, receipts: $receipts, totalBytes: $totalBytes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DocumentsSummaryModelImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.books, books) || other.books == books) &&
            (identical(other.awards, awards) || other.awards == awards) &&
            (identical(other.receipts, receipts) ||
                other.receipts == receipts) &&
            (identical(other.totalBytes, totalBytes) ||
                other.totalBytes == totalBytes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, total, books, awards, receipts, totalBytes);

  /// Create a copy of DocumentsSummaryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DocumentsSummaryModelImplCopyWith<_$DocumentsSummaryModelImpl>
  get copyWith =>
      __$$DocumentsSummaryModelImplCopyWithImpl<_$DocumentsSummaryModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DocumentsSummaryModelImplToJson(this);
  }
}

abstract class _DocumentsSummaryModel extends DocumentsSummaryModel {
  const factory _DocumentsSummaryModel({
    final int total,
    final int books,
    final int awards,
    final int receipts,
    @JsonKey(name: 'total_bytes') final int totalBytes,
  }) = _$DocumentsSummaryModelImpl;
  const _DocumentsSummaryModel._() : super._();

  factory _DocumentsSummaryModel.fromJson(Map<String, dynamic> json) =
      _$DocumentsSummaryModelImpl.fromJson;

  @override
  int get total;
  @override
  int get books;
  @override
  int get awards;
  @override
  int get receipts;
  @override
  @JsonKey(name: 'total_bytes')
  int get totalBytes;

  /// Create a copy of DocumentsSummaryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DocumentsSummaryModelImplCopyWith<_$DocumentsSummaryModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}
