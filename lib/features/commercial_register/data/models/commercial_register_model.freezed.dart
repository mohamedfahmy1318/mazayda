// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'commercial_register_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CrDocumentsModel _$CrDocumentsModelFromJson(Map<String, dynamic> json) {
  return _CrDocumentsModel.fromJson(json);
}

/// @nodoc
mixin _$CrDocumentsModel {
  bool get register => throw _privateConstructorUsedError;
  @JsonKey(name: 'tax-card')
  bool get taxCard => throw _privateConstructorUsedError;

  /// Serializes this CrDocumentsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CrDocumentsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CrDocumentsModelCopyWith<CrDocumentsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CrDocumentsModelCopyWith<$Res> {
  factory $CrDocumentsModelCopyWith(
    CrDocumentsModel value,
    $Res Function(CrDocumentsModel) then,
  ) = _$CrDocumentsModelCopyWithImpl<$Res, CrDocumentsModel>;
  @useResult
  $Res call({bool register, @JsonKey(name: 'tax-card') bool taxCard});
}

/// @nodoc
class _$CrDocumentsModelCopyWithImpl<$Res, $Val extends CrDocumentsModel>
    implements $CrDocumentsModelCopyWith<$Res> {
  _$CrDocumentsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CrDocumentsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? register = null, Object? taxCard = null}) {
    return _then(
      _value.copyWith(
            register: null == register
                ? _value.register
                : register // ignore: cast_nullable_to_non_nullable
                      as bool,
            taxCard: null == taxCard
                ? _value.taxCard
                : taxCard // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CrDocumentsModelImplCopyWith<$Res>
    implements $CrDocumentsModelCopyWith<$Res> {
  factory _$$CrDocumentsModelImplCopyWith(
    _$CrDocumentsModelImpl value,
    $Res Function(_$CrDocumentsModelImpl) then,
  ) = __$$CrDocumentsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool register, @JsonKey(name: 'tax-card') bool taxCard});
}

/// @nodoc
class __$$CrDocumentsModelImplCopyWithImpl<$Res>
    extends _$CrDocumentsModelCopyWithImpl<$Res, _$CrDocumentsModelImpl>
    implements _$$CrDocumentsModelImplCopyWith<$Res> {
  __$$CrDocumentsModelImplCopyWithImpl(
    _$CrDocumentsModelImpl _value,
    $Res Function(_$CrDocumentsModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CrDocumentsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? register = null, Object? taxCard = null}) {
    return _then(
      _$CrDocumentsModelImpl(
        register: null == register
            ? _value.register
            : register // ignore: cast_nullable_to_non_nullable
                  as bool,
        taxCard: null == taxCard
            ? _value.taxCard
            : taxCard // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CrDocumentsModelImpl implements _CrDocumentsModel {
  const _$CrDocumentsModelImpl({
    this.register = false,
    @JsonKey(name: 'tax-card') this.taxCard = false,
  });

  factory _$CrDocumentsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CrDocumentsModelImplFromJson(json);

  @override
  @JsonKey()
  final bool register;
  @override
  @JsonKey(name: 'tax-card')
  final bool taxCard;

  @override
  String toString() {
    return 'CrDocumentsModel(register: $register, taxCard: $taxCard)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CrDocumentsModelImpl &&
            (identical(other.register, register) ||
                other.register == register) &&
            (identical(other.taxCard, taxCard) || other.taxCard == taxCard));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, register, taxCard);

  /// Create a copy of CrDocumentsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CrDocumentsModelImplCopyWith<_$CrDocumentsModelImpl> get copyWith =>
      __$$CrDocumentsModelImplCopyWithImpl<_$CrDocumentsModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CrDocumentsModelImplToJson(this);
  }
}

abstract class _CrDocumentsModel implements CrDocumentsModel {
  const factory _CrDocumentsModel({
    final bool register,
    @JsonKey(name: 'tax-card') final bool taxCard,
  }) = _$CrDocumentsModelImpl;

  factory _CrDocumentsModel.fromJson(Map<String, dynamic> json) =
      _$CrDocumentsModelImpl.fromJson;

  @override
  bool get register;
  @override
  @JsonKey(name: 'tax-card')
  bool get taxCard;

  /// Create a copy of CrDocumentsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CrDocumentsModelImplCopyWith<_$CrDocumentsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CommercialRegisterModel _$CommercialRegisterModelFromJson(
  Map<String, dynamic> json,
) {
  return _CommercialRegisterModel.fromJson(json);
}

/// @nodoc
mixin _$CommercialRegisterModel {
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'company_name')
  String? get companyName => throw _privateConstructorUsedError;
  @JsonKey(name: 'register_number')
  String? get registerNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'tax_number')
  String? get taxNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'activity_type')
  String? get activityType => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_date')
  String? get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'rejection_reason')
  String? get rejectionReason => throw _privateConstructorUsedError;
  @JsonKey(name: 'submitted_at')
  String? get submittedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'reviewed_at')
  String? get reviewedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'can_submit')
  bool get canSubmit => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_valid')
  bool get isValid => throw _privateConstructorUsedError;
  CrDocumentsModel? get documents => throw _privateConstructorUsedError;

  /// Serializes this CommercialRegisterModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommercialRegisterModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommercialRegisterModelCopyWith<CommercialRegisterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommercialRegisterModelCopyWith<$Res> {
  factory $CommercialRegisterModelCopyWith(
    CommercialRegisterModel value,
    $Res Function(CommercialRegisterModel) then,
  ) = _$CommercialRegisterModelCopyWithImpl<$Res, CommercialRegisterModel>;
  @useResult
  $Res call({
    String? status,
    @JsonKey(name: 'company_name') String? companyName,
    @JsonKey(name: 'register_number') String? registerNumber,
    @JsonKey(name: 'tax_number') String? taxNumber,
    @JsonKey(name: 'activity_type') String? activityType,
    @JsonKey(name: 'start_date') String? startDate,
    @JsonKey(name: 'rejection_reason') String? rejectionReason,
    @JsonKey(name: 'submitted_at') String? submittedAt,
    @JsonKey(name: 'reviewed_at') String? reviewedAt,
    @JsonKey(name: 'can_submit') bool canSubmit,
    @JsonKey(name: 'is_valid') bool isValid,
    CrDocumentsModel? documents,
  });

  $CrDocumentsModelCopyWith<$Res>? get documents;
}

/// @nodoc
class _$CommercialRegisterModelCopyWithImpl<
  $Res,
  $Val extends CommercialRegisterModel
>
    implements $CommercialRegisterModelCopyWith<$Res> {
  _$CommercialRegisterModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommercialRegisterModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? companyName = freezed,
    Object? registerNumber = freezed,
    Object? taxNumber = freezed,
    Object? activityType = freezed,
    Object? startDate = freezed,
    Object? rejectionReason = freezed,
    Object? submittedAt = freezed,
    Object? reviewedAt = freezed,
    Object? canSubmit = null,
    Object? isValid = null,
    Object? documents = freezed,
  }) {
    return _then(
      _value.copyWith(
            status: freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String?,
            companyName: freezed == companyName
                ? _value.companyName
                : companyName // ignore: cast_nullable_to_non_nullable
                      as String?,
            registerNumber: freezed == registerNumber
                ? _value.registerNumber
                : registerNumber // ignore: cast_nullable_to_non_nullable
                      as String?,
            taxNumber: freezed == taxNumber
                ? _value.taxNumber
                : taxNumber // ignore: cast_nullable_to_non_nullable
                      as String?,
            activityType: freezed == activityType
                ? _value.activityType
                : activityType // ignore: cast_nullable_to_non_nullable
                      as String?,
            startDate: freezed == startDate
                ? _value.startDate
                : startDate // ignore: cast_nullable_to_non_nullable
                      as String?,
            rejectionReason: freezed == rejectionReason
                ? _value.rejectionReason
                : rejectionReason // ignore: cast_nullable_to_non_nullable
                      as String?,
            submittedAt: freezed == submittedAt
                ? _value.submittedAt
                : submittedAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            reviewedAt: freezed == reviewedAt
                ? _value.reviewedAt
                : reviewedAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            canSubmit: null == canSubmit
                ? _value.canSubmit
                : canSubmit // ignore: cast_nullable_to_non_nullable
                      as bool,
            isValid: null == isValid
                ? _value.isValid
                : isValid // ignore: cast_nullable_to_non_nullable
                      as bool,
            documents: freezed == documents
                ? _value.documents
                : documents // ignore: cast_nullable_to_non_nullable
                      as CrDocumentsModel?,
          )
          as $Val,
    );
  }

  /// Create a copy of CommercialRegisterModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CrDocumentsModelCopyWith<$Res>? get documents {
    if (_value.documents == null) {
      return null;
    }

    return $CrDocumentsModelCopyWith<$Res>(_value.documents!, (value) {
      return _then(_value.copyWith(documents: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CommercialRegisterModelImplCopyWith<$Res>
    implements $CommercialRegisterModelCopyWith<$Res> {
  factory _$$CommercialRegisterModelImplCopyWith(
    _$CommercialRegisterModelImpl value,
    $Res Function(_$CommercialRegisterModelImpl) then,
  ) = __$$CommercialRegisterModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? status,
    @JsonKey(name: 'company_name') String? companyName,
    @JsonKey(name: 'register_number') String? registerNumber,
    @JsonKey(name: 'tax_number') String? taxNumber,
    @JsonKey(name: 'activity_type') String? activityType,
    @JsonKey(name: 'start_date') String? startDate,
    @JsonKey(name: 'rejection_reason') String? rejectionReason,
    @JsonKey(name: 'submitted_at') String? submittedAt,
    @JsonKey(name: 'reviewed_at') String? reviewedAt,
    @JsonKey(name: 'can_submit') bool canSubmit,
    @JsonKey(name: 'is_valid') bool isValid,
    CrDocumentsModel? documents,
  });

  @override
  $CrDocumentsModelCopyWith<$Res>? get documents;
}

/// @nodoc
class __$$CommercialRegisterModelImplCopyWithImpl<$Res>
    extends
        _$CommercialRegisterModelCopyWithImpl<
          $Res,
          _$CommercialRegisterModelImpl
        >
    implements _$$CommercialRegisterModelImplCopyWith<$Res> {
  __$$CommercialRegisterModelImplCopyWithImpl(
    _$CommercialRegisterModelImpl _value,
    $Res Function(_$CommercialRegisterModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CommercialRegisterModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? companyName = freezed,
    Object? registerNumber = freezed,
    Object? taxNumber = freezed,
    Object? activityType = freezed,
    Object? startDate = freezed,
    Object? rejectionReason = freezed,
    Object? submittedAt = freezed,
    Object? reviewedAt = freezed,
    Object? canSubmit = null,
    Object? isValid = null,
    Object? documents = freezed,
  }) {
    return _then(
      _$CommercialRegisterModelImpl(
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String?,
        companyName: freezed == companyName
            ? _value.companyName
            : companyName // ignore: cast_nullable_to_non_nullable
                  as String?,
        registerNumber: freezed == registerNumber
            ? _value.registerNumber
            : registerNumber // ignore: cast_nullable_to_non_nullable
                  as String?,
        taxNumber: freezed == taxNumber
            ? _value.taxNumber
            : taxNumber // ignore: cast_nullable_to_non_nullable
                  as String?,
        activityType: freezed == activityType
            ? _value.activityType
            : activityType // ignore: cast_nullable_to_non_nullable
                  as String?,
        startDate: freezed == startDate
            ? _value.startDate
            : startDate // ignore: cast_nullable_to_non_nullable
                  as String?,
        rejectionReason: freezed == rejectionReason
            ? _value.rejectionReason
            : rejectionReason // ignore: cast_nullable_to_non_nullable
                  as String?,
        submittedAt: freezed == submittedAt
            ? _value.submittedAt
            : submittedAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        reviewedAt: freezed == reviewedAt
            ? _value.reviewedAt
            : reviewedAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        canSubmit: null == canSubmit
            ? _value.canSubmit
            : canSubmit // ignore: cast_nullable_to_non_nullable
                  as bool,
        isValid: null == isValid
            ? _value.isValid
            : isValid // ignore: cast_nullable_to_non_nullable
                  as bool,
        documents: freezed == documents
            ? _value.documents
            : documents // ignore: cast_nullable_to_non_nullable
                  as CrDocumentsModel?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CommercialRegisterModelImpl extends _CommercialRegisterModel {
  const _$CommercialRegisterModelImpl({
    this.status,
    @JsonKey(name: 'company_name') this.companyName,
    @JsonKey(name: 'register_number') this.registerNumber,
    @JsonKey(name: 'tax_number') this.taxNumber,
    @JsonKey(name: 'activity_type') this.activityType,
    @JsonKey(name: 'start_date') this.startDate,
    @JsonKey(name: 'rejection_reason') this.rejectionReason,
    @JsonKey(name: 'submitted_at') this.submittedAt,
    @JsonKey(name: 'reviewed_at') this.reviewedAt,
    @JsonKey(name: 'can_submit') this.canSubmit = true,
    @JsonKey(name: 'is_valid') this.isValid = false,
    this.documents,
  }) : super._();

  factory _$CommercialRegisterModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommercialRegisterModelImplFromJson(json);

  @override
  final String? status;
  @override
  @JsonKey(name: 'company_name')
  final String? companyName;
  @override
  @JsonKey(name: 'register_number')
  final String? registerNumber;
  @override
  @JsonKey(name: 'tax_number')
  final String? taxNumber;
  @override
  @JsonKey(name: 'activity_type')
  final String? activityType;
  @override
  @JsonKey(name: 'start_date')
  final String? startDate;
  @override
  @JsonKey(name: 'rejection_reason')
  final String? rejectionReason;
  @override
  @JsonKey(name: 'submitted_at')
  final String? submittedAt;
  @override
  @JsonKey(name: 'reviewed_at')
  final String? reviewedAt;
  @override
  @JsonKey(name: 'can_submit')
  final bool canSubmit;
  @override
  @JsonKey(name: 'is_valid')
  final bool isValid;
  @override
  final CrDocumentsModel? documents;

  @override
  String toString() {
    return 'CommercialRegisterModel(status: $status, companyName: $companyName, registerNumber: $registerNumber, taxNumber: $taxNumber, activityType: $activityType, startDate: $startDate, rejectionReason: $rejectionReason, submittedAt: $submittedAt, reviewedAt: $reviewedAt, canSubmit: $canSubmit, isValid: $isValid, documents: $documents)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommercialRegisterModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.registerNumber, registerNumber) ||
                other.registerNumber == registerNumber) &&
            (identical(other.taxNumber, taxNumber) ||
                other.taxNumber == taxNumber) &&
            (identical(other.activityType, activityType) ||
                other.activityType == activityType) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.rejectionReason, rejectionReason) ||
                other.rejectionReason == rejectionReason) &&
            (identical(other.submittedAt, submittedAt) ||
                other.submittedAt == submittedAt) &&
            (identical(other.reviewedAt, reviewedAt) ||
                other.reviewedAt == reviewedAt) &&
            (identical(other.canSubmit, canSubmit) ||
                other.canSubmit == canSubmit) &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.documents, documents) ||
                other.documents == documents));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    companyName,
    registerNumber,
    taxNumber,
    activityType,
    startDate,
    rejectionReason,
    submittedAt,
    reviewedAt,
    canSubmit,
    isValid,
    documents,
  );

  /// Create a copy of CommercialRegisterModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommercialRegisterModelImplCopyWith<_$CommercialRegisterModelImpl>
  get copyWith =>
      __$$CommercialRegisterModelImplCopyWithImpl<
        _$CommercialRegisterModelImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommercialRegisterModelImplToJson(this);
  }
}

abstract class _CommercialRegisterModel extends CommercialRegisterModel {
  const factory _CommercialRegisterModel({
    final String? status,
    @JsonKey(name: 'company_name') final String? companyName,
    @JsonKey(name: 'register_number') final String? registerNumber,
    @JsonKey(name: 'tax_number') final String? taxNumber,
    @JsonKey(name: 'activity_type') final String? activityType,
    @JsonKey(name: 'start_date') final String? startDate,
    @JsonKey(name: 'rejection_reason') final String? rejectionReason,
    @JsonKey(name: 'submitted_at') final String? submittedAt,
    @JsonKey(name: 'reviewed_at') final String? reviewedAt,
    @JsonKey(name: 'can_submit') final bool canSubmit,
    @JsonKey(name: 'is_valid') final bool isValid,
    final CrDocumentsModel? documents,
  }) = _$CommercialRegisterModelImpl;
  const _CommercialRegisterModel._() : super._();

  factory _CommercialRegisterModel.fromJson(Map<String, dynamic> json) =
      _$CommercialRegisterModelImpl.fromJson;

  @override
  String? get status;
  @override
  @JsonKey(name: 'company_name')
  String? get companyName;
  @override
  @JsonKey(name: 'register_number')
  String? get registerNumber;
  @override
  @JsonKey(name: 'tax_number')
  String? get taxNumber;
  @override
  @JsonKey(name: 'activity_type')
  String? get activityType;
  @override
  @JsonKey(name: 'start_date')
  String? get startDate;
  @override
  @JsonKey(name: 'rejection_reason')
  String? get rejectionReason;
  @override
  @JsonKey(name: 'submitted_at')
  String? get submittedAt;
  @override
  @JsonKey(name: 'reviewed_at')
  String? get reviewedAt;
  @override
  @JsonKey(name: 'can_submit')
  bool get canSubmit;
  @override
  @JsonKey(name: 'is_valid')
  bool get isValid;
  @override
  CrDocumentsModel? get documents;

  /// Create a copy of CommercialRegisterModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommercialRegisterModelImplCopyWith<_$CommercialRegisterModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}
