// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'commercial_register_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$CommercialRegisterState {
  bool get loading => throw _privateConstructorUsedError;
  bool get submitting => throw _privateConstructorUsedError;
  bool get submitted => throw _privateConstructorUsedError;
  CommercialRegister? get register => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  Map<String, List<String>>? get serverErrors =>
      throw _privateConstructorUsedError; // حقول النموذج
  String get companyName => throw _privateConstructorUsedError;
  String get registerNumber => throw _privateConstructorUsedError;
  String get taxNumber => throw _privateConstructorUsedError;
  String get activityType => throw _privateConstructorUsedError;
  String? get startDate => throw _privateConstructorUsedError; // Y-M-D
  String? get registerDocumentPath => throw _privateConstructorUsedError;
  String? get taxCardDocumentPath => throw _privateConstructorUsedError;

  /// حجم كل مرفق (بايت) — بنقيسه مرة واحدة وقت الاختيار بدل ما نقرا من
  /// الديسك في كل rebuild (يعني مع كل حرف بيتكتب في النموذج).
  int? get registerDocumentBytes => throw _privateConstructorUsedError;
  int? get taxCardDocumentBytes => throw _privateConstructorUsedError;

  /// بعد أول محاولة إرسال بنعرض أخطاء كل الحقول.
  bool get showErrors => throw _privateConstructorUsedError;

  /// الحقول اللي المستخدم دخلها وخرج منها — بنعرض خطأها لوحدها قبل الإرسال.
  Set<CrFormField> get touched => throw _privateConstructorUsedError;

  /// Create a copy of CommercialRegisterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommercialRegisterStateCopyWith<CommercialRegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommercialRegisterStateCopyWith<$Res> {
  factory $CommercialRegisterStateCopyWith(
    CommercialRegisterState value,
    $Res Function(CommercialRegisterState) then,
  ) = _$CommercialRegisterStateCopyWithImpl<$Res, CommercialRegisterState>;
  @useResult
  $Res call({
    bool loading,
    bool submitting,
    bool submitted,
    CommercialRegister? register,
    String? error,
    Map<String, List<String>>? serverErrors,
    String companyName,
    String registerNumber,
    String taxNumber,
    String activityType,
    String? startDate,
    String? registerDocumentPath,
    String? taxCardDocumentPath,
    int? registerDocumentBytes,
    int? taxCardDocumentBytes,
    bool showErrors,
    Set<CrFormField> touched,
  });
}

/// @nodoc
class _$CommercialRegisterStateCopyWithImpl<
  $Res,
  $Val extends CommercialRegisterState
>
    implements $CommercialRegisterStateCopyWith<$Res> {
  _$CommercialRegisterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommercialRegisterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? submitting = null,
    Object? submitted = null,
    Object? register = freezed,
    Object? error = freezed,
    Object? serverErrors = freezed,
    Object? companyName = null,
    Object? registerNumber = null,
    Object? taxNumber = null,
    Object? activityType = null,
    Object? startDate = freezed,
    Object? registerDocumentPath = freezed,
    Object? taxCardDocumentPath = freezed,
    Object? registerDocumentBytes = freezed,
    Object? taxCardDocumentBytes = freezed,
    Object? showErrors = null,
    Object? touched = null,
  }) {
    return _then(
      _value.copyWith(
            loading: null == loading
                ? _value.loading
                : loading // ignore: cast_nullable_to_non_nullable
                      as bool,
            submitting: null == submitting
                ? _value.submitting
                : submitting // ignore: cast_nullable_to_non_nullable
                      as bool,
            submitted: null == submitted
                ? _value.submitted
                : submitted // ignore: cast_nullable_to_non_nullable
                      as bool,
            register: freezed == register
                ? _value.register
                : register // ignore: cast_nullable_to_non_nullable
                      as CommercialRegister?,
            error: freezed == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                      as String?,
            serverErrors: freezed == serverErrors
                ? _value.serverErrors
                : serverErrors // ignore: cast_nullable_to_non_nullable
                      as Map<String, List<String>>?,
            companyName: null == companyName
                ? _value.companyName
                : companyName // ignore: cast_nullable_to_non_nullable
                      as String,
            registerNumber: null == registerNumber
                ? _value.registerNumber
                : registerNumber // ignore: cast_nullable_to_non_nullable
                      as String,
            taxNumber: null == taxNumber
                ? _value.taxNumber
                : taxNumber // ignore: cast_nullable_to_non_nullable
                      as String,
            activityType: null == activityType
                ? _value.activityType
                : activityType // ignore: cast_nullable_to_non_nullable
                      as String,
            startDate: freezed == startDate
                ? _value.startDate
                : startDate // ignore: cast_nullable_to_non_nullable
                      as String?,
            registerDocumentPath: freezed == registerDocumentPath
                ? _value.registerDocumentPath
                : registerDocumentPath // ignore: cast_nullable_to_non_nullable
                      as String?,
            taxCardDocumentPath: freezed == taxCardDocumentPath
                ? _value.taxCardDocumentPath
                : taxCardDocumentPath // ignore: cast_nullable_to_non_nullable
                      as String?,
            registerDocumentBytes: freezed == registerDocumentBytes
                ? _value.registerDocumentBytes
                : registerDocumentBytes // ignore: cast_nullable_to_non_nullable
                      as int?,
            taxCardDocumentBytes: freezed == taxCardDocumentBytes
                ? _value.taxCardDocumentBytes
                : taxCardDocumentBytes // ignore: cast_nullable_to_non_nullable
                      as int?,
            showErrors: null == showErrors
                ? _value.showErrors
                : showErrors // ignore: cast_nullable_to_non_nullable
                      as bool,
            touched: null == touched
                ? _value.touched
                : touched // ignore: cast_nullable_to_non_nullable
                      as Set<CrFormField>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CommercialRegisterStateImplCopyWith<$Res>
    implements $CommercialRegisterStateCopyWith<$Res> {
  factory _$$CommercialRegisterStateImplCopyWith(
    _$CommercialRegisterStateImpl value,
    $Res Function(_$CommercialRegisterStateImpl) then,
  ) = __$$CommercialRegisterStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool loading,
    bool submitting,
    bool submitted,
    CommercialRegister? register,
    String? error,
    Map<String, List<String>>? serverErrors,
    String companyName,
    String registerNumber,
    String taxNumber,
    String activityType,
    String? startDate,
    String? registerDocumentPath,
    String? taxCardDocumentPath,
    int? registerDocumentBytes,
    int? taxCardDocumentBytes,
    bool showErrors,
    Set<CrFormField> touched,
  });
}

/// @nodoc
class __$$CommercialRegisterStateImplCopyWithImpl<$Res>
    extends
        _$CommercialRegisterStateCopyWithImpl<
          $Res,
          _$CommercialRegisterStateImpl
        >
    implements _$$CommercialRegisterStateImplCopyWith<$Res> {
  __$$CommercialRegisterStateImplCopyWithImpl(
    _$CommercialRegisterStateImpl _value,
    $Res Function(_$CommercialRegisterStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CommercialRegisterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? submitting = null,
    Object? submitted = null,
    Object? register = freezed,
    Object? error = freezed,
    Object? serverErrors = freezed,
    Object? companyName = null,
    Object? registerNumber = null,
    Object? taxNumber = null,
    Object? activityType = null,
    Object? startDate = freezed,
    Object? registerDocumentPath = freezed,
    Object? taxCardDocumentPath = freezed,
    Object? registerDocumentBytes = freezed,
    Object? taxCardDocumentBytes = freezed,
    Object? showErrors = null,
    Object? touched = null,
  }) {
    return _then(
      _$CommercialRegisterStateImpl(
        loading: null == loading
            ? _value.loading
            : loading // ignore: cast_nullable_to_non_nullable
                  as bool,
        submitting: null == submitting
            ? _value.submitting
            : submitting // ignore: cast_nullable_to_non_nullable
                  as bool,
        submitted: null == submitted
            ? _value.submitted
            : submitted // ignore: cast_nullable_to_non_nullable
                  as bool,
        register: freezed == register
            ? _value.register
            : register // ignore: cast_nullable_to_non_nullable
                  as CommercialRegister?,
        error: freezed == error
            ? _value.error
            : error // ignore: cast_nullable_to_non_nullable
                  as String?,
        serverErrors: freezed == serverErrors
            ? _value._serverErrors
            : serverErrors // ignore: cast_nullable_to_non_nullable
                  as Map<String, List<String>>?,
        companyName: null == companyName
            ? _value.companyName
            : companyName // ignore: cast_nullable_to_non_nullable
                  as String,
        registerNumber: null == registerNumber
            ? _value.registerNumber
            : registerNumber // ignore: cast_nullable_to_non_nullable
                  as String,
        taxNumber: null == taxNumber
            ? _value.taxNumber
            : taxNumber // ignore: cast_nullable_to_non_nullable
                  as String,
        activityType: null == activityType
            ? _value.activityType
            : activityType // ignore: cast_nullable_to_non_nullable
                  as String,
        startDate: freezed == startDate
            ? _value.startDate
            : startDate // ignore: cast_nullable_to_non_nullable
                  as String?,
        registerDocumentPath: freezed == registerDocumentPath
            ? _value.registerDocumentPath
            : registerDocumentPath // ignore: cast_nullable_to_non_nullable
                  as String?,
        taxCardDocumentPath: freezed == taxCardDocumentPath
            ? _value.taxCardDocumentPath
            : taxCardDocumentPath // ignore: cast_nullable_to_non_nullable
                  as String?,
        registerDocumentBytes: freezed == registerDocumentBytes
            ? _value.registerDocumentBytes
            : registerDocumentBytes // ignore: cast_nullable_to_non_nullable
                  as int?,
        taxCardDocumentBytes: freezed == taxCardDocumentBytes
            ? _value.taxCardDocumentBytes
            : taxCardDocumentBytes // ignore: cast_nullable_to_non_nullable
                  as int?,
        showErrors: null == showErrors
            ? _value.showErrors
            : showErrors // ignore: cast_nullable_to_non_nullable
                  as bool,
        touched: null == touched
            ? _value._touched
            : touched // ignore: cast_nullable_to_non_nullable
                  as Set<CrFormField>,
      ),
    );
  }
}

/// @nodoc

class _$CommercialRegisterStateImpl extends _CommercialRegisterState {
  const _$CommercialRegisterStateImpl({
    this.loading = true,
    this.submitting = false,
    this.submitted = false,
    this.register,
    this.error,
    final Map<String, List<String>>? serverErrors,
    this.companyName = '',
    this.registerNumber = '',
    this.taxNumber = '',
    this.activityType = '',
    this.startDate,
    this.registerDocumentPath,
    this.taxCardDocumentPath,
    this.registerDocumentBytes,
    this.taxCardDocumentBytes,
    this.showErrors = false,
    final Set<CrFormField> touched = const <CrFormField>{},
  }) : _serverErrors = serverErrors,
       _touched = touched,
       super._();

  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool submitting;
  @override
  @JsonKey()
  final bool submitted;
  @override
  final CommercialRegister? register;
  @override
  final String? error;
  final Map<String, List<String>>? _serverErrors;
  @override
  Map<String, List<String>>? get serverErrors {
    final value = _serverErrors;
    if (value == null) return null;
    if (_serverErrors is EqualUnmodifiableMapView) return _serverErrors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  // حقول النموذج
  @override
  @JsonKey()
  final String companyName;
  @override
  @JsonKey()
  final String registerNumber;
  @override
  @JsonKey()
  final String taxNumber;
  @override
  @JsonKey()
  final String activityType;
  @override
  final String? startDate;
  // Y-M-D
  @override
  final String? registerDocumentPath;
  @override
  final String? taxCardDocumentPath;

  /// حجم كل مرفق (بايت) — بنقيسه مرة واحدة وقت الاختيار بدل ما نقرا من
  /// الديسك في كل rebuild (يعني مع كل حرف بيتكتب في النموذج).
  @override
  final int? registerDocumentBytes;
  @override
  final int? taxCardDocumentBytes;

  /// بعد أول محاولة إرسال بنعرض أخطاء كل الحقول.
  @override
  @JsonKey()
  final bool showErrors;

  /// الحقول اللي المستخدم دخلها وخرج منها — بنعرض خطأها لوحدها قبل الإرسال.
  final Set<CrFormField> _touched;

  /// الحقول اللي المستخدم دخلها وخرج منها — بنعرض خطأها لوحدها قبل الإرسال.
  @override
  @JsonKey()
  Set<CrFormField> get touched {
    if (_touched is EqualUnmodifiableSetView) return _touched;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_touched);
  }

  @override
  String toString() {
    return 'CommercialRegisterState(loading: $loading, submitting: $submitting, submitted: $submitted, register: $register, error: $error, serverErrors: $serverErrors, companyName: $companyName, registerNumber: $registerNumber, taxNumber: $taxNumber, activityType: $activityType, startDate: $startDate, registerDocumentPath: $registerDocumentPath, taxCardDocumentPath: $taxCardDocumentPath, registerDocumentBytes: $registerDocumentBytes, taxCardDocumentBytes: $taxCardDocumentBytes, showErrors: $showErrors, touched: $touched)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommercialRegisterStateImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.submitting, submitting) ||
                other.submitting == submitting) &&
            (identical(other.submitted, submitted) ||
                other.submitted == submitted) &&
            (identical(other.register, register) ||
                other.register == register) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality().equals(
              other._serverErrors,
              _serverErrors,
            ) &&
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
            (identical(other.registerDocumentPath, registerDocumentPath) ||
                other.registerDocumentPath == registerDocumentPath) &&
            (identical(other.taxCardDocumentPath, taxCardDocumentPath) ||
                other.taxCardDocumentPath == taxCardDocumentPath) &&
            (identical(other.registerDocumentBytes, registerDocumentBytes) ||
                other.registerDocumentBytes == registerDocumentBytes) &&
            (identical(other.taxCardDocumentBytes, taxCardDocumentBytes) ||
                other.taxCardDocumentBytes == taxCardDocumentBytes) &&
            (identical(other.showErrors, showErrors) ||
                other.showErrors == showErrors) &&
            const DeepCollectionEquality().equals(other._touched, _touched));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    loading,
    submitting,
    submitted,
    register,
    error,
    const DeepCollectionEquality().hash(_serverErrors),
    companyName,
    registerNumber,
    taxNumber,
    activityType,
    startDate,
    registerDocumentPath,
    taxCardDocumentPath,
    registerDocumentBytes,
    taxCardDocumentBytes,
    showErrors,
    const DeepCollectionEquality().hash(_touched),
  );

  /// Create a copy of CommercialRegisterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommercialRegisterStateImplCopyWith<_$CommercialRegisterStateImpl>
  get copyWith =>
      __$$CommercialRegisterStateImplCopyWithImpl<
        _$CommercialRegisterStateImpl
      >(this, _$identity);
}

abstract class _CommercialRegisterState extends CommercialRegisterState {
  const factory _CommercialRegisterState({
    final bool loading,
    final bool submitting,
    final bool submitted,
    final CommercialRegister? register,
    final String? error,
    final Map<String, List<String>>? serverErrors,
    final String companyName,
    final String registerNumber,
    final String taxNumber,
    final String activityType,
    final String? startDate,
    final String? registerDocumentPath,
    final String? taxCardDocumentPath,
    final int? registerDocumentBytes,
    final int? taxCardDocumentBytes,
    final bool showErrors,
    final Set<CrFormField> touched,
  }) = _$CommercialRegisterStateImpl;
  const _CommercialRegisterState._() : super._();

  @override
  bool get loading;
  @override
  bool get submitting;
  @override
  bool get submitted;
  @override
  CommercialRegister? get register;
  @override
  String? get error;
  @override
  Map<String, List<String>>? get serverErrors; // حقول النموذج
  @override
  String get companyName;
  @override
  String get registerNumber;
  @override
  String get taxNumber;
  @override
  String get activityType;
  @override
  String? get startDate; // Y-M-D
  @override
  String? get registerDocumentPath;
  @override
  String? get taxCardDocumentPath;

  /// حجم كل مرفق (بايت) — بنقيسه مرة واحدة وقت الاختيار بدل ما نقرا من
  /// الديسك في كل rebuild (يعني مع كل حرف بيتكتب في النموذج).
  @override
  int? get registerDocumentBytes;
  @override
  int? get taxCardDocumentBytes;

  /// بعد أول محاولة إرسال بنعرض أخطاء كل الحقول.
  @override
  bool get showErrors;

  /// الحقول اللي المستخدم دخلها وخرج منها — بنعرض خطأها لوحدها قبل الإرسال.
  @override
  Set<CrFormField> get touched;

  /// Create a copy of CommercialRegisterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommercialRegisterStateImplCopyWith<_$CommercialRegisterStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}
