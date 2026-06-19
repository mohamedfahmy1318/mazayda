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

ProfileModel _$ProfileModelFromJson(Map<String, dynamic> json) {
  return _ProfileModel.fromJson(json);
}

/// @nodoc
mixin _$ProfileModel {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'nin_masked')
  String? get ninMasked => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name_ar')
  String? get firstNameAr => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name_ar')
  String? get lastNameAr => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'postal_code')
  String? get postalCode => throw _privateConstructorUsedError;
  String? get profession => throw _privateConstructorUsedError;
  @JsonKey(name: 'wilaya_name')
  String? get wilayaName => throw _privateConstructorUsedError;
  @JsonKey(name: 'kyc_status')
  String get kycStatus => throw _privateConstructorUsedError;

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
    @JsonKey(name: 'first_name_ar') String? firstNameAr,
    @JsonKey(name: 'last_name_ar') String? lastNameAr,
    String? email,
    String? phone,
    String? address,
    @JsonKey(name: 'postal_code') String? postalCode,
    String? profession,
    @JsonKey(name: 'wilaya_name') String? wilayaName,
    @JsonKey(name: 'kyc_status') String kycStatus,
  });
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
    Object? firstNameAr = freezed,
    Object? lastNameAr = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? address = freezed,
    Object? postalCode = freezed,
    Object? profession = freezed,
    Object? wilayaName = freezed,
    Object? kycStatus = null,
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
            address: freezed == address
                ? _value.address
                : address // ignore: cast_nullable_to_non_nullable
                      as String?,
            postalCode: freezed == postalCode
                ? _value.postalCode
                : postalCode // ignore: cast_nullable_to_non_nullable
                      as String?,
            profession: freezed == profession
                ? _value.profession
                : profession // ignore: cast_nullable_to_non_nullable
                      as String?,
            wilayaName: freezed == wilayaName
                ? _value.wilayaName
                : wilayaName // ignore: cast_nullable_to_non_nullable
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
    @JsonKey(name: 'first_name_ar') String? firstNameAr,
    @JsonKey(name: 'last_name_ar') String? lastNameAr,
    String? email,
    String? phone,
    String? address,
    @JsonKey(name: 'postal_code') String? postalCode,
    String? profession,
    @JsonKey(name: 'wilaya_name') String? wilayaName,
    @JsonKey(name: 'kyc_status') String kycStatus,
  });
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
    Object? firstNameAr = freezed,
    Object? lastNameAr = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? address = freezed,
    Object? postalCode = freezed,
    Object? profession = freezed,
    Object? wilayaName = freezed,
    Object? kycStatus = null,
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
        address: freezed == address
            ? _value.address
            : address // ignore: cast_nullable_to_non_nullable
                  as String?,
        postalCode: freezed == postalCode
            ? _value.postalCode
            : postalCode // ignore: cast_nullable_to_non_nullable
                  as String?,
        profession: freezed == profession
            ? _value.profession
            : profession // ignore: cast_nullable_to_non_nullable
                  as String?,
        wilayaName: freezed == wilayaName
            ? _value.wilayaName
            : wilayaName // ignore: cast_nullable_to_non_nullable
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
class _$ProfileModelImpl extends _ProfileModel {
  const _$ProfileModelImpl({
    required this.id,
    @JsonKey(name: 'nin_masked') this.ninMasked,
    @JsonKey(name: 'first_name_ar') this.firstNameAr,
    @JsonKey(name: 'last_name_ar') this.lastNameAr,
    this.email,
    this.phone,
    this.address,
    @JsonKey(name: 'postal_code') this.postalCode,
    this.profession,
    @JsonKey(name: 'wilaya_name') this.wilayaName,
    @JsonKey(name: 'kyc_status') this.kycStatus = 'PENDING',
  }) : super._();

  factory _$ProfileModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileModelImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'nin_masked')
  final String? ninMasked;
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
  final String? address;
  @override
  @JsonKey(name: 'postal_code')
  final String? postalCode;
  @override
  final String? profession;
  @override
  @JsonKey(name: 'wilaya_name')
  final String? wilayaName;
  @override
  @JsonKey(name: 'kyc_status')
  final String kycStatus;

  @override
  String toString() {
    return 'ProfileModel(id: $id, ninMasked: $ninMasked, firstNameAr: $firstNameAr, lastNameAr: $lastNameAr, email: $email, phone: $phone, address: $address, postalCode: $postalCode, profession: $profession, wilayaName: $wilayaName, kycStatus: $kycStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.ninMasked, ninMasked) ||
                other.ninMasked == ninMasked) &&
            (identical(other.firstNameAr, firstNameAr) ||
                other.firstNameAr == firstNameAr) &&
            (identical(other.lastNameAr, lastNameAr) ||
                other.lastNameAr == lastNameAr) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.postalCode, postalCode) ||
                other.postalCode == postalCode) &&
            (identical(other.profession, profession) ||
                other.profession == profession) &&
            (identical(other.wilayaName, wilayaName) ||
                other.wilayaName == wilayaName) &&
            (identical(other.kycStatus, kycStatus) ||
                other.kycStatus == kycStatus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    ninMasked,
    firstNameAr,
    lastNameAr,
    email,
    phone,
    address,
    postalCode,
    profession,
    wilayaName,
    kycStatus,
  );

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
    @JsonKey(name: 'first_name_ar') final String? firstNameAr,
    @JsonKey(name: 'last_name_ar') final String? lastNameAr,
    final String? email,
    final String? phone,
    final String? address,
    @JsonKey(name: 'postal_code') final String? postalCode,
    final String? profession,
    @JsonKey(name: 'wilaya_name') final String? wilayaName,
    @JsonKey(name: 'kyc_status') final String kycStatus,
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
  String? get address;
  @override
  @JsonKey(name: 'postal_code')
  String? get postalCode;
  @override
  String? get profession;
  @override
  @JsonKey(name: 'wilaya_name')
  String? get wilayaName;
  @override
  @JsonKey(name: 'kyc_status')
  String get kycStatus;

  /// Create a copy of ProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileModelImplCopyWith<_$ProfileModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
