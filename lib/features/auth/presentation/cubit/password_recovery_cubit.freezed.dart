// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'password_recovery_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$PasswordRecoveryState {
  RecoveryMode get mode => throw _privateConstructorUsedError;
  RecoveryStep get step => throw _privateConstructorUsedError;
  RecoveryStatus get status => throw _privateConstructorUsedError;
  NinInput get nin => throw _privateConstructorUsedError;
  EmailInput get email => throw _privateConstructorUsedError;
  String get otp => throw _privateConstructorUsedError;
  String get secretAnswer => throw _privateConstructorUsedError;
  NewPasswordInput get password => throw _privateConstructorUsedError;
  ConfirmPasswordInput get confirmPassword =>
      throw _privateConstructorUsedError;

  /// مفتاح السؤال السرّي الراجع من السيرفر (مثال: mother_maiden).
  String? get questionKey => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  Map<String, List<String>>? get serverErrors =>
      throw _privateConstructorUsedError;

  /// Create a copy of PasswordRecoveryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PasswordRecoveryStateCopyWith<PasswordRecoveryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordRecoveryStateCopyWith<$Res> {
  factory $PasswordRecoveryStateCopyWith(
    PasswordRecoveryState value,
    $Res Function(PasswordRecoveryState) then,
  ) = _$PasswordRecoveryStateCopyWithImpl<$Res, PasswordRecoveryState>;
  @useResult
  $Res call({
    RecoveryMode mode,
    RecoveryStep step,
    RecoveryStatus status,
    NinInput nin,
    EmailInput email,
    String otp,
    String secretAnswer,
    NewPasswordInput password,
    ConfirmPasswordInput confirmPassword,
    String? questionKey,
    String? errorMessage,
    Map<String, List<String>>? serverErrors,
  });
}

/// @nodoc
class _$PasswordRecoveryStateCopyWithImpl<
  $Res,
  $Val extends PasswordRecoveryState
>
    implements $PasswordRecoveryStateCopyWith<$Res> {
  _$PasswordRecoveryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PasswordRecoveryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mode = null,
    Object? step = null,
    Object? status = null,
    Object? nin = null,
    Object? email = null,
    Object? otp = null,
    Object? secretAnswer = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? questionKey = freezed,
    Object? errorMessage = freezed,
    Object? serverErrors = freezed,
  }) {
    return _then(
      _value.copyWith(
            mode: null == mode
                ? _value.mode
                : mode // ignore: cast_nullable_to_non_nullable
                      as RecoveryMode,
            step: null == step
                ? _value.step
                : step // ignore: cast_nullable_to_non_nullable
                      as RecoveryStep,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as RecoveryStatus,
            nin: null == nin
                ? _value.nin
                : nin // ignore: cast_nullable_to_non_nullable
                      as NinInput,
            email: null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as EmailInput,
            otp: null == otp
                ? _value.otp
                : otp // ignore: cast_nullable_to_non_nullable
                      as String,
            secretAnswer: null == secretAnswer
                ? _value.secretAnswer
                : secretAnswer // ignore: cast_nullable_to_non_nullable
                      as String,
            password: null == password
                ? _value.password
                : password // ignore: cast_nullable_to_non_nullable
                      as NewPasswordInput,
            confirmPassword: null == confirmPassword
                ? _value.confirmPassword
                : confirmPassword // ignore: cast_nullable_to_non_nullable
                      as ConfirmPasswordInput,
            questionKey: freezed == questionKey
                ? _value.questionKey
                : questionKey // ignore: cast_nullable_to_non_nullable
                      as String?,
            errorMessage: freezed == errorMessage
                ? _value.errorMessage
                : errorMessage // ignore: cast_nullable_to_non_nullable
                      as String?,
            serverErrors: freezed == serverErrors
                ? _value.serverErrors
                : serverErrors // ignore: cast_nullable_to_non_nullable
                      as Map<String, List<String>>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PasswordRecoveryStateImplCopyWith<$Res>
    implements $PasswordRecoveryStateCopyWith<$Res> {
  factory _$$PasswordRecoveryStateImplCopyWith(
    _$PasswordRecoveryStateImpl value,
    $Res Function(_$PasswordRecoveryStateImpl) then,
  ) = __$$PasswordRecoveryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    RecoveryMode mode,
    RecoveryStep step,
    RecoveryStatus status,
    NinInput nin,
    EmailInput email,
    String otp,
    String secretAnswer,
    NewPasswordInput password,
    ConfirmPasswordInput confirmPassword,
    String? questionKey,
    String? errorMessage,
    Map<String, List<String>>? serverErrors,
  });
}

/// @nodoc
class __$$PasswordRecoveryStateImplCopyWithImpl<$Res>
    extends
        _$PasswordRecoveryStateCopyWithImpl<$Res, _$PasswordRecoveryStateImpl>
    implements _$$PasswordRecoveryStateImplCopyWith<$Res> {
  __$$PasswordRecoveryStateImplCopyWithImpl(
    _$PasswordRecoveryStateImpl _value,
    $Res Function(_$PasswordRecoveryStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PasswordRecoveryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mode = null,
    Object? step = null,
    Object? status = null,
    Object? nin = null,
    Object? email = null,
    Object? otp = null,
    Object? secretAnswer = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? questionKey = freezed,
    Object? errorMessage = freezed,
    Object? serverErrors = freezed,
  }) {
    return _then(
      _$PasswordRecoveryStateImpl(
        mode: null == mode
            ? _value.mode
            : mode // ignore: cast_nullable_to_non_nullable
                  as RecoveryMode,
        step: null == step
            ? _value.step
            : step // ignore: cast_nullable_to_non_nullable
                  as RecoveryStep,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as RecoveryStatus,
        nin: null == nin
            ? _value.nin
            : nin // ignore: cast_nullable_to_non_nullable
                  as NinInput,
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as EmailInput,
        otp: null == otp
            ? _value.otp
            : otp // ignore: cast_nullable_to_non_nullable
                  as String,
        secretAnswer: null == secretAnswer
            ? _value.secretAnswer
            : secretAnswer // ignore: cast_nullable_to_non_nullable
                  as String,
        password: null == password
            ? _value.password
            : password // ignore: cast_nullable_to_non_nullable
                  as NewPasswordInput,
        confirmPassword: null == confirmPassword
            ? _value.confirmPassword
            : confirmPassword // ignore: cast_nullable_to_non_nullable
                  as ConfirmPasswordInput,
        questionKey: freezed == questionKey
            ? _value.questionKey
            : questionKey // ignore: cast_nullable_to_non_nullable
                  as String?,
        errorMessage: freezed == errorMessage
            ? _value.errorMessage
            : errorMessage // ignore: cast_nullable_to_non_nullable
                  as String?,
        serverErrors: freezed == serverErrors
            ? _value._serverErrors
            : serverErrors // ignore: cast_nullable_to_non_nullable
                  as Map<String, List<String>>?,
      ),
    );
  }
}

/// @nodoc

class _$PasswordRecoveryStateImpl extends _PasswordRecoveryState {
  const _$PasswordRecoveryStateImpl({
    required this.mode,
    this.step = RecoveryStep.identify,
    this.status = RecoveryStatus.idle,
    this.nin = const NinInput.pure(),
    this.email = const EmailInput.pure(),
    this.otp = '',
    this.secretAnswer = '',
    this.password = const NewPasswordInput.pure(),
    this.confirmPassword = const ConfirmPasswordInput.pure(),
    this.questionKey,
    this.errorMessage,
    final Map<String, List<String>>? serverErrors,
  }) : _serverErrors = serverErrors,
       super._();

  @override
  final RecoveryMode mode;
  @override
  @JsonKey()
  final RecoveryStep step;
  @override
  @JsonKey()
  final RecoveryStatus status;
  @override
  @JsonKey()
  final NinInput nin;
  @override
  @JsonKey()
  final EmailInput email;
  @override
  @JsonKey()
  final String otp;
  @override
  @JsonKey()
  final String secretAnswer;
  @override
  @JsonKey()
  final NewPasswordInput password;
  @override
  @JsonKey()
  final ConfirmPasswordInput confirmPassword;

  /// مفتاح السؤال السرّي الراجع من السيرفر (مثال: mother_maiden).
  @override
  final String? questionKey;
  @override
  final String? errorMessage;
  final Map<String, List<String>>? _serverErrors;
  @override
  Map<String, List<String>>? get serverErrors {
    final value = _serverErrors;
    if (value == null) return null;
    if (_serverErrors is EqualUnmodifiableMapView) return _serverErrors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'PasswordRecoveryState(mode: $mode, step: $step, status: $status, nin: $nin, email: $email, otp: $otp, secretAnswer: $secretAnswer, password: $password, confirmPassword: $confirmPassword, questionKey: $questionKey, errorMessage: $errorMessage, serverErrors: $serverErrors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordRecoveryStateImpl &&
            (identical(other.mode, mode) || other.mode == mode) &&
            (identical(other.step, step) || other.step == step) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.nin, nin) || other.nin == nin) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.secretAnswer, secretAnswer) ||
                other.secretAnswer == secretAnswer) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.questionKey, questionKey) ||
                other.questionKey == questionKey) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality().equals(
              other._serverErrors,
              _serverErrors,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    mode,
    step,
    status,
    nin,
    email,
    otp,
    secretAnswer,
    password,
    confirmPassword,
    questionKey,
    errorMessage,
    const DeepCollectionEquality().hash(_serverErrors),
  );

  /// Create a copy of PasswordRecoveryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordRecoveryStateImplCopyWith<_$PasswordRecoveryStateImpl>
  get copyWith =>
      __$$PasswordRecoveryStateImplCopyWithImpl<_$PasswordRecoveryStateImpl>(
        this,
        _$identity,
      );
}

abstract class _PasswordRecoveryState extends PasswordRecoveryState {
  const factory _PasswordRecoveryState({
    required final RecoveryMode mode,
    final RecoveryStep step,
    final RecoveryStatus status,
    final NinInput nin,
    final EmailInput email,
    final String otp,
    final String secretAnswer,
    final NewPasswordInput password,
    final ConfirmPasswordInput confirmPassword,
    final String? questionKey,
    final String? errorMessage,
    final Map<String, List<String>>? serverErrors,
  }) = _$PasswordRecoveryStateImpl;
  const _PasswordRecoveryState._() : super._();

  @override
  RecoveryMode get mode;
  @override
  RecoveryStep get step;
  @override
  RecoveryStatus get status;
  @override
  NinInput get nin;
  @override
  EmailInput get email;
  @override
  String get otp;
  @override
  String get secretAnswer;
  @override
  NewPasswordInput get password;
  @override
  ConfirmPasswordInput get confirmPassword;

  /// مفتاح السؤال السرّي الراجع من السيرفر (مثال: mother_maiden).
  @override
  String? get questionKey;
  @override
  String? get errorMessage;
  @override
  Map<String, List<String>>? get serverErrors;

  /// Create a copy of PasswordRecoveryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PasswordRecoveryStateImplCopyWith<_$PasswordRecoveryStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}
