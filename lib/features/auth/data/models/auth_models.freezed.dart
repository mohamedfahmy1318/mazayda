// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AuthTokensModel _$AuthTokensModelFromJson(Map<String, dynamic> json) {
  return _AuthTokensModel.fromJson(json);
}

/// @nodoc
mixin _$AuthTokensModel {
  @JsonKey(name: 'access_token')
  String get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'refresh_token')
  String get refreshToken => throw _privateConstructorUsedError;

  /// Serializes this AuthTokensModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuthTokensModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthTokensModelCopyWith<AuthTokensModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthTokensModelCopyWith<$Res> {
  factory $AuthTokensModelCopyWith(
    AuthTokensModel value,
    $Res Function(AuthTokensModel) then,
  ) = _$AuthTokensModelCopyWithImpl<$Res, AuthTokensModel>;
  @useResult
  $Res call({
    @JsonKey(name: 'access_token') String accessToken,
    @JsonKey(name: 'refresh_token') String refreshToken,
  });
}

/// @nodoc
class _$AuthTokensModelCopyWithImpl<$Res, $Val extends AuthTokensModel>
    implements $AuthTokensModelCopyWith<$Res> {
  _$AuthTokensModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthTokensModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? accessToken = null, Object? refreshToken = null}) {
    return _then(
      _value.copyWith(
            accessToken: null == accessToken
                ? _value.accessToken
                : accessToken // ignore: cast_nullable_to_non_nullable
                      as String,
            refreshToken: null == refreshToken
                ? _value.refreshToken
                : refreshToken // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AuthTokensModelImplCopyWith<$Res>
    implements $AuthTokensModelCopyWith<$Res> {
  factory _$$AuthTokensModelImplCopyWith(
    _$AuthTokensModelImpl value,
    $Res Function(_$AuthTokensModelImpl) then,
  ) = __$$AuthTokensModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'access_token') String accessToken,
    @JsonKey(name: 'refresh_token') String refreshToken,
  });
}

/// @nodoc
class __$$AuthTokensModelImplCopyWithImpl<$Res>
    extends _$AuthTokensModelCopyWithImpl<$Res, _$AuthTokensModelImpl>
    implements _$$AuthTokensModelImplCopyWith<$Res> {
  __$$AuthTokensModelImplCopyWithImpl(
    _$AuthTokensModelImpl _value,
    $Res Function(_$AuthTokensModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthTokensModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? accessToken = null, Object? refreshToken = null}) {
    return _then(
      _$AuthTokensModelImpl(
        accessToken: null == accessToken
            ? _value.accessToken
            : accessToken // ignore: cast_nullable_to_non_nullable
                  as String,
        refreshToken: null == refreshToken
            ? _value.refreshToken
            : refreshToken // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthTokensModelImpl extends _AuthTokensModel {
  const _$AuthTokensModelImpl({
    @JsonKey(name: 'access_token') required this.accessToken,
    @JsonKey(name: 'refresh_token') required this.refreshToken,
  }) : super._();

  factory _$AuthTokensModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthTokensModelImplFromJson(json);

  @override
  @JsonKey(name: 'access_token')
  final String accessToken;
  @override
  @JsonKey(name: 'refresh_token')
  final String refreshToken;

  @override
  String toString() {
    return 'AuthTokensModel(accessToken: $accessToken, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthTokensModelImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken, refreshToken);

  /// Create a copy of AuthTokensModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthTokensModelImplCopyWith<_$AuthTokensModelImpl> get copyWith =>
      __$$AuthTokensModelImplCopyWithImpl<_$AuthTokensModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthTokensModelImplToJson(this);
  }
}

abstract class _AuthTokensModel extends AuthTokensModel {
  const factory _AuthTokensModel({
    @JsonKey(name: 'access_token') required final String accessToken,
    @JsonKey(name: 'refresh_token') required final String refreshToken,
  }) = _$AuthTokensModelImpl;
  const _AuthTokensModel._() : super._();

  factory _AuthTokensModel.fromJson(Map<String, dynamic> json) =
      _$AuthTokensModelImpl.fromJson;

  @override
  @JsonKey(name: 'access_token')
  String get accessToken;
  @override
  @JsonKey(name: 'refresh_token')
  String get refreshToken;

  /// Create a copy of AuthTokensModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthTokensModelImplCopyWith<_$AuthTokensModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AuthUserModel _$AuthUserModelFromJson(Map<String, dynamic> json) {
  return _AuthUserModel.fromJson(json);
}

/// @nodoc
mixin _$AuthUserModel {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name_ar')
  String? get firstNameAr => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name_ar')
  String? get lastNameAr => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'kyc_status')
  String get kycStatus => throw _privateConstructorUsedError;

  /// Serializes this AuthUserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuthUserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthUserModelCopyWith<AuthUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthUserModelCopyWith<$Res> {
  factory $AuthUserModelCopyWith(
    AuthUserModel value,
    $Res Function(AuthUserModel) then,
  ) = _$AuthUserModelCopyWithImpl<$Res, AuthUserModel>;
  @useResult
  $Res call({
    String id,
    @JsonKey(name: 'first_name_ar') String? firstNameAr,
    @JsonKey(name: 'last_name_ar') String? lastNameAr,
    String? email,
    String? phone,
    @JsonKey(name: 'kyc_status') String kycStatus,
  });
}

/// @nodoc
class _$AuthUserModelCopyWithImpl<$Res, $Val extends AuthUserModel>
    implements $AuthUserModelCopyWith<$Res> {
  _$AuthUserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthUserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstNameAr = freezed,
    Object? lastNameAr = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? kycStatus = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            firstNameAr: freezed == firstNameAr
                ? _value.firstNameAr
                : firstNameAr // ignore: cast_nullable_to_non_nullable
                      as String?,
            lastNameAr: freezed == lastNameAr
                ? _value.lastNameAr
                : lastNameAr // ignore: cast_nullable_to_non_nullable
                      as String?,
            email: freezed == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String?,
            phone: freezed == phone
                ? _value.phone
                : phone // ignore: cast_nullable_to_non_nullable
                      as String?,
            kycStatus: null == kycStatus
                ? _value.kycStatus
                : kycStatus // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AuthUserModelImplCopyWith<$Res>
    implements $AuthUserModelCopyWith<$Res> {
  factory _$$AuthUserModelImplCopyWith(
    _$AuthUserModelImpl value,
    $Res Function(_$AuthUserModelImpl) then,
  ) = __$$AuthUserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    @JsonKey(name: 'first_name_ar') String? firstNameAr,
    @JsonKey(name: 'last_name_ar') String? lastNameAr,
    String? email,
    String? phone,
    @JsonKey(name: 'kyc_status') String kycStatus,
  });
}

/// @nodoc
class __$$AuthUserModelImplCopyWithImpl<$Res>
    extends _$AuthUserModelCopyWithImpl<$Res, _$AuthUserModelImpl>
    implements _$$AuthUserModelImplCopyWith<$Res> {
  __$$AuthUserModelImplCopyWithImpl(
    _$AuthUserModelImpl _value,
    $Res Function(_$AuthUserModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthUserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? firstNameAr = freezed,
    Object? lastNameAr = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? kycStatus = null,
  }) {
    return _then(
      _$AuthUserModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        firstNameAr: freezed == firstNameAr
            ? _value.firstNameAr
            : firstNameAr // ignore: cast_nullable_to_non_nullable
                  as String?,
        lastNameAr: freezed == lastNameAr
            ? _value.lastNameAr
            : lastNameAr // ignore: cast_nullable_to_non_nullable
                  as String?,
        email: freezed == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String?,
        phone: freezed == phone
            ? _value.phone
            : phone // ignore: cast_nullable_to_non_nullable
                  as String?,
        kycStatus: null == kycStatus
            ? _value.kycStatus
            : kycStatus // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthUserModelImpl extends _AuthUserModel {
  const _$AuthUserModelImpl({
    required this.id,
    @JsonKey(name: 'first_name_ar') this.firstNameAr,
    @JsonKey(name: 'last_name_ar') this.lastNameAr,
    this.email,
    this.phone,
    @JsonKey(name: 'kyc_status') this.kycStatus = 'PENDING',
  }) : super._();

  factory _$AuthUserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthUserModelImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'first_name_ar')
  final String? firstNameAr;
  @override
  @JsonKey(name: 'last_name_ar')
  final String? lastNameAr;
  @override
  final String? email;
  @override
  final String? phone;
  @override
  @JsonKey(name: 'kyc_status')
  final String kycStatus;

  @override
  String toString() {
    return 'AuthUserModel(id: $id, firstNameAr: $firstNameAr, lastNameAr: $lastNameAr, email: $email, phone: $phone, kycStatus: $kycStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthUserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.firstNameAr, firstNameAr) ||
                other.firstNameAr == firstNameAr) &&
            (identical(other.lastNameAr, lastNameAr) ||
                other.lastNameAr == lastNameAr) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.kycStatus, kycStatus) ||
                other.kycStatus == kycStatus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    firstNameAr,
    lastNameAr,
    email,
    phone,
    kycStatus,
  );

  /// Create a copy of AuthUserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthUserModelImplCopyWith<_$AuthUserModelImpl> get copyWith =>
      __$$AuthUserModelImplCopyWithImpl<_$AuthUserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthUserModelImplToJson(this);
  }
}

abstract class _AuthUserModel extends AuthUserModel {
  const factory _AuthUserModel({
    required final String id,
    @JsonKey(name: 'first_name_ar') final String? firstNameAr,
    @JsonKey(name: 'last_name_ar') final String? lastNameAr,
    final String? email,
    final String? phone,
    @JsonKey(name: 'kyc_status') final String kycStatus,
  }) = _$AuthUserModelImpl;
  const _AuthUserModel._() : super._();

  factory _AuthUserModel.fromJson(Map<String, dynamic> json) =
      _$AuthUserModelImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'first_name_ar')
  String? get firstNameAr;
  @override
  @JsonKey(name: 'last_name_ar')
  String? get lastNameAr;
  @override
  String? get email;
  @override
  String? get phone;
  @override
  @JsonKey(name: 'kyc_status')
  String get kycStatus;

  /// Create a copy of AuthUserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthUserModelImplCopyWith<_$AuthUserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
