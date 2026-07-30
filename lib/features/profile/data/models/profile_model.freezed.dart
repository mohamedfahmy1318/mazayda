// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ProfileEntityRefModel _$ProfileEntityRefModelFromJson(
  Map<String, dynamic> json,
) {
  return _ProfileEntityRefModel.fromJson(json);
}

/// @nodoc
mixin _$ProfileEntityRefModel {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this ProfileEntityRefModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProfileEntityRefModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileEntityRefModelCopyWith<ProfileEntityRefModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEntityRefModelCopyWith<$Res> {
  factory $ProfileEntityRefModelCopyWith(
    ProfileEntityRefModel value,
    $Res Function(ProfileEntityRefModel) then,
  ) = _$ProfileEntityRefModelCopyWithImpl<$Res, ProfileEntityRefModel>;
  @useResult
  $Res call({String? id, String? name});
}

/// @nodoc
class _$ProfileEntityRefModelCopyWithImpl<
  $Res,
  $Val extends ProfileEntityRefModel
>
    implements $ProfileEntityRefModelCopyWith<$Res> {
  _$ProfileEntityRefModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileEntityRefModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = freezed, Object? name = freezed}) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            name: freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProfileEntityRefModelImplCopyWith<$Res>
    implements $ProfileEntityRefModelCopyWith<$Res> {
  factory _$$ProfileEntityRefModelImplCopyWith(
    _$ProfileEntityRefModelImpl value,
    $Res Function(_$ProfileEntityRefModelImpl) then,
  ) = __$$ProfileEntityRefModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? name});
}

/// @nodoc
class __$$ProfileEntityRefModelImplCopyWithImpl<$Res>
    extends
        _$ProfileEntityRefModelCopyWithImpl<$Res, _$ProfileEntityRefModelImpl>
    implements _$$ProfileEntityRefModelImplCopyWith<$Res> {
  __$$ProfileEntityRefModelImplCopyWithImpl(
    _$ProfileEntityRefModelImpl _value,
    $Res Function(_$ProfileEntityRefModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProfileEntityRefModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = freezed, Object? name = freezed}) {
    return _then(
      _$ProfileEntityRefModelImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        name: freezed == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileEntityRefModelImpl extends _ProfileEntityRefModel {
  const _$ProfileEntityRefModelImpl({this.id, this.name}) : super._();

  factory _$ProfileEntityRefModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileEntityRefModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'ProfileEntityRefModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileEntityRefModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of ProfileEntityRefModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileEntityRefModelImplCopyWith<_$ProfileEntityRefModelImpl>
  get copyWith =>
      __$$ProfileEntityRefModelImplCopyWithImpl<_$ProfileEntityRefModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileEntityRefModelImplToJson(this);
  }
}

abstract class _ProfileEntityRefModel extends ProfileEntityRefModel {
  const factory _ProfileEntityRefModel({final String? id, final String? name}) =
      _$ProfileEntityRefModelImpl;
  const _ProfileEntityRefModel._() : super._();

  factory _ProfileEntityRefModel.fromJson(Map<String, dynamic> json) =
      _$ProfileEntityRefModelImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;

  /// Create a copy of ProfileEntityRefModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileEntityRefModelImplCopyWith<_$ProfileEntityRefModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}

ProfileModel _$ProfileModelFromJson(Map<String, dynamic> json) {
  return _ProfileModel.fromJson(json);
}

/// @nodoc
mixin _$ProfileModel {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'nin_masked')
  String? get ninMasked => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name_ar')
  String? get firstNameAr => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name_ar')
  String? get lastNameAr => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name_fr')
  String? get firstNameFr => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name_fr')
  String? get lastNameFr => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'commune_id')
  int? get communeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'postal_code')
  String? get postalCode => throw _privateConstructorUsedError;
  String? get profession => throw _privateConstructorUsedError;
  String? get locale => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;
  @JsonKey(name: 'account_status')
  String? get accountStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'account_type')
  String? get accountType => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_institution')
  bool get isInstitution => throw _privateConstructorUsedError;
  ProfileEntityRefModel? get entity => throw _privateConstructorUsedError;
  @JsonKey(name: 'kyc_status')
  String get kycStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'commercial_register_status')
  String? get commercialRegisterStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_commerce_register')
  bool get hasCommerceRegister => throw _privateConstructorUsedError;
  @JsonKey(name: 'email_verified')
  bool get emailVerified => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_verified')
  bool get phoneVerified => throw _privateConstructorUsedError;
  @JsonKey(name: 'secret_question')
  String? get secretQuestion => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_secret_question')
  bool get hasSecretQuestion => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_kyc_complete')
  bool get isKycComplete => throw _privateConstructorUsedError;
  @JsonKey(name: 'can_bid')
  bool get canBid => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_premium')
  bool get isPremium => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_blacklisted')
  bool get isBlacklisted => throw _privateConstructorUsedError;

  /// Serializes this ProfileModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileModelCopyWith<ProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileModelCopyWith<$Res> {
  factory $ProfileModelCopyWith(
    ProfileModel value,
    $Res Function(ProfileModel) then,
  ) = _$ProfileModelCopyWithImpl<$Res, ProfileModel>;
  @useResult
  $Res call({
    String id,
    @JsonKey(name: 'nin_masked') String? ninMasked,
    String? name,
    @JsonKey(name: 'first_name_ar') String? firstNameAr,
    @JsonKey(name: 'last_name_ar') String? lastNameAr,
    @JsonKey(name: 'first_name_fr') String? firstNameFr,
    @JsonKey(name: 'last_name_fr') String? lastNameFr,
    String? email,
    String? phone,
    String? address,
    @JsonKey(name: 'commune_id') int? communeId,
    @JsonKey(name: 'postal_code') String? postalCode,
    String? profession,
    String? locale,
    String? role,
    @JsonKey(name: 'account_status') String? accountStatus,
    @JsonKey(name: 'account_type') String? accountType,
    @JsonKey(name: 'is_institution') bool isInstitution,
    ProfileEntityRefModel? entity,
    @JsonKey(name: 'kyc_status') String kycStatus,
    @JsonKey(name: 'commercial_register_status')
    String? commercialRegisterStatus,
    @JsonKey(name: 'has_commerce_register') bool hasCommerceRegister,
    @JsonKey(name: 'email_verified') bool emailVerified,
    @JsonKey(name: 'phone_verified') bool phoneVerified,
    @JsonKey(name: 'secret_question') String? secretQuestion,
    @JsonKey(name: 'has_secret_question') bool hasSecretQuestion,
    @JsonKey(name: 'is_kyc_complete') bool isKycComplete,
    @JsonKey(name: 'can_bid') bool canBid,
    @JsonKey(name: 'is_premium') bool isPremium,
    @JsonKey(name: 'is_blacklisted') bool isBlacklisted,
  });

  $ProfileEntityRefModelCopyWith<$Res>? get entity;
}

/// @nodoc
class _$ProfileModelCopyWithImpl<$Res, $Val extends ProfileModel>
    implements $ProfileModelCopyWith<$Res> {
  _$ProfileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? ninMasked = freezed,
    Object? name = freezed,
    Object? firstNameAr = freezed,
    Object? lastNameAr = freezed,
    Object? firstNameFr = freezed,
    Object? lastNameFr = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? address = freezed,
    Object? communeId = freezed,
    Object? postalCode = freezed,
    Object? profession = freezed,
    Object? locale = freezed,
    Object? role = freezed,
    Object? accountStatus = freezed,
    Object? accountType = freezed,
    Object? isInstitution = null,
    Object? entity = freezed,
    Object? kycStatus = null,
    Object? commercialRegisterStatus = freezed,
    Object? hasCommerceRegister = null,
    Object? emailVerified = null,
    Object? phoneVerified = null,
    Object? secretQuestion = freezed,
    Object? hasSecretQuestion = null,
    Object? isKycComplete = null,
    Object? canBid = null,
    Object? isPremium = null,
    Object? isBlacklisted = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            ninMasked: freezed == ninMasked
                ? _value.ninMasked
                : ninMasked // ignore: cast_nullable_to_non_nullable
                      as String?,
            name: freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String?,
            firstNameAr: freezed == firstNameAr
                ? _value.firstNameAr
                : firstNameAr // ignore: cast_nullable_to_non_nullable
                      as String?,
            lastNameAr: freezed == lastNameAr
                ? _value.lastNameAr
                : lastNameAr // ignore: cast_nullable_to_non_nullable
                      as String?,
            firstNameFr: freezed == firstNameFr
                ? _value.firstNameFr
                : firstNameFr // ignore: cast_nullable_to_non_nullable
                      as String?,
            lastNameFr: freezed == lastNameFr
                ? _value.lastNameFr
                : lastNameFr // ignore: cast_nullable_to_non_nullable
                      as String?,
            email: freezed == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String?,
            phone: freezed == phone
                ? _value.phone
                : phone // ignore: cast_nullable_to_non_nullable
                      as String?,
            address: freezed == address
                ? _value.address
                : address // ignore: cast_nullable_to_non_nullable
                      as String?,
            communeId: freezed == communeId
                ? _value.communeId
                : communeId // ignore: cast_nullable_to_non_nullable
                      as int?,
            postalCode: freezed == postalCode
                ? _value.postalCode
                : postalCode // ignore: cast_nullable_to_non_nullable
                      as String?,
            profession: freezed == profession
                ? _value.profession
                : profession // ignore: cast_nullable_to_non_nullable
                      as String?,
            locale: freezed == locale
                ? _value.locale
                : locale // ignore: cast_nullable_to_non_nullable
                      as String?,
            role: freezed == role
                ? _value.role
                : role // ignore: cast_nullable_to_non_nullable
                      as String?,
            accountStatus: freezed == accountStatus
                ? _value.accountStatus
                : accountStatus // ignore: cast_nullable_to_non_nullable
                      as String?,
            accountType: freezed == accountType
                ? _value.accountType
                : accountType // ignore: cast_nullable_to_non_nullable
                      as String?,
            isInstitution: null == isInstitution
                ? _value.isInstitution
                : isInstitution // ignore: cast_nullable_to_non_nullable
                      as bool,
            entity: freezed == entity
                ? _value.entity
                : entity // ignore: cast_nullable_to_non_nullable
                      as ProfileEntityRefModel?,
            kycStatus: null == kycStatus
                ? _value.kycStatus
                : kycStatus // ignore: cast_nullable_to_non_nullable
                      as String,
            commercialRegisterStatus: freezed == commercialRegisterStatus
                ? _value.commercialRegisterStatus
                : commercialRegisterStatus // ignore: cast_nullable_to_non_nullable
                      as String?,
            hasCommerceRegister: null == hasCommerceRegister
                ? _value.hasCommerceRegister
                : hasCommerceRegister // ignore: cast_nullable_to_non_nullable
                      as bool,
            emailVerified: null == emailVerified
                ? _value.emailVerified
                : emailVerified // ignore: cast_nullable_to_non_nullable
                      as bool,
            phoneVerified: null == phoneVerified
                ? _value.phoneVerified
                : phoneVerified // ignore: cast_nullable_to_non_nullable
                      as bool,
            secretQuestion: freezed == secretQuestion
                ? _value.secretQuestion
                : secretQuestion // ignore: cast_nullable_to_non_nullable
                      as String?,
            hasSecretQuestion: null == hasSecretQuestion
                ? _value.hasSecretQuestion
                : hasSecretQuestion // ignore: cast_nullable_to_non_nullable
                      as bool,
            isKycComplete: null == isKycComplete
                ? _value.isKycComplete
                : isKycComplete // ignore: cast_nullable_to_non_nullable
                      as bool,
            canBid: null == canBid
                ? _value.canBid
                : canBid // ignore: cast_nullable_to_non_nullable
                      as bool,
            isPremium: null == isPremium
                ? _value.isPremium
                : isPremium // ignore: cast_nullable_to_non_nullable
                      as bool,
            isBlacklisted: null == isBlacklisted
                ? _value.isBlacklisted
                : isBlacklisted // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }

  /// Create a copy of ProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileEntityRefModelCopyWith<$Res>? get entity {
    if (_value.entity == null) {
      return null;
    }

    return $ProfileEntityRefModelCopyWith<$Res>(_value.entity!, (value) {
      return _then(_value.copyWith(entity: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProfileModelImplCopyWith<$Res>
    implements $ProfileModelCopyWith<$Res> {
  factory _$$ProfileModelImplCopyWith(
    _$ProfileModelImpl value,
    $Res Function(_$ProfileModelImpl) then,
  ) = __$$ProfileModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    @JsonKey(name: 'nin_masked') String? ninMasked,
    String? name,
    @JsonKey(name: 'first_name_ar') String? firstNameAr,
    @JsonKey(name: 'last_name_ar') String? lastNameAr,
    @JsonKey(name: 'first_name_fr') String? firstNameFr,
    @JsonKey(name: 'last_name_fr') String? lastNameFr,
    String? email,
    String? phone,
    String? address,
    @JsonKey(name: 'commune_id') int? communeId,
    @JsonKey(name: 'postal_code') String? postalCode,
    String? profession,
    String? locale,
    String? role,
    @JsonKey(name: 'account_status') String? accountStatus,
    @JsonKey(name: 'account_type') String? accountType,
    @JsonKey(name: 'is_institution') bool isInstitution,
    ProfileEntityRefModel? entity,
    @JsonKey(name: 'kyc_status') String kycStatus,
    @JsonKey(name: 'commercial_register_status')
    String? commercialRegisterStatus,
    @JsonKey(name: 'has_commerce_register') bool hasCommerceRegister,
    @JsonKey(name: 'email_verified') bool emailVerified,
    @JsonKey(name: 'phone_verified') bool phoneVerified,
    @JsonKey(name: 'secret_question') String? secretQuestion,
    @JsonKey(name: 'has_secret_question') bool hasSecretQuestion,
    @JsonKey(name: 'is_kyc_complete') bool isKycComplete,
    @JsonKey(name: 'can_bid') bool canBid,
    @JsonKey(name: 'is_premium') bool isPremium,
    @JsonKey(name: 'is_blacklisted') bool isBlacklisted,
  });

  @override
  $ProfileEntityRefModelCopyWith<$Res>? get entity;
}

/// @nodoc
class __$$ProfileModelImplCopyWithImpl<$Res>
    extends _$ProfileModelCopyWithImpl<$Res, _$ProfileModelImpl>
    implements _$$ProfileModelImplCopyWith<$Res> {
  __$$ProfileModelImplCopyWithImpl(
    _$ProfileModelImpl _value,
    $Res Function(_$ProfileModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? ninMasked = freezed,
    Object? name = freezed,
    Object? firstNameAr = freezed,
    Object? lastNameAr = freezed,
    Object? firstNameFr = freezed,
    Object? lastNameFr = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? address = freezed,
    Object? communeId = freezed,
    Object? postalCode = freezed,
    Object? profession = freezed,
    Object? locale = freezed,
    Object? role = freezed,
    Object? accountStatus = freezed,
    Object? accountType = freezed,
    Object? isInstitution = null,
    Object? entity = freezed,
    Object? kycStatus = null,
    Object? commercialRegisterStatus = freezed,
    Object? hasCommerceRegister = null,
    Object? emailVerified = null,
    Object? phoneVerified = null,
    Object? secretQuestion = freezed,
    Object? hasSecretQuestion = null,
    Object? isKycComplete = null,
    Object? canBid = null,
    Object? isPremium = null,
    Object? isBlacklisted = null,
  }) {
    return _then(
      _$ProfileModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        ninMasked: freezed == ninMasked
            ? _value.ninMasked
            : ninMasked // ignore: cast_nullable_to_non_nullable
                  as String?,
        name: freezed == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String?,
        firstNameAr: freezed == firstNameAr
            ? _value.firstNameAr
            : firstNameAr // ignore: cast_nullable_to_non_nullable
                  as String?,
        lastNameAr: freezed == lastNameAr
            ? _value.lastNameAr
            : lastNameAr // ignore: cast_nullable_to_non_nullable
                  as String?,
        firstNameFr: freezed == firstNameFr
            ? _value.firstNameFr
            : firstNameFr // ignore: cast_nullable_to_non_nullable
                  as String?,
        lastNameFr: freezed == lastNameFr
            ? _value.lastNameFr
            : lastNameFr // ignore: cast_nullable_to_non_nullable
                  as String?,
        email: freezed == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String?,
        phone: freezed == phone
            ? _value.phone
            : phone // ignore: cast_nullable_to_non_nullable
                  as String?,
        address: freezed == address
            ? _value.address
            : address // ignore: cast_nullable_to_non_nullable
                  as String?,
        communeId: freezed == communeId
            ? _value.communeId
            : communeId // ignore: cast_nullable_to_non_nullable
                  as int?,
        postalCode: freezed == postalCode
            ? _value.postalCode
            : postalCode // ignore: cast_nullable_to_non_nullable
                  as String?,
        profession: freezed == profession
            ? _value.profession
            : profession // ignore: cast_nullable_to_non_nullable
                  as String?,
        locale: freezed == locale
            ? _value.locale
            : locale // ignore: cast_nullable_to_non_nullable
                  as String?,
        role: freezed == role
            ? _value.role
            : role // ignore: cast_nullable_to_non_nullable
                  as String?,
        accountStatus: freezed == accountStatus
            ? _value.accountStatus
            : accountStatus // ignore: cast_nullable_to_non_nullable
                  as String?,
        accountType: freezed == accountType
            ? _value.accountType
            : accountType // ignore: cast_nullable_to_non_nullable
                  as String?,
        isInstitution: null == isInstitution
            ? _value.isInstitution
            : isInstitution // ignore: cast_nullable_to_non_nullable
                  as bool,
        entity: freezed == entity
            ? _value.entity
            : entity // ignore: cast_nullable_to_non_nullable
                  as ProfileEntityRefModel?,
        kycStatus: null == kycStatus
            ? _value.kycStatus
            : kycStatus // ignore: cast_nullable_to_non_nullable
                  as String,
        commercialRegisterStatus: freezed == commercialRegisterStatus
            ? _value.commercialRegisterStatus
            : commercialRegisterStatus // ignore: cast_nullable_to_non_nullable
                  as String?,
        hasCommerceRegister: null == hasCommerceRegister
            ? _value.hasCommerceRegister
            : hasCommerceRegister // ignore: cast_nullable_to_non_nullable
                  as bool,
        emailVerified: null == emailVerified
            ? _value.emailVerified
            : emailVerified // ignore: cast_nullable_to_non_nullable
                  as bool,
        phoneVerified: null == phoneVerified
            ? _value.phoneVerified
            : phoneVerified // ignore: cast_nullable_to_non_nullable
                  as bool,
        secretQuestion: freezed == secretQuestion
            ? _value.secretQuestion
            : secretQuestion // ignore: cast_nullable_to_non_nullable
                  as String?,
        hasSecretQuestion: null == hasSecretQuestion
            ? _value.hasSecretQuestion
            : hasSecretQuestion // ignore: cast_nullable_to_non_nullable
                  as bool,
        isKycComplete: null == isKycComplete
            ? _value.isKycComplete
            : isKycComplete // ignore: cast_nullable_to_non_nullable
                  as bool,
        canBid: null == canBid
            ? _value.canBid
            : canBid // ignore: cast_nullable_to_non_nullable
                  as bool,
        isPremium: null == isPremium
            ? _value.isPremium
            : isPremium // ignore: cast_nullable_to_non_nullable
                  as bool,
        isBlacklisted: null == isBlacklisted
            ? _value.isBlacklisted
            : isBlacklisted // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileModelImpl extends _ProfileModel {
  const _$ProfileModelImpl({
    required this.id,
    @JsonKey(name: 'nin_masked') this.ninMasked,
    this.name,
    @JsonKey(name: 'first_name_ar') this.firstNameAr,
    @JsonKey(name: 'last_name_ar') this.lastNameAr,
    @JsonKey(name: 'first_name_fr') this.firstNameFr,
    @JsonKey(name: 'last_name_fr') this.lastNameFr,
    this.email,
    this.phone,
    this.address,
    @JsonKey(name: 'commune_id') this.communeId,
    @JsonKey(name: 'postal_code') this.postalCode,
    this.profession,
    this.locale,
    this.role,
    @JsonKey(name: 'account_status') this.accountStatus,
    @JsonKey(name: 'account_type') this.accountType,
    @JsonKey(name: 'is_institution') this.isInstitution = false,
    this.entity,
    @JsonKey(name: 'kyc_status') this.kycStatus = 'PENDING',
    @JsonKey(name: 'commercial_register_status') this.commercialRegisterStatus,
    @JsonKey(name: 'has_commerce_register') this.hasCommerceRegister = false,
    @JsonKey(name: 'email_verified') this.emailVerified = false,
    @JsonKey(name: 'phone_verified') this.phoneVerified = false,
    @JsonKey(name: 'secret_question') this.secretQuestion,
    @JsonKey(name: 'has_secret_question') this.hasSecretQuestion = false,
    @JsonKey(name: 'is_kyc_complete') this.isKycComplete = false,
    @JsonKey(name: 'can_bid') this.canBid = false,
    @JsonKey(name: 'is_premium') this.isPremium = false,
    @JsonKey(name: 'is_blacklisted') this.isBlacklisted = false,
  }) : super._();

  factory _$ProfileModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileModelImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'nin_masked')
  final String? ninMasked;
  @override
  final String? name;
  @override
  @JsonKey(name: 'first_name_ar')
  final String? firstNameAr;
  @override
  @JsonKey(name: 'last_name_ar')
  final String? lastNameAr;
  @override
  @JsonKey(name: 'first_name_fr')
  final String? firstNameFr;
  @override
  @JsonKey(name: 'last_name_fr')
  final String? lastNameFr;
  @override
  final String? email;
  @override
  final String? phone;
  @override
  final String? address;
  @override
  @JsonKey(name: 'commune_id')
  final int? communeId;
  @override
  @JsonKey(name: 'postal_code')
  final String? postalCode;
  @override
  final String? profession;
  @override
  final String? locale;
  @override
  final String? role;
  @override
  @JsonKey(name: 'account_status')
  final String? accountStatus;
  @override
  @JsonKey(name: 'account_type')
  final String? accountType;
  @override
  @JsonKey(name: 'is_institution')
  final bool isInstitution;
  @override
  final ProfileEntityRefModel? entity;
  @override
  @JsonKey(name: 'kyc_status')
  final String kycStatus;
  @override
  @JsonKey(name: 'commercial_register_status')
  final String? commercialRegisterStatus;
  @override
  @JsonKey(name: 'has_commerce_register')
  final bool hasCommerceRegister;
  @override
  @JsonKey(name: 'email_verified')
  final bool emailVerified;
  @override
  @JsonKey(name: 'phone_verified')
  final bool phoneVerified;
  @override
  @JsonKey(name: 'secret_question')
  final String? secretQuestion;
  @override
  @JsonKey(name: 'has_secret_question')
  final bool hasSecretQuestion;
  @override
  @JsonKey(name: 'is_kyc_complete')
  final bool isKycComplete;
  @override
  @JsonKey(name: 'can_bid')
  final bool canBid;
  @override
  @JsonKey(name: 'is_premium')
  final bool isPremium;
  @override
  @JsonKey(name: 'is_blacklisted')
  final bool isBlacklisted;

  @override
  String toString() {
    return 'ProfileModel(id: $id, ninMasked: $ninMasked, name: $name, firstNameAr: $firstNameAr, lastNameAr: $lastNameAr, firstNameFr: $firstNameFr, lastNameFr: $lastNameFr, email: $email, phone: $phone, address: $address, communeId: $communeId, postalCode: $postalCode, profession: $profession, locale: $locale, role: $role, accountStatus: $accountStatus, accountType: $accountType, isInstitution: $isInstitution, entity: $entity, kycStatus: $kycStatus, commercialRegisterStatus: $commercialRegisterStatus, hasCommerceRegister: $hasCommerceRegister, emailVerified: $emailVerified, phoneVerified: $phoneVerified, secretQuestion: $secretQuestion, hasSecretQuestion: $hasSecretQuestion, isKycComplete: $isKycComplete, canBid: $canBid, isPremium: $isPremium, isBlacklisted: $isBlacklisted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.ninMasked, ninMasked) ||
                other.ninMasked == ninMasked) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.firstNameAr, firstNameAr) ||
                other.firstNameAr == firstNameAr) &&
            (identical(other.lastNameAr, lastNameAr) ||
                other.lastNameAr == lastNameAr) &&
            (identical(other.firstNameFr, firstNameFr) ||
                other.firstNameFr == firstNameFr) &&
            (identical(other.lastNameFr, lastNameFr) ||
                other.lastNameFr == lastNameFr) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.communeId, communeId) ||
                other.communeId == communeId) &&
            (identical(other.postalCode, postalCode) ||
                other.postalCode == postalCode) &&
            (identical(other.profession, profession) ||
                other.profession == profession) &&
            (identical(other.locale, locale) || other.locale == locale) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.accountStatus, accountStatus) ||
                other.accountStatus == accountStatus) &&
            (identical(other.accountType, accountType) ||
                other.accountType == accountType) &&
            (identical(other.isInstitution, isInstitution) ||
                other.isInstitution == isInstitution) &&
            (identical(other.entity, entity) || other.entity == entity) &&
            (identical(other.kycStatus, kycStatus) ||
                other.kycStatus == kycStatus) &&
            (identical(
                  other.commercialRegisterStatus,
                  commercialRegisterStatus,
                ) ||
                other.commercialRegisterStatus == commercialRegisterStatus) &&
            (identical(other.hasCommerceRegister, hasCommerceRegister) ||
                other.hasCommerceRegister == hasCommerceRegister) &&
            (identical(other.emailVerified, emailVerified) ||
                other.emailVerified == emailVerified) &&
            (identical(other.phoneVerified, phoneVerified) ||
                other.phoneVerified == phoneVerified) &&
            (identical(other.secretQuestion, secretQuestion) ||
                other.secretQuestion == secretQuestion) &&
            (identical(other.hasSecretQuestion, hasSecretQuestion) ||
                other.hasSecretQuestion == hasSecretQuestion) &&
            (identical(other.isKycComplete, isKycComplete) ||
                other.isKycComplete == isKycComplete) &&
            (identical(other.canBid, canBid) || other.canBid == canBid) &&
            (identical(other.isPremium, isPremium) ||
                other.isPremium == isPremium) &&
            (identical(other.isBlacklisted, isBlacklisted) ||
                other.isBlacklisted == isBlacklisted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    id,
    ninMasked,
    name,
    firstNameAr,
    lastNameAr,
    firstNameFr,
    lastNameFr,
    email,
    phone,
    address,
    communeId,
    postalCode,
    profession,
    locale,
    role,
    accountStatus,
    accountType,
    isInstitution,
    entity,
    kycStatus,
    commercialRegisterStatus,
    hasCommerceRegister,
    emailVerified,
    phoneVerified,
    secretQuestion,
    hasSecretQuestion,
    isKycComplete,
    canBid,
    isPremium,
    isBlacklisted,
  ]);

  /// Create a copy of ProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileModelImplCopyWith<_$ProfileModelImpl> get copyWith =>
      __$$ProfileModelImplCopyWithImpl<_$ProfileModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileModelImplToJson(this);
  }
}

abstract class _ProfileModel extends ProfileModel {
  const factory _ProfileModel({
    required final String id,
    @JsonKey(name: 'nin_masked') final String? ninMasked,
    final String? name,
    @JsonKey(name: 'first_name_ar') final String? firstNameAr,
    @JsonKey(name: 'last_name_ar') final String? lastNameAr,
    @JsonKey(name: 'first_name_fr') final String? firstNameFr,
    @JsonKey(name: 'last_name_fr') final String? lastNameFr,
    final String? email,
    final String? phone,
    final String? address,
    @JsonKey(name: 'commune_id') final int? communeId,
    @JsonKey(name: 'postal_code') final String? postalCode,
    final String? profession,
    final String? locale,
    final String? role,
    @JsonKey(name: 'account_status') final String? accountStatus,
    @JsonKey(name: 'account_type') final String? accountType,
    @JsonKey(name: 'is_institution') final bool isInstitution,
    final ProfileEntityRefModel? entity,
    @JsonKey(name: 'kyc_status') final String kycStatus,
    @JsonKey(name: 'commercial_register_status')
    final String? commercialRegisterStatus,
    @JsonKey(name: 'has_commerce_register') final bool hasCommerceRegister,
    @JsonKey(name: 'email_verified') final bool emailVerified,
    @JsonKey(name: 'phone_verified') final bool phoneVerified,
    @JsonKey(name: 'secret_question') final String? secretQuestion,
    @JsonKey(name: 'has_secret_question') final bool hasSecretQuestion,
    @JsonKey(name: 'is_kyc_complete') final bool isKycComplete,
    @JsonKey(name: 'can_bid') final bool canBid,
    @JsonKey(name: 'is_premium') final bool isPremium,
    @JsonKey(name: 'is_blacklisted') final bool isBlacklisted,
  }) = _$ProfileModelImpl;
  const _ProfileModel._() : super._();

  factory _ProfileModel.fromJson(Map<String, dynamic> json) =
      _$ProfileModelImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'nin_masked')
  String? get ninMasked;
  @override
  String? get name;
  @override
  @JsonKey(name: 'first_name_ar')
  String? get firstNameAr;
  @override
  @JsonKey(name: 'last_name_ar')
  String? get lastNameAr;
  @override
  @JsonKey(name: 'first_name_fr')
  String? get firstNameFr;
  @override
  @JsonKey(name: 'last_name_fr')
  String? get lastNameFr;
  @override
  String? get email;
  @override
  String? get phone;
  @override
  String? get address;
  @override
  @JsonKey(name: 'commune_id')
  int? get communeId;
  @override
  @JsonKey(name: 'postal_code')
  String? get postalCode;
  @override
  String? get profession;
  @override
  String? get locale;
  @override
  String? get role;
  @override
  @JsonKey(name: 'account_status')
  String? get accountStatus;
  @override
  @JsonKey(name: 'account_type')
  String? get accountType;
  @override
  @JsonKey(name: 'is_institution')
  bool get isInstitution;
  @override
  ProfileEntityRefModel? get entity;
  @override
  @JsonKey(name: 'kyc_status')
  String get kycStatus;
  @override
  @JsonKey(name: 'commercial_register_status')
  String? get commercialRegisterStatus;
  @override
  @JsonKey(name: 'has_commerce_register')
  bool get hasCommerceRegister;
  @override
  @JsonKey(name: 'email_verified')
  bool get emailVerified;
  @override
  @JsonKey(name: 'phone_verified')
  bool get phoneVerified;
  @override
  @JsonKey(name: 'secret_question')
  String? get secretQuestion;
  @override
  @JsonKey(name: 'has_secret_question')
  bool get hasSecretQuestion;
  @override
  @JsonKey(name: 'is_kyc_complete')
  bool get isKycComplete;
  @override
  @JsonKey(name: 'can_bid')
  bool get canBid;
  @override
  @JsonKey(name: 'is_premium')
  bool get isPremium;
  @override
  @JsonKey(name: 'is_blacklisted')
  bool get isBlacklisted;

  /// Create a copy of ProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileModelImplCopyWith<_$ProfileModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
