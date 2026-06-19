// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$RegisterState {
  NinInput get nin => throw _privateConstructorUsedError;
  NameInput get firstName => throw _privateConstructorUsedError;
  NameInput get lastName => throw _privateConstructorUsedError;
  PhoneInput get phone => throw _privateConstructorUsedError;
  EmailInput get email => throw _privateConstructorUsedError;
  PasswordInput get password => throw _privateConstructorUsedError;
  ConfirmPasswordInput get confirmPassword =>
      throw _privateConstructorUsedError;
  RegisterStatus get status => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;
  String? get userId =>
      throw _privateConstructorUsedError; // عند النجاح → للـ OTP
  String? get errorMessage =>
      throw _privateConstructorUsedError; // أخطاء التحقق من السيرفر (مثلاً: البريد مستخدم بالفعل)
  Map<String, List<String>>? get serverErrors =>
      throw _privateConstructorUsedError;

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegisterStateCopyWith<RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
    RegisterState value,
    $Res Function(RegisterState) then,
  ) = _$RegisterStateCopyWithImpl<$Res, RegisterState>;
  @useResult
  $Res call({
    NinInput nin,
    NameInput firstName,
    NameInput lastName,
    PhoneInput phone,
    EmailInput email,
    PasswordInput password,
    ConfirmPasswordInput confirmPassword,
    RegisterStatus status,
    bool isValid,
    String? userId,
    String? errorMessage,
    Map<String, List<String>>? serverErrors,
  });
}

/// @nodoc
class _$RegisterStateCopyWithImpl<$Res, $Val extends RegisterState>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nin = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? phone = null,
    Object? email = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? status = null,
    Object? isValid = null,
    Object? userId = freezed,
    Object? errorMessage = freezed,
    Object? serverErrors = freezed,
  }) {
    return _then(
      _value.copyWith(
            nin: null == nin
                ? _value.nin
                : nin // ignore: cast_nullable_to_non_nullable
                      as NinInput,
            firstName: null == firstName
                ? _value.firstName
                : firstName // ignore: cast_nullable_to_non_nullable
                      as NameInput,
            lastName: null == lastName
                ? _value.lastName
                : lastName // ignore: cast_nullable_to_non_nullable
                      as NameInput,
            phone: null == phone
                ? _value.phone
                : phone // ignore: cast_nullable_to_non_nullable
                      as PhoneInput,
            email: null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as EmailInput,
            password: null == password
                ? _value.password
                : password // ignore: cast_nullable_to_non_nullable
                      as PasswordInput,
            confirmPassword: null == confirmPassword
                ? _value.confirmPassword
                : confirmPassword // ignore: cast_nullable_to_non_nullable
                      as ConfirmPasswordInput,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as RegisterStatus,
            isValid: null == isValid
                ? _value.isValid
                : isValid // ignore: cast_nullable_to_non_nullable
                      as bool,
            userId: freezed == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$RegisterStateImplCopyWith<$Res>
    implements $RegisterStateCopyWith<$Res> {
  factory _$$RegisterStateImplCopyWith(
    _$RegisterStateImpl value,
    $Res Function(_$RegisterStateImpl) then,
  ) = __$$RegisterStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    NinInput nin,
    NameInput firstName,
    NameInput lastName,
    PhoneInput phone,
    EmailInput email,
    PasswordInput password,
    ConfirmPasswordInput confirmPassword,
    RegisterStatus status,
    bool isValid,
    String? userId,
    String? errorMessage,
    Map<String, List<String>>? serverErrors,
  });
}

/// @nodoc
class __$$RegisterStateImplCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$RegisterStateImpl>
    implements _$$RegisterStateImplCopyWith<$Res> {
  __$$RegisterStateImplCopyWithImpl(
    _$RegisterStateImpl _value,
    $Res Function(_$RegisterStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nin = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? phone = null,
    Object? email = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? status = null,
    Object? isValid = null,
    Object? userId = freezed,
    Object? errorMessage = freezed,
    Object? serverErrors = freezed,
  }) {
    return _then(
      _$RegisterStateImpl(
        nin: null == nin
            ? _value.nin
            : nin // ignore: cast_nullable_to_non_nullable
                  as NinInput,
        firstName: null == firstName
            ? _value.firstName
            : firstName // ignore: cast_nullable_to_non_nullable
                  as NameInput,
        lastName: null == lastName
            ? _value.lastName
            : lastName // ignore: cast_nullable_to_non_nullable
                  as NameInput,
        phone: null == phone
            ? _value.phone
            : phone // ignore: cast_nullable_to_non_nullable
                  as PhoneInput,
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as EmailInput,
        password: null == password
            ? _value.password
            : password // ignore: cast_nullable_to_non_nullable
                  as PasswordInput,
        confirmPassword: null == confirmPassword
            ? _value.confirmPassword
            : confirmPassword // ignore: cast_nullable_to_non_nullable
                  as ConfirmPasswordInput,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as RegisterStatus,
        isValid: null == isValid
            ? _value.isValid
            : isValid // ignore: cast_nullable_to_non_nullable
                  as bool,
        userId: freezed == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
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

class _$RegisterStateImpl extends _RegisterState {
  const _$RegisterStateImpl({
    this.nin = const NinInput.pure(),
    this.firstName = const NameInput.pure(),
    this.lastName = const NameInput.pure(),
    this.phone = const PhoneInput.pure(),
    this.email = const EmailInput.pure(),
    this.password = const PasswordInput.pure(),
    this.confirmPassword = const ConfirmPasswordInput.pure(),
    this.status = RegisterStatus.idle,
    this.isValid = false,
    this.userId,
    this.errorMessage,
    final Map<String, List<String>>? serverErrors,
  }) : _serverErrors = serverErrors,
       super._();

  @override
  @JsonKey()
  final NinInput nin;
  @override
  @JsonKey()
  final NameInput firstName;
  @override
  @JsonKey()
  final NameInput lastName;
  @override
  @JsonKey()
  final PhoneInput phone;
  @override
  @JsonKey()
  final EmailInput email;
  @override
  @JsonKey()
  final PasswordInput password;
  @override
  @JsonKey()
  final ConfirmPasswordInput confirmPassword;
  @override
  @JsonKey()
  final RegisterStatus status;
  @override
  @JsonKey()
  final bool isValid;
  @override
  final String? userId;
  // عند النجاح → للـ OTP
  @override
  final String? errorMessage;
  // أخطاء التحقق من السيرفر (مثلاً: البريد مستخدم بالفعل)
  final Map<String, List<String>>? _serverErrors;
  // أخطاء التحقق من السيرفر (مثلاً: البريد مستخدم بالفعل)
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
    return 'RegisterState(nin: $nin, firstName: $firstName, lastName: $lastName, phone: $phone, email: $email, password: $password, confirmPassword: $confirmPassword, status: $status, isValid: $isValid, userId: $userId, errorMessage: $errorMessage, serverErrors: $serverErrors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterStateImpl &&
            (identical(other.nin, nin) || other.nin == nin) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.userId, userId) || other.userId == userId) &&
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
    nin,
    firstName,
    lastName,
    phone,
    email,
    password,
    confirmPassword,
    status,
    isValid,
    userId,
    errorMessage,
    const DeepCollectionEquality().hash(_serverErrors),
  );

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterStateImplCopyWith<_$RegisterStateImpl> get copyWith =>
      __$$RegisterStateImplCopyWithImpl<_$RegisterStateImpl>(this, _$identity);
}

abstract class _RegisterState extends RegisterState {
  const factory _RegisterState({
    final NinInput nin,
    final NameInput firstName,
    final NameInput lastName,
    final PhoneInput phone,
    final EmailInput email,
    final PasswordInput password,
    final ConfirmPasswordInput confirmPassword,
    final RegisterStatus status,
    final bool isValid,
    final String? userId,
    final String? errorMessage,
    final Map<String, List<String>>? serverErrors,
  }) = _$RegisterStateImpl;
  const _RegisterState._() : super._();

  @override
  NinInput get nin;
  @override
  NameInput get firstName;
  @override
  NameInput get lastName;
  @override
  PhoneInput get phone;
  @override
  EmailInput get email;
  @override
  PasswordInput get password;
  @override
  ConfirmPasswordInput get confirmPassword;
  @override
  RegisterStatus get status;
  @override
  bool get isValid;
  @override
  String? get userId; // عند النجاح → للـ OTP
  @override
  String? get errorMessage; // أخطاء التحقق من السيرفر (مثلاً: البريد مستخدم بالفعل)
  @override
  Map<String, List<String>>? get serverErrors;

  /// Create a copy of RegisterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterStateImplCopyWith<_$RegisterStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
