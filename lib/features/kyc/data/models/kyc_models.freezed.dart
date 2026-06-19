// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kyc_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

KycStatusModel _$KycStatusModelFromJson(Map<String, dynamic> json) {
  return _KycStatusModel.fromJson(json);
}

/// @nodoc
mixin _$KycStatusModel {
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'documents_on_file')
  List<String> get documentsOnFile => throw _privateConstructorUsedError;
  @JsonKey(name: 'can_submit')
  bool get canSubmit => throw _privateConstructorUsedError;

  /// Serializes this KycStatusModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of KycStatusModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $KycStatusModelCopyWith<KycStatusModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KycStatusModelCopyWith<$Res> {
  factory $KycStatusModelCopyWith(
    KycStatusModel value,
    $Res Function(KycStatusModel) then,
  ) = _$KycStatusModelCopyWithImpl<$Res, KycStatusModel>;
  @useResult
  $Res call({
    String? status,
    @JsonKey(name: 'documents_on_file') List<String> documentsOnFile,
    @JsonKey(name: 'can_submit') bool canSubmit,
  });
}

/// @nodoc
class _$KycStatusModelCopyWithImpl<$Res, $Val extends KycStatusModel>
    implements $KycStatusModelCopyWith<$Res> {
  _$KycStatusModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of KycStatusModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? documentsOnFile = null,
    Object? canSubmit = null,
  }) {
    return _then(
      _value.copyWith(
            status: freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String?,
            documentsOnFile: null == documentsOnFile
                ? _value.documentsOnFile
                : documentsOnFile // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            canSubmit: null == canSubmit
                ? _value.canSubmit
                : canSubmit // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$KycStatusModelImplCopyWith<$Res>
    implements $KycStatusModelCopyWith<$Res> {
  factory _$$KycStatusModelImplCopyWith(
    _$KycStatusModelImpl value,
    $Res Function(_$KycStatusModelImpl) then,
  ) = __$$KycStatusModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? status,
    @JsonKey(name: 'documents_on_file') List<String> documentsOnFile,
    @JsonKey(name: 'can_submit') bool canSubmit,
  });
}

/// @nodoc
class __$$KycStatusModelImplCopyWithImpl<$Res>
    extends _$KycStatusModelCopyWithImpl<$Res, _$KycStatusModelImpl>
    implements _$$KycStatusModelImplCopyWith<$Res> {
  __$$KycStatusModelImplCopyWithImpl(
    _$KycStatusModelImpl _value,
    $Res Function(_$KycStatusModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of KycStatusModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? documentsOnFile = null,
    Object? canSubmit = null,
  }) {
    return _then(
      _$KycStatusModelImpl(
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String?,
        documentsOnFile: null == documentsOnFile
            ? _value._documentsOnFile
            : documentsOnFile // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        canSubmit: null == canSubmit
            ? _value.canSubmit
            : canSubmit // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$KycStatusModelImpl extends _KycStatusModel {
  const _$KycStatusModelImpl({
    this.status,
    @JsonKey(name: 'documents_on_file')
    final List<String> documentsOnFile = const <String>[],
    @JsonKey(name: 'can_submit') this.canSubmit = false,
  }) : _documentsOnFile = documentsOnFile,
       super._();

  factory _$KycStatusModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$KycStatusModelImplFromJson(json);

  @override
  final String? status;
  final List<String> _documentsOnFile;
  @override
  @JsonKey(name: 'documents_on_file')
  List<String> get documentsOnFile {
    if (_documentsOnFile is EqualUnmodifiableListView) return _documentsOnFile;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_documentsOnFile);
  }

  @override
  @JsonKey(name: 'can_submit')
  final bool canSubmit;

  @override
  String toString() {
    return 'KycStatusModel(status: $status, documentsOnFile: $documentsOnFile, canSubmit: $canSubmit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KycStatusModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(
              other._documentsOnFile,
              _documentsOnFile,
            ) &&
            (identical(other.canSubmit, canSubmit) ||
                other.canSubmit == canSubmit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    const DeepCollectionEquality().hash(_documentsOnFile),
    canSubmit,
  );

  /// Create a copy of KycStatusModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$KycStatusModelImplCopyWith<_$KycStatusModelImpl> get copyWith =>
      __$$KycStatusModelImplCopyWithImpl<_$KycStatusModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$KycStatusModelImplToJson(this);
  }
}

abstract class _KycStatusModel extends KycStatusModel {
  const factory _KycStatusModel({
    final String? status,
    @JsonKey(name: 'documents_on_file') final List<String> documentsOnFile,
    @JsonKey(name: 'can_submit') final bool canSubmit,
  }) = _$KycStatusModelImpl;
  const _KycStatusModel._() : super._();

  factory _KycStatusModel.fromJson(Map<String, dynamic> json) =
      _$KycStatusModelImpl.fromJson;

  @override
  String? get status;
  @override
  @JsonKey(name: 'documents_on_file')
  List<String> get documentsOnFile;
  @override
  @JsonKey(name: 'can_submit')
  bool get canSubmit;

  /// Create a copy of KycStatusModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$KycStatusModelImplCopyWith<_$KycStatusModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WilayaModel _$WilayaModelFromJson(Map<String, dynamic> json) {
  return _WilayaModel.fromJson(json);
}

/// @nodoc
mixin _$WilayaModel {
  int get id => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'name_ar')
  String? get nameAr => throw _privateConstructorUsedError;
  @JsonKey(name: 'name_fr')
  String? get nameFr => throw _privateConstructorUsedError;

  /// Serializes this WilayaModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WilayaModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WilayaModelCopyWith<WilayaModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WilayaModelCopyWith<$Res> {
  factory $WilayaModelCopyWith(
    WilayaModel value,
    $Res Function(WilayaModel) then,
  ) = _$WilayaModelCopyWithImpl<$Res, WilayaModel>;
  @useResult
  $Res call({
    int id,
    String code,
    @JsonKey(name: 'name_ar') String? nameAr,
    @JsonKey(name: 'name_fr') String? nameFr,
  });
}

/// @nodoc
class _$WilayaModelCopyWithImpl<$Res, $Val extends WilayaModel>
    implements $WilayaModelCopyWith<$Res> {
  _$WilayaModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WilayaModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? nameAr = freezed,
    Object? nameFr = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            code: null == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
                      as String,
            nameAr: freezed == nameAr
                ? _value.nameAr
                : nameAr // ignore: cast_nullable_to_non_nullable
                      as String?,
            nameFr: freezed == nameFr
                ? _value.nameFr
                : nameFr // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$WilayaModelImplCopyWith<$Res>
    implements $WilayaModelCopyWith<$Res> {
  factory _$$WilayaModelImplCopyWith(
    _$WilayaModelImpl value,
    $Res Function(_$WilayaModelImpl) then,
  ) = __$$WilayaModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String code,
    @JsonKey(name: 'name_ar') String? nameAr,
    @JsonKey(name: 'name_fr') String? nameFr,
  });
}

/// @nodoc
class __$$WilayaModelImplCopyWithImpl<$Res>
    extends _$WilayaModelCopyWithImpl<$Res, _$WilayaModelImpl>
    implements _$$WilayaModelImplCopyWith<$Res> {
  __$$WilayaModelImplCopyWithImpl(
    _$WilayaModelImpl _value,
    $Res Function(_$WilayaModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WilayaModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
    Object? nameAr = freezed,
    Object? nameFr = freezed,
  }) {
    return _then(
      _$WilayaModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        code: null == code
            ? _value.code
            : code // ignore: cast_nullable_to_non_nullable
                  as String,
        nameAr: freezed == nameAr
            ? _value.nameAr
            : nameAr // ignore: cast_nullable_to_non_nullable
                  as String?,
        nameFr: freezed == nameFr
            ? _value.nameFr
            : nameFr // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$WilayaModelImpl extends _WilayaModel {
  const _$WilayaModelImpl({
    required this.id,
    this.code = '',
    @JsonKey(name: 'name_ar') this.nameAr,
    @JsonKey(name: 'name_fr') this.nameFr,
  }) : super._();

  factory _$WilayaModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WilayaModelImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey()
  final String code;
  @override
  @JsonKey(name: 'name_ar')
  final String? nameAr;
  @override
  @JsonKey(name: 'name_fr')
  final String? nameFr;

  @override
  String toString() {
    return 'WilayaModel(id: $id, code: $code, nameAr: $nameAr, nameFr: $nameFr)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WilayaModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.nameAr, nameAr) || other.nameAr == nameAr) &&
            (identical(other.nameFr, nameFr) || other.nameFr == nameFr));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, code, nameAr, nameFr);

  /// Create a copy of WilayaModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WilayaModelImplCopyWith<_$WilayaModelImpl> get copyWith =>
      __$$WilayaModelImplCopyWithImpl<_$WilayaModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WilayaModelImplToJson(this);
  }
}

abstract class _WilayaModel extends WilayaModel {
  const factory _WilayaModel({
    required final int id,
    final String code,
    @JsonKey(name: 'name_ar') final String? nameAr,
    @JsonKey(name: 'name_fr') final String? nameFr,
  }) = _$WilayaModelImpl;
  const _WilayaModel._() : super._();

  factory _WilayaModel.fromJson(Map<String, dynamic> json) =
      _$WilayaModelImpl.fromJson;

  @override
  int get id;
  @override
  String get code;
  @override
  @JsonKey(name: 'name_ar')
  String? get nameAr;
  @override
  @JsonKey(name: 'name_fr')
  String? get nameFr;

  /// Create a copy of WilayaModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WilayaModelImplCopyWith<_$WilayaModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CommuneModel _$CommuneModelFromJson(Map<String, dynamic> json) {
  return _CommuneModel.fromJson(json);
}

/// @nodoc
mixin _$CommuneModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name_ar')
  String? get nameAr => throw _privateConstructorUsedError;
  @JsonKey(name: 'name_fr')
  String? get nameFr => throw _privateConstructorUsedError;
  @JsonKey(name: 'postal_code')
  String? get postalCode => throw _privateConstructorUsedError;

  /// Serializes this CommuneModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommuneModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommuneModelCopyWith<CommuneModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommuneModelCopyWith<$Res> {
  factory $CommuneModelCopyWith(
    CommuneModel value,
    $Res Function(CommuneModel) then,
  ) = _$CommuneModelCopyWithImpl<$Res, CommuneModel>;
  @useResult
  $Res call({
    int id,
    @JsonKey(name: 'name_ar') String? nameAr,
    @JsonKey(name: 'name_fr') String? nameFr,
    @JsonKey(name: 'postal_code') String? postalCode,
  });
}

/// @nodoc
class _$CommuneModelCopyWithImpl<$Res, $Val extends CommuneModel>
    implements $CommuneModelCopyWith<$Res> {
  _$CommuneModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommuneModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nameAr = freezed,
    Object? nameFr = freezed,
    Object? postalCode = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            nameAr: freezed == nameAr
                ? _value.nameAr
                : nameAr // ignore: cast_nullable_to_non_nullable
                      as String?,
            nameFr: freezed == nameFr
                ? _value.nameFr
                : nameFr // ignore: cast_nullable_to_non_nullable
                      as String?,
            postalCode: freezed == postalCode
                ? _value.postalCode
                : postalCode // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CommuneModelImplCopyWith<$Res>
    implements $CommuneModelCopyWith<$Res> {
  factory _$$CommuneModelImplCopyWith(
    _$CommuneModelImpl value,
    $Res Function(_$CommuneModelImpl) then,
  ) = __$$CommuneModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    @JsonKey(name: 'name_ar') String? nameAr,
    @JsonKey(name: 'name_fr') String? nameFr,
    @JsonKey(name: 'postal_code') String? postalCode,
  });
}

/// @nodoc
class __$$CommuneModelImplCopyWithImpl<$Res>
    extends _$CommuneModelCopyWithImpl<$Res, _$CommuneModelImpl>
    implements _$$CommuneModelImplCopyWith<$Res> {
  __$$CommuneModelImplCopyWithImpl(
    _$CommuneModelImpl _value,
    $Res Function(_$CommuneModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CommuneModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nameAr = freezed,
    Object? nameFr = freezed,
    Object? postalCode = freezed,
  }) {
    return _then(
      _$CommuneModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        nameAr: freezed == nameAr
            ? _value.nameAr
            : nameAr // ignore: cast_nullable_to_non_nullable
                  as String?,
        nameFr: freezed == nameFr
            ? _value.nameFr
            : nameFr // ignore: cast_nullable_to_non_nullable
                  as String?,
        postalCode: freezed == postalCode
            ? _value.postalCode
            : postalCode // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CommuneModelImpl extends _CommuneModel {
  const _$CommuneModelImpl({
    required this.id,
    @JsonKey(name: 'name_ar') this.nameAr,
    @JsonKey(name: 'name_fr') this.nameFr,
    @JsonKey(name: 'postal_code') this.postalCode,
  }) : super._();

  factory _$CommuneModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommuneModelImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'name_ar')
  final String? nameAr;
  @override
  @JsonKey(name: 'name_fr')
  final String? nameFr;
  @override
  @JsonKey(name: 'postal_code')
  final String? postalCode;

  @override
  String toString() {
    return 'CommuneModel(id: $id, nameAr: $nameAr, nameFr: $nameFr, postalCode: $postalCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommuneModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nameAr, nameAr) || other.nameAr == nameAr) &&
            (identical(other.nameFr, nameFr) || other.nameFr == nameFr) &&
            (identical(other.postalCode, postalCode) ||
                other.postalCode == postalCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, nameAr, nameFr, postalCode);

  /// Create a copy of CommuneModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommuneModelImplCopyWith<_$CommuneModelImpl> get copyWith =>
      __$$CommuneModelImplCopyWithImpl<_$CommuneModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommuneModelImplToJson(this);
  }
}

abstract class _CommuneModel extends CommuneModel {
  const factory _CommuneModel({
    required final int id,
    @JsonKey(name: 'name_ar') final String? nameAr,
    @JsonKey(name: 'name_fr') final String? nameFr,
    @JsonKey(name: 'postal_code') final String? postalCode,
  }) = _$CommuneModelImpl;
  const _CommuneModel._() : super._();

  factory _CommuneModel.fromJson(Map<String, dynamic> json) =
      _$CommuneModelImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'name_ar')
  String? get nameAr;
  @override
  @JsonKey(name: 'name_fr')
  String? get nameFr;
  @override
  @JsonKey(name: 'postal_code')
  String? get postalCode;

  /// Create a copy of CommuneModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommuneModelImplCopyWith<_$CommuneModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
