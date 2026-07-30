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
  String? get id => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  MoneyModel? get amount => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'gateway_ref')
  String? get gatewayRef => throw _privateConstructorUsedError;
  @JsonKey(name: 'due_at')
  String? get dueAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'confirmed_at')
  String? get confirmedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;

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
    String? id,
    String? type,
    MoneyModel? amount,
    String? status,
    @JsonKey(name: 'gateway_ref') String? gatewayRef,
    @JsonKey(name: 'due_at') String? dueAt,
    @JsonKey(name: 'confirmed_at') String? confirmedAt,
    @JsonKey(name: 'created_at') String? createdAt,
  });

  $MoneyModelCopyWith<$Res>? get amount;
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
    Object? id = freezed,
    Object? type = freezed,
    Object? amount = freezed,
    Object? status = freezed,
    Object? gatewayRef = freezed,
    Object? dueAt = freezed,
    Object? confirmedAt = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            type: freezed == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as String?,
            amount: freezed == amount
                ? _value.amount
                : amount // ignore: cast_nullable_to_non_nullable
                      as MoneyModel?,
            status: freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String?,
            gatewayRef: freezed == gatewayRef
                ? _value.gatewayRef
                : gatewayRef // ignore: cast_nullable_to_non_nullable
                      as String?,
            dueAt: freezed == dueAt
                ? _value.dueAt
                : dueAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            confirmedAt: freezed == confirmedAt
                ? _value.confirmedAt
                : confirmedAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }

  /// Create a copy of PaymentStatusModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyModelCopyWith<$Res>? get amount {
    if (_value.amount == null) {
      return null;
    }

    return $MoneyModelCopyWith<$Res>(_value.amount!, (value) {
      return _then(_value.copyWith(amount: value) as $Val);
    });
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
    String? id,
    String? type,
    MoneyModel? amount,
    String? status,
    @JsonKey(name: 'gateway_ref') String? gatewayRef,
    @JsonKey(name: 'due_at') String? dueAt,
    @JsonKey(name: 'confirmed_at') String? confirmedAt,
    @JsonKey(name: 'created_at') String? createdAt,
  });

  @override
  $MoneyModelCopyWith<$Res>? get amount;
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
    Object? id = freezed,
    Object? type = freezed,
    Object? amount = freezed,
    Object? status = freezed,
    Object? gatewayRef = freezed,
    Object? dueAt = freezed,
    Object? confirmedAt = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(
      _$PaymentStatusModelImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        type: freezed == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String?,
        amount: freezed == amount
            ? _value.amount
            : amount // ignore: cast_nullable_to_non_nullable
                  as MoneyModel?,
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String?,
        gatewayRef: freezed == gatewayRef
            ? _value.gatewayRef
            : gatewayRef // ignore: cast_nullable_to_non_nullable
                  as String?,
        dueAt: freezed == dueAt
            ? _value.dueAt
            : dueAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        confirmedAt: freezed == confirmedAt
            ? _value.confirmedAt
            : confirmedAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentStatusModelImpl extends _PaymentStatusModel {
  const _$PaymentStatusModelImpl({
    this.id,
    this.type,
    this.amount,
    this.status,
    @JsonKey(name: 'gateway_ref') this.gatewayRef,
    @JsonKey(name: 'due_at') this.dueAt,
    @JsonKey(name: 'confirmed_at') this.confirmedAt,
    @JsonKey(name: 'created_at') this.createdAt,
  }) : super._();

  factory _$PaymentStatusModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentStatusModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String? type;
  @override
  final MoneyModel? amount;
  @override
  final String? status;
  @override
  @JsonKey(name: 'gateway_ref')
  final String? gatewayRef;
  @override
  @JsonKey(name: 'due_at')
  final String? dueAt;
  @override
  @JsonKey(name: 'confirmed_at')
  final String? confirmedAt;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;

  @override
  String toString() {
    return 'PaymentStatusModel(id: $id, type: $type, amount: $amount, status: $status, gatewayRef: $gatewayRef, dueAt: $dueAt, confirmedAt: $confirmedAt, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentStatusModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.gatewayRef, gatewayRef) ||
                other.gatewayRef == gatewayRef) &&
            (identical(other.dueAt, dueAt) || other.dueAt == dueAt) &&
            (identical(other.confirmedAt, confirmedAt) ||
                other.confirmedAt == confirmedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    type,
    amount,
    status,
    gatewayRef,
    dueAt,
    confirmedAt,
    createdAt,
  );

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
    final String? id,
    final String? type,
    final MoneyModel? amount,
    final String? status,
    @JsonKey(name: 'gateway_ref') final String? gatewayRef,
    @JsonKey(name: 'due_at') final String? dueAt,
    @JsonKey(name: 'confirmed_at') final String? confirmedAt,
    @JsonKey(name: 'created_at') final String? createdAt,
  }) = _$PaymentStatusModelImpl;
  const _PaymentStatusModel._() : super._();

  factory _PaymentStatusModel.fromJson(Map<String, dynamic> json) =
      _$PaymentStatusModelImpl.fromJson;

  @override
  String? get id;
  @override
  String? get type;
  @override
  MoneyModel? get amount;
  @override
  String? get status;
  @override
  @JsonKey(name: 'gateway_ref')
  String? get gatewayRef;
  @override
  @JsonKey(name: 'due_at')
  String? get dueAt;
  @override
  @JsonKey(name: 'confirmed_at')
  String? get confirmedAt;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;

  /// Create a copy of PaymentStatusModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentStatusModelImplCopyWith<_$PaymentStatusModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PaymentStatusResponseModel _$PaymentStatusResponseModelFromJson(
  Map<String, dynamic> json,
) {
  return _PaymentStatusResponseModel.fromJson(json);
}

/// @nodoc
mixin _$PaymentStatusResponseModel {
  /// الـ ref اللي إحنا بعتناه (gateway_ref أو payment id).
  String? get ref => throw _privateConstructorUsedError;

  /// المرجع الرسمي من البوابة — نوحّد عليه (BE-13).
  @JsonKey(name: 'gateway_ref')
  String? get gatewayRef => throw _privateConstructorUsedError;

  /// كل الصفوف مأكّدة — حساب السيرفر، أدقّ من إعادة اشتقاقه عندنا.
  bool? get confirmed => throw _privateConstructorUsedError;
  List<PaymentStatusModel> get payments => throw _privateConstructorUsedError;

  /// Serializes this PaymentStatusResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentStatusResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentStatusResponseModelCopyWith<PaymentStatusResponseModel>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentStatusResponseModelCopyWith<$Res> {
  factory $PaymentStatusResponseModelCopyWith(
    PaymentStatusResponseModel value,
    $Res Function(PaymentStatusResponseModel) then,
  ) =
      _$PaymentStatusResponseModelCopyWithImpl<
        $Res,
        PaymentStatusResponseModel
      >;
  @useResult
  $Res call({
    String? ref,
    @JsonKey(name: 'gateway_ref') String? gatewayRef,
    bool? confirmed,
    List<PaymentStatusModel> payments,
  });
}

/// @nodoc
class _$PaymentStatusResponseModelCopyWithImpl<
  $Res,
  $Val extends PaymentStatusResponseModel
>
    implements $PaymentStatusResponseModelCopyWith<$Res> {
  _$PaymentStatusResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentStatusResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ref = freezed,
    Object? gatewayRef = freezed,
    Object? confirmed = freezed,
    Object? payments = null,
  }) {
    return _then(
      _value.copyWith(
            ref: freezed == ref
                ? _value.ref
                : ref // ignore: cast_nullable_to_non_nullable
                      as String?,
            gatewayRef: freezed == gatewayRef
                ? _value.gatewayRef
                : gatewayRef // ignore: cast_nullable_to_non_nullable
                      as String?,
            confirmed: freezed == confirmed
                ? _value.confirmed
                : confirmed // ignore: cast_nullable_to_non_nullable
                      as bool?,
            payments: null == payments
                ? _value.payments
                : payments // ignore: cast_nullable_to_non_nullable
                      as List<PaymentStatusModel>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PaymentStatusResponseModelImplCopyWith<$Res>
    implements $PaymentStatusResponseModelCopyWith<$Res> {
  factory _$$PaymentStatusResponseModelImplCopyWith(
    _$PaymentStatusResponseModelImpl value,
    $Res Function(_$PaymentStatusResponseModelImpl) then,
  ) = __$$PaymentStatusResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? ref,
    @JsonKey(name: 'gateway_ref') String? gatewayRef,
    bool? confirmed,
    List<PaymentStatusModel> payments,
  });
}

/// @nodoc
class __$$PaymentStatusResponseModelImplCopyWithImpl<$Res>
    extends
        _$PaymentStatusResponseModelCopyWithImpl<
          $Res,
          _$PaymentStatusResponseModelImpl
        >
    implements _$$PaymentStatusResponseModelImplCopyWith<$Res> {
  __$$PaymentStatusResponseModelImplCopyWithImpl(
    _$PaymentStatusResponseModelImpl _value,
    $Res Function(_$PaymentStatusResponseModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PaymentStatusResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ref = freezed,
    Object? gatewayRef = freezed,
    Object? confirmed = freezed,
    Object? payments = null,
  }) {
    return _then(
      _$PaymentStatusResponseModelImpl(
        ref: freezed == ref
            ? _value.ref
            : ref // ignore: cast_nullable_to_non_nullable
                  as String?,
        gatewayRef: freezed == gatewayRef
            ? _value.gatewayRef
            : gatewayRef // ignore: cast_nullable_to_non_nullable
                  as String?,
        confirmed: freezed == confirmed
            ? _value.confirmed
            : confirmed // ignore: cast_nullable_to_non_nullable
                  as bool?,
        payments: null == payments
            ? _value._payments
            : payments // ignore: cast_nullable_to_non_nullable
                  as List<PaymentStatusModel>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentStatusResponseModelImpl extends _PaymentStatusResponseModel {
  const _$PaymentStatusResponseModelImpl({
    this.ref,
    @JsonKey(name: 'gateway_ref') this.gatewayRef,
    this.confirmed,
    final List<PaymentStatusModel> payments = const <PaymentStatusModel>[],
  }) : _payments = payments,
       super._();

  factory _$PaymentStatusResponseModelImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$PaymentStatusResponseModelImplFromJson(json);

  /// الـ ref اللي إحنا بعتناه (gateway_ref أو payment id).
  @override
  final String? ref;

  /// المرجع الرسمي من البوابة — نوحّد عليه (BE-13).
  @override
  @JsonKey(name: 'gateway_ref')
  final String? gatewayRef;

  /// كل الصفوف مأكّدة — حساب السيرفر، أدقّ من إعادة اشتقاقه عندنا.
  @override
  final bool? confirmed;
  final List<PaymentStatusModel> _payments;
  @override
  @JsonKey()
  List<PaymentStatusModel> get payments {
    if (_payments is EqualUnmodifiableListView) return _payments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_payments);
  }

  @override
  String toString() {
    return 'PaymentStatusResponseModel(ref: $ref, gatewayRef: $gatewayRef, confirmed: $confirmed, payments: $payments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentStatusResponseModelImpl &&
            (identical(other.ref, ref) || other.ref == ref) &&
            (identical(other.gatewayRef, gatewayRef) ||
                other.gatewayRef == gatewayRef) &&
            (identical(other.confirmed, confirmed) ||
                other.confirmed == confirmed) &&
            const DeepCollectionEquality().equals(other._payments, _payments));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    ref,
    gatewayRef,
    confirmed,
    const DeepCollectionEquality().hash(_payments),
  );

  /// Create a copy of PaymentStatusResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentStatusResponseModelImplCopyWith<_$PaymentStatusResponseModelImpl>
  get copyWith =>
      __$$PaymentStatusResponseModelImplCopyWithImpl<
        _$PaymentStatusResponseModelImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentStatusResponseModelImplToJson(this);
  }
}

abstract class _PaymentStatusResponseModel extends PaymentStatusResponseModel {
  const factory _PaymentStatusResponseModel({
    final String? ref,
    @JsonKey(name: 'gateway_ref') final String? gatewayRef,
    final bool? confirmed,
    final List<PaymentStatusModel> payments,
  }) = _$PaymentStatusResponseModelImpl;
  const _PaymentStatusResponseModel._() : super._();

  factory _PaymentStatusResponseModel.fromJson(Map<String, dynamic> json) =
      _$PaymentStatusResponseModelImpl.fromJson;

  /// الـ ref اللي إحنا بعتناه (gateway_ref أو payment id).
  @override
  String? get ref;

  /// المرجع الرسمي من البوابة — نوحّد عليه (BE-13).
  @override
  @JsonKey(name: 'gateway_ref')
  String? get gatewayRef;

  /// كل الصفوف مأكّدة — حساب السيرفر، أدقّ من إعادة اشتقاقه عندنا.
  @override
  bool? get confirmed;
  @override
  List<PaymentStatusModel> get payments;

  /// Create a copy of PaymentStatusResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentStatusResponseModelImplCopyWith<_$PaymentStatusResponseModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}
