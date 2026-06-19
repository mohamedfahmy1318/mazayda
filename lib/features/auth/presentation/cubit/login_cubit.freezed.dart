// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$LoginState {
  RequiredInput get identifier => throw _privateConstructorUsedError;
  PasswordInput get password => throw _privateConstructorUsedError;
  LoginStatus get status => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;
  String? get userId =>
      throw _privateConstructorUsedError; // عند الحاجة لتأكيد البريد
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
    LoginState value,
    $Res Function(LoginState) then,
  ) = _$LoginStateCopyWithImpl<$Res, LoginState>;
  @useResult
  $Res call({
    RequiredInput identifier,
    PasswordInput password,
    LoginStatus status,
    bool isValid,
    String? userId,
    String? errorMessage,
  });
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = null,
    Object? password = null,
    Object? status = null,
    Object? isValid = null,
    Object? userId = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(
      _value.copyWith(
            identifier: null == identifier
                ? _value.identifier
                : identifier // ignore: cast_nullable_to_non_nullable
                      as RequiredInput,
            password: null == password
                ? _value.password
                : password // ignore: cast_nullable_to_non_nullable
                      as PasswordInput,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as LoginStatus,
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
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LoginStateImplCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$LoginStateImplCopyWith(
    _$LoginStateImpl value,
    $Res Function(_$LoginStateImpl) then,
  ) = __$$LoginStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    RequiredInput identifier,
    PasswordInput password,
    LoginStatus status,
    bool isValid,
    String? userId,
    String? errorMessage,
  });
}

/// @nodoc
class __$$LoginStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateImpl>
    implements _$$LoginStateImplCopyWith<$Res> {
  __$$LoginStateImplCopyWithImpl(
    _$LoginStateImpl _value,
    $Res Function(_$LoginStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = null,
    Object? password = null,
    Object? status = null,
    Object? isValid = null,
    Object? userId = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(
      _$LoginStateImpl(
        identifier: null == identifier
            ? _value.identifier
            : identifier // ignore: cast_nullable_to_non_nullable
                  as RequiredInput,
        password: null == password
            ? _value.password
            : password // ignore: cast_nullable_to_non_nullable
                  as PasswordInput,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as LoginStatus,
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
      ),
    );
  }
}

/// @nodoc

class _$LoginStateImpl extends _LoginState {
  const _$LoginStateImpl({
    this.identifier = const RequiredInput.pure(),
    this.password = const PasswordInput.pure(),
    this.status = LoginStatus.idle,
    this.isValid = false,
    this.userId,
    this.errorMessage,
  }) : super._();

  @override
  @JsonKey()
  final RequiredInput identifier;
  @override
  @JsonKey()
  final PasswordInput password;
  @override
  @JsonKey()
  final LoginStatus status;
  @override
  @JsonKey()
  final bool isValid;
  @override
  final String? userId;
  // عند الحاجة لتأكيد البريد
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'LoginState(identifier: $identifier, password: $password, status: $status, isValid: $isValid, userId: $userId, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginStateImpl &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    identifier,
    password,
    status,
    isValid,
    userId,
    errorMessage,
  );

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      __$$LoginStateImplCopyWithImpl<_$LoginStateImpl>(this, _$identity);
}

abstract class _LoginState extends LoginState {
  const factory _LoginState({
    final RequiredInput identifier,
    final PasswordInput password,
    final LoginStatus status,
    final bool isValid,
    final String? userId,
    final String? errorMessage,
  }) = _$LoginStateImpl;
  const _LoginState._() : super._();

  @override
  RequiredInput get identifier;
  @override
  PasswordInput get password;
  @override
  LoginStatus get status;
  @override
  bool get isValid;
  @override
  String? get userId; // عند الحاجة لتأكيد البريد
  @override
  String? get errorMessage;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
