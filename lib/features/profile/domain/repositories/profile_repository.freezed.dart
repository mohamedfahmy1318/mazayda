// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_repository.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$UpdateProfileParams {
  String? get phone => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get postalCode => throw _privateConstructorUsedError;
  String? get profession => throw _privateConstructorUsedError;

  /// Create a copy of UpdateProfileParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateProfileParamsCopyWith<UpdateProfileParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateProfileParamsCopyWith<$Res> {
  factory $UpdateProfileParamsCopyWith(
    UpdateProfileParams value,
    $Res Function(UpdateProfileParams) then,
  ) = _$UpdateProfileParamsCopyWithImpl<$Res, UpdateProfileParams>;
  @useResult
  $Res call({
    String? phone,
    String? email,
    String? address,
    String? postalCode,
    String? profession,
  });
}

/// @nodoc
class _$UpdateProfileParamsCopyWithImpl<$Res, $Val extends UpdateProfileParams>
    implements $UpdateProfileParamsCopyWith<$Res> {
  _$UpdateProfileParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateProfileParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = freezed,
    Object? email = freezed,
    Object? address = freezed,
    Object? postalCode = freezed,
    Object? profession = freezed,
  }) {
    return _then(
      _value.copyWith(
            phone: freezed == phone
                ? _value.phone
                : phone // ignore: cast_nullable_to_non_nullable
                      as String?,
            email: freezed == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
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
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UpdateProfileParamsImplCopyWith<$Res>
    implements $UpdateProfileParamsCopyWith<$Res> {
  factory _$$UpdateProfileParamsImplCopyWith(
    _$UpdateProfileParamsImpl value,
    $Res Function(_$UpdateProfileParamsImpl) then,
  ) = __$$UpdateProfileParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? phone,
    String? email,
    String? address,
    String? postalCode,
    String? profession,
  });
}

/// @nodoc
class __$$UpdateProfileParamsImplCopyWithImpl<$Res>
    extends _$UpdateProfileParamsCopyWithImpl<$Res, _$UpdateProfileParamsImpl>
    implements _$$UpdateProfileParamsImplCopyWith<$Res> {
  __$$UpdateProfileParamsImplCopyWithImpl(
    _$UpdateProfileParamsImpl _value,
    $Res Function(_$UpdateProfileParamsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UpdateProfileParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = freezed,
    Object? email = freezed,
    Object? address = freezed,
    Object? postalCode = freezed,
    Object? profession = freezed,
  }) {
    return _then(
      _$UpdateProfileParamsImpl(
        phone: freezed == phone
            ? _value.phone
            : phone // ignore: cast_nullable_to_non_nullable
                  as String?,
        email: freezed == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
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
      ),
    );
  }
}

/// @nodoc

class _$UpdateProfileParamsImpl implements _UpdateProfileParams {
  const _$UpdateProfileParamsImpl({
    this.phone,
    this.email,
    this.address,
    this.postalCode,
    this.profession,
  });

  @override
  final String? phone;
  @override
  final String? email;
  @override
  final String? address;
  @override
  final String? postalCode;
  @override
  final String? profession;

  @override
  String toString() {
    return 'UpdateProfileParams(phone: $phone, email: $email, address: $address, postalCode: $postalCode, profession: $profession)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProfileParamsImpl &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.postalCode, postalCode) ||
                other.postalCode == postalCode) &&
            (identical(other.profession, profession) ||
                other.profession == profession));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, phone, email, address, postalCode, profession);

  /// Create a copy of UpdateProfileParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProfileParamsImplCopyWith<_$UpdateProfileParamsImpl> get copyWith =>
      __$$UpdateProfileParamsImplCopyWithImpl<_$UpdateProfileParamsImpl>(
        this,
        _$identity,
      );
}

abstract class _UpdateProfileParams implements UpdateProfileParams {
  const factory _UpdateProfileParams({
    final String? phone,
    final String? email,
    final String? address,
    final String? postalCode,
    final String? profession,
  }) = _$UpdateProfileParamsImpl;

  @override
  String? get phone;
  @override
  String? get email;
  @override
  String? get address;
  @override
  String? get postalCode;
  @override
  String? get profession;

  /// Create a copy of UpdateProfileParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateProfileParamsImplCopyWith<_$UpdateProfileParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
