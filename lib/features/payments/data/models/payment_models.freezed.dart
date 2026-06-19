// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PaymentInitModel _$PaymentInitModelFromJson(Map<String, dynamic> json) {
  return _PaymentInitModel.fromJson(json);
}

/// @nodoc
mixin _$PaymentInitModel {
  @JsonKey(name: 'redirect_url')
  String? get redirectUrl => throw _privateConstructorUsedError;
  String? get ref => throw _privateConstructorUsedError;

  /// Serializes this PaymentInitModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentInitModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentInitModelCopyWith<PaymentInitModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentInitModelCopyWith<$Res> {
  factory $PaymentInitModelCopyWith(
    PaymentInitModel value,
    $Res Function(PaymentInitModel) then,
  ) = _$PaymentInitModelCopyWithImpl<$Res, PaymentInitModel>;
  @useResult
  $Res call({@JsonKey(name: 'redirect_url') String? redirectUrl, String? ref});
}

/// @nodoc
class _$PaymentInitModelCopyWithImpl<$Res, $Val extends PaymentInitModel>
    implements $PaymentInitModelCopyWith<$Res> {
  _$PaymentInitModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentInitModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? redirectUrl = freezed, Object? ref = freezed}) {
    return _then(
      _value.copyWith(
            redirectUrl: freezed == redirectUrl
                ? _value.redirectUrl
                : redirectUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            ref: freezed == ref
                ? _value.ref
                : ref // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PaymentInitModelImplCopyWith<$Res>
    implements $PaymentInitModelCopyWith<$Res> {
  factory _$$PaymentInitModelImplCopyWith(
    _$PaymentInitModelImpl value,
    $Res Function(_$PaymentInitModelImpl) then,
  ) = __$$PaymentInitModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'redirect_url') String? redirectUrl, String? ref});
}

/// @nodoc
class __$$PaymentInitModelImplCopyWithImpl<$Res>
    extends _$PaymentInitModelCopyWithImpl<$Res, _$PaymentInitModelImpl>
    implements _$$PaymentInitModelImplCopyWith<$Res> {
  __$$PaymentInitModelImplCopyWithImpl(
    _$PaymentInitModelImpl _value,
    $Res Function(_$PaymentInitModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PaymentInitModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? redirectUrl = freezed, Object? ref = freezed}) {
    return _then(
      _$PaymentInitModelImpl(
        redirectUrl: freezed == redirectUrl
            ? _value.redirectUrl
            : redirectUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        ref: freezed == ref
            ? _value.ref
            : ref // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentInitModelImpl extends _PaymentInitModel {
  const _$PaymentInitModelImpl({
    @JsonKey(name: 'redirect_url') this.redirectUrl,
    this.ref,
  }) : super._();

  factory _$PaymentInitModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentInitModelImplFromJson(json);

  @override
  @JsonKey(name: 'redirect_url')
  final String? redirectUrl;
  @override
  final String? ref;

  @override
  String toString() {
    return 'PaymentInitModel(redirectUrl: $redirectUrl, ref: $ref)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentInitModelImpl &&
            (identical(other.redirectUrl, redirectUrl) ||
                other.redirectUrl == redirectUrl) &&
            (identical(other.ref, ref) || other.ref == ref));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, redirectUrl, ref);

  /// Create a copy of PaymentInitModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentInitModelImplCopyWith<_$PaymentInitModelImpl> get copyWith =>
      __$$PaymentInitModelImplCopyWithImpl<_$PaymentInitModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentInitModelImplToJson(this);
  }
}

abstract class _PaymentInitModel extends PaymentInitModel {
  const factory _PaymentInitModel({
    @JsonKey(name: 'redirect_url') final String? redirectUrl,
    final String? ref,
  }) = _$PaymentInitModelImpl;
  const _PaymentInitModel._() : super._();

  factory _PaymentInitModel.fromJson(Map<String, dynamic> json) =
      _$PaymentInitModelImpl.fromJson;

  @override
  @JsonKey(name: 'redirect_url')
  String? get redirectUrl;
  @override
  String? get ref;

  /// Create a copy of PaymentInitModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentInitModelImplCopyWith<_$PaymentInitModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PaymentStatusModel _$PaymentStatusModelFromJson(Map<String, dynamic> json) {
  return _PaymentStatusModel.fromJson(json);
}

/// @nodoc
mixin _$PaymentStatusModel {
  String? get ref => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_type')
  String? get paymentType => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_confirmed')
  bool get isConfirmed => throw _privateConstructorUsedError;

  /// Serializes this PaymentStatusModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentStatusModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentStatusModelCopyWith<PaymentStatusModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentStatusModelCopyWith<$Res> {
  factory $PaymentStatusModelCopyWith(
    PaymentStatusModel value,
    $Res Function(PaymentStatusModel) then,
  ) = _$PaymentStatusModelCopyWithImpl<$Res, PaymentStatusModel>;
  @useResult
  $Res call({
    String? ref,
    @JsonKey(name: 'payment_type') String? paymentType,
    String? status,
    @JsonKey(name: 'is_confirmed') bool isConfirmed,
  });
}

/// @nodoc
class _$PaymentStatusModelCopyWithImpl<$Res, $Val extends PaymentStatusModel>
    implements $PaymentStatusModelCopyWith<$Res> {
  _$PaymentStatusModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentStatusModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ref = freezed,
    Object? paymentType = freezed,
    Object? status = freezed,
    Object? isConfirmed = null,
  }) {
    return _then(
      _value.copyWith(
            ref: freezed == ref
                ? _value.ref
                : ref // ignore: cast_nullable_to_non_nullable
                      as String?,
            paymentType: freezed == paymentType
                ? _value.paymentType
                : paymentType // ignore: cast_nullable_to_non_nullable
                      as String?,
            status: freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String?,
            isConfirmed: null == isConfirmed
                ? _value.isConfirmed
                : isConfirmed // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PaymentStatusModelImplCopyWith<$Res>
    implements $PaymentStatusModelCopyWith<$Res> {
  factory _$$PaymentStatusModelImplCopyWith(
    _$PaymentStatusModelImpl value,
    $Res Function(_$PaymentStatusModelImpl) then,
  ) = __$$PaymentStatusModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? ref,
    @JsonKey(name: 'payment_type') String? paymentType,
    String? status,
    @JsonKey(name: 'is_confirmed') bool isConfirmed,
  });
}

/// @nodoc
class __$$PaymentStatusModelImplCopyWithImpl<$Res>
    extends _$PaymentStatusModelCopyWithImpl<$Res, _$PaymentStatusModelImpl>
    implements _$$PaymentStatusModelImplCopyWith<$Res> {
  __$$PaymentStatusModelImplCopyWithImpl(
    _$PaymentStatusModelImpl _value,
    $Res Function(_$PaymentStatusModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PaymentStatusModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ref = freezed,
    Object? paymentType = freezed,
    Object? status = freezed,
    Object? isConfirmed = null,
  }) {
    return _then(
      _$PaymentStatusModelImpl(
        ref: freezed == ref
            ? _value.ref
            : ref // ignore: cast_nullable_to_non_nullable
                  as String?,
        paymentType: freezed == paymentType
            ? _value.paymentType
            : paymentType // ignore: cast_nullable_to_non_nullable
                  as String?,
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String?,
        isConfirmed: null == isConfirmed
            ? _value.isConfirmed
            : isConfirmed // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentStatusModelImpl extends _PaymentStatusModel {
  const _$PaymentStatusModelImpl({
    this.ref,
    @JsonKey(name: 'payment_type') this.paymentType,
    this.status,
    @JsonKey(name: 'is_confirmed') this.isConfirmed = false,
  }) : super._();

  factory _$PaymentStatusModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentStatusModelImplFromJson(json);

  @override
  final String? ref;
  @override
  @JsonKey(name: 'payment_type')
  final String? paymentType;
  @override
  final String? status;
  @override
  @JsonKey(name: 'is_confirmed')
  final bool isConfirmed;

  @override
  String toString() {
    return 'PaymentStatusModel(ref: $ref, paymentType: $paymentType, status: $status, isConfirmed: $isConfirmed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentStatusModelImpl &&
            (identical(other.ref, ref) || other.ref == ref) &&
            (identical(other.paymentType, paymentType) ||
                other.paymentType == paymentType) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isConfirmed, isConfirmed) ||
                other.isConfirmed == isConfirmed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, ref, paymentType, status, isConfirmed);

  /// Create a copy of PaymentStatusModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentStatusModelImplCopyWith<_$PaymentStatusModelImpl> get copyWith =>
      __$$PaymentStatusModelImplCopyWithImpl<_$PaymentStatusModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentStatusModelImplToJson(this);
  }
}

abstract class _PaymentStatusModel extends PaymentStatusModel {
  const factory _PaymentStatusModel({
    final String? ref,
    @JsonKey(name: 'payment_type') final String? paymentType,
    final String? status,
    @JsonKey(name: 'is_confirmed') final bool isConfirmed,
  }) = _$PaymentStatusModelImpl;
  const _PaymentStatusModel._() : super._();

  factory _PaymentStatusModel.fromJson(Map<String, dynamic> json) =
      _$PaymentStatusModelImpl.fromJson;

  @override
  String? get ref;
  @override
  @JsonKey(name: 'payment_type')
  String? get paymentType;
  @override
  String? get status;
  @override
  @JsonKey(name: 'is_confirmed')
  bool get isConfirmed;

  /// Create a copy of PaymentStatusModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentStatusModelImplCopyWith<_$PaymentStatusModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
