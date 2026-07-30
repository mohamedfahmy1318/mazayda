// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'password_recovery_usecases.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$IdentifyAccountParams {
  String get nin => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  /// Create a copy of IdentifyAccountParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IdentifyAccountParamsCopyWith<IdentifyAccountParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdentifyAccountParamsCopyWith<$Res> {
  factory $IdentifyAccountParamsCopyWith(
    IdentifyAccountParams value,
    $Res Function(IdentifyAccountParams) then,
  ) = _$IdentifyAccountParamsCopyWithImpl<$Res, IdentifyAccountParams>;
  @useResult
  $Res call({String nin, String email});
}

/// @nodoc
class _$IdentifyAccountParamsCopyWithImpl<
  $Res,
  $Val extends IdentifyAccountParams
>
    implements $IdentifyAccountParamsCopyWith<$Res> {
  _$IdentifyAccountParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IdentifyAccountParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? nin = null, Object? email = null}) {
    return _then(
      _value.copyWith(
            nin: null == nin
                ? _value.nin
                : nin // ignore: cast_nullable_to_non_nullable
                      as String,
            email: null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$IdentifyAccountParamsImplCopyWith<$Res>
    implements $IdentifyAccountParamsCopyWith<$Res> {
  factory _$$IdentifyAccountParamsImplCopyWith(
    _$IdentifyAccountParamsImpl value,
    $Res Function(_$IdentifyAccountParamsImpl) then,
  ) = __$$IdentifyAccountParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String nin, String email});
}

/// @nodoc
class __$$IdentifyAccountParamsImplCopyWithImpl<$Res>
    extends
        _$IdentifyAccountParamsCopyWithImpl<$Res, _$IdentifyAccountParamsImpl>
    implements _$$IdentifyAccountParamsImplCopyWith<$Res> {
  __$$IdentifyAccountParamsImplCopyWithImpl(
    _$IdentifyAccountParamsImpl _value,
    $Res Function(_$IdentifyAccountParamsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of IdentifyAccountParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? nin = null, Object? email = null}) {
    return _then(
      _$IdentifyAccountParamsImpl(
        nin: null == nin
            ? _value.nin
            : nin // ignore: cast_nullable_to_non_nullable
                  as String,
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$IdentifyAccountParamsImpl implements _IdentifyAccountParams {
  const _$IdentifyAccountParamsImpl({required this.nin, required this.email});

  @override
  final String nin;
  @override
  final String email;

  @override
  String toString() {
    return 'IdentifyAccountParams(nin: $nin, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdentifyAccountParamsImpl &&
            (identical(other.nin, nin) || other.nin == nin) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, nin, email);

  /// Create a copy of IdentifyAccountParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IdentifyAccountParamsImplCopyWith<_$IdentifyAccountParamsImpl>
  get copyWith =>
      __$$IdentifyAccountParamsImplCopyWithImpl<_$IdentifyAccountParamsImpl>(
        this,
        _$identity,
      );
}

abstract class _IdentifyAccountParams implements IdentifyAccountParams {
  const factory _IdentifyAccountParams({
    required final String nin,
    required final String email,
  }) = _$IdentifyAccountParamsImpl;

  @override
  String get nin;
  @override
  String get email;

  /// Create a copy of IdentifyAccountParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IdentifyAccountParamsImplCopyWith<_$IdentifyAccountParamsImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VerifyPasswordResetParams {
  String get nin => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get otp => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get passwordConfirmation => throw _privateConstructorUsedError;

  /// Create a copy of VerifyPasswordResetParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VerifyPasswordResetParamsCopyWith<VerifyPasswordResetParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyPasswordResetParamsCopyWith<$Res> {
  factory $VerifyPasswordResetParamsCopyWith(
    VerifyPasswordResetParams value,
    $Res Function(VerifyPasswordResetParams) then,
  ) = _$VerifyPasswordResetParamsCopyWithImpl<$Res, VerifyPasswordResetParams>;
  @useResult
  $Res call({
    String nin,
    String email,
    String otp,
    String password,
    String passwordConfirmation,
  });
}

/// @nodoc
class _$VerifyPasswordResetParamsCopyWithImpl<
  $Res,
  $Val extends VerifyPasswordResetParams
>
    implements $VerifyPasswordResetParamsCopyWith<$Res> {
  _$VerifyPasswordResetParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VerifyPasswordResetParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nin = null,
    Object? email = null,
    Object? otp = null,
    Object? password = null,
    Object? passwordConfirmation = null,
  }) {
    return _then(
      _value.copyWith(
            nin: null == nin
                ? _value.nin
                : nin // ignore: cast_nullable_to_non_nullable
                      as String,
            email: null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String,
            otp: null == otp
                ? _value.otp
                : otp // ignore: cast_nullable_to_non_nullable
                      as String,
            password: null == password
                ? _value.password
                : password // ignore: cast_nullable_to_non_nullable
                      as String,
            passwordConfirmation: null == passwordConfirmation
                ? _value.passwordConfirmation
                : passwordConfirmation // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$VerifyPasswordResetParamsImplCopyWith<$Res>
    implements $VerifyPasswordResetParamsCopyWith<$Res> {
  factory _$$VerifyPasswordResetParamsImplCopyWith(
    _$VerifyPasswordResetParamsImpl value,
    $Res Function(_$VerifyPasswordResetParamsImpl) then,
  ) = __$$VerifyPasswordResetParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String nin,
    String email,
    String otp,
    String password,
    String passwordConfirmation,
  });
}

/// @nodoc
class __$$VerifyPasswordResetParamsImplCopyWithImpl<$Res>
    extends
        _$VerifyPasswordResetParamsCopyWithImpl<
          $Res,
          _$VerifyPasswordResetParamsImpl
        >
    implements _$$VerifyPasswordResetParamsImplCopyWith<$Res> {
  __$$VerifyPasswordResetParamsImplCopyWithImpl(
    _$VerifyPasswordResetParamsImpl _value,
    $Res Function(_$VerifyPasswordResetParamsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of VerifyPasswordResetParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nin = null,
    Object? email = null,
    Object? otp = null,
    Object? password = null,
    Object? passwordConfirmation = null,
  }) {
    return _then(
      _$VerifyPasswordResetParamsImpl(
        nin: null == nin
            ? _value.nin
            : nin // ignore: cast_nullable_to_non_nullable
                  as String,
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
        otp: null == otp
            ? _value.otp
            : otp // ignore: cast_nullable_to_non_nullable
                  as String,
        password: null == password
            ? _value.password
            : password // ignore: cast_nullable_to_non_nullable
                  as String,
        passwordConfirmation: null == passwordConfirmation
            ? _value.passwordConfirmation
            : passwordConfirmation // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$VerifyPasswordResetParamsImpl implements _VerifyPasswordResetParams {
  const _$VerifyPasswordResetParamsImpl({
    required this.nin,
    required this.email,
    required this.otp,
    required this.password,
    required this.passwordConfirmation,
  });

  @override
  final String nin;
  @override
  final String email;
  @override
  final String otp;
  @override
  final String password;
  @override
  final String passwordConfirmation;

  @override
  String toString() {
    return 'VerifyPasswordResetParams(nin: $nin, email: $email, otp: $otp, password: $password, passwordConfirmation: $passwordConfirmation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyPasswordResetParamsImpl &&
            (identical(other.nin, nin) || other.nin == nin) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.passwordConfirmation, passwordConfirmation) ||
                other.passwordConfirmation == passwordConfirmation));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, nin, email, otp, password, passwordConfirmation);

  /// Create a copy of VerifyPasswordResetParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyPasswordResetParamsImplCopyWith<_$VerifyPasswordResetParamsImpl>
  get copyWith =>
      __$$VerifyPasswordResetParamsImplCopyWithImpl<
        _$VerifyPasswordResetParamsImpl
      >(this, _$identity);
}

abstract class _VerifyPasswordResetParams implements VerifyPasswordResetParams {
  const factory _VerifyPasswordResetParams({
    required final String nin,
    required final String email,
    required final String otp,
    required final String password,
    required final String passwordConfirmation,
  }) = _$VerifyPasswordResetParamsImpl;

  @override
  String get nin;
  @override
  String get email;
  @override
  String get otp;
  @override
  String get password;
  @override
  String get passwordConfirmation;

  /// Create a copy of VerifyPasswordResetParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerifyPasswordResetParamsImplCopyWith<_$VerifyPasswordResetParamsImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RecoverBySecretParams {
  String get nin => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get secretAnswer => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get passwordConfirmation => throw _privateConstructorUsedError;

  /// Create a copy of RecoverBySecretParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecoverBySecretParamsCopyWith<RecoverBySecretParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecoverBySecretParamsCopyWith<$Res> {
  factory $RecoverBySecretParamsCopyWith(
    RecoverBySecretParams value,
    $Res Function(RecoverBySecretParams) then,
  ) = _$RecoverBySecretParamsCopyWithImpl<$Res, RecoverBySecretParams>;
  @useResult
  $Res call({
    String nin,
    String email,
    String secretAnswer,
    String password,
    String passwordConfirmation,
  });
}

/// @nodoc
class _$RecoverBySecretParamsCopyWithImpl<
  $Res,
  $Val extends RecoverBySecretParams
>
    implements $RecoverBySecretParamsCopyWith<$Res> {
  _$RecoverBySecretParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecoverBySecretParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nin = null,
    Object? email = null,
    Object? secretAnswer = null,
    Object? password = null,
    Object? passwordConfirmation = null,
  }) {
    return _then(
      _value.copyWith(
            nin: null == nin
                ? _value.nin
                : nin // ignore: cast_nullable_to_non_nullable
                      as String,
            email: null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String,
            secretAnswer: null == secretAnswer
                ? _value.secretAnswer
                : secretAnswer // ignore: cast_nullable_to_non_nullable
                      as String,
            password: null == password
                ? _value.password
                : password // ignore: cast_nullable_to_non_nullable
                      as String,
            passwordConfirmation: null == passwordConfirmation
                ? _value.passwordConfirmation
                : passwordConfirmation // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RecoverBySecretParamsImplCopyWith<$Res>
    implements $RecoverBySecretParamsCopyWith<$Res> {
  factory _$$RecoverBySecretParamsImplCopyWith(
    _$RecoverBySecretParamsImpl value,
    $Res Function(_$RecoverBySecretParamsImpl) then,
  ) = __$$RecoverBySecretParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String nin,
    String email,
    String secretAnswer,
    String password,
    String passwordConfirmation,
  });
}

/// @nodoc
class __$$RecoverBySecretParamsImplCopyWithImpl<$Res>
    extends
        _$RecoverBySecretParamsCopyWithImpl<$Res, _$RecoverBySecretParamsImpl>
    implements _$$RecoverBySecretParamsImplCopyWith<$Res> {
  __$$RecoverBySecretParamsImplCopyWithImpl(
    _$RecoverBySecretParamsImpl _value,
    $Res Function(_$RecoverBySecretParamsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RecoverBySecretParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nin = null,
    Object? email = null,
    Object? secretAnswer = null,
    Object? password = null,
    Object? passwordConfirmation = null,
  }) {
    return _then(
      _$RecoverBySecretParamsImpl(
        nin: null == nin
            ? _value.nin
            : nin // ignore: cast_nullable_to_non_nullable
                  as String,
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
        secretAnswer: null == secretAnswer
            ? _value.secretAnswer
            : secretAnswer // ignore: cast_nullable_to_non_nullable
                  as String,
        password: null == password
            ? _value.password
            : password // ignore: cast_nullable_to_non_nullable
                  as String,
        passwordConfirmation: null == passwordConfirmation
            ? _value.passwordConfirmation
            : passwordConfirmation // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$RecoverBySecretParamsImpl implements _RecoverBySecretParams {
  const _$RecoverBySecretParamsImpl({
    required this.nin,
    required this.email,
    required this.secretAnswer,
    required this.password,
    required this.passwordConfirmation,
  });

  @override
  final String nin;
  @override
  final String email;
  @override
  final String secretAnswer;
  @override
  final String password;
  @override
  final String passwordConfirmation;

  @override
  String toString() {
    return 'RecoverBySecretParams(nin: $nin, email: $email, secretAnswer: $secretAnswer, password: $password, passwordConfirmation: $passwordConfirmation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecoverBySecretParamsImpl &&
            (identical(other.nin, nin) || other.nin == nin) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.secretAnswer, secretAnswer) ||
                other.secretAnswer == secretAnswer) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.passwordConfirmation, passwordConfirmation) ||
                other.passwordConfirmation == passwordConfirmation));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    nin,
    email,
    secretAnswer,
    password,
    passwordConfirmation,
  );

  /// Create a copy of RecoverBySecretParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecoverBySecretParamsImplCopyWith<_$RecoverBySecretParamsImpl>
  get copyWith =>
      __$$RecoverBySecretParamsImplCopyWithImpl<_$RecoverBySecretParamsImpl>(
        this,
        _$identity,
      );
}

abstract class _RecoverBySecretParams implements RecoverBySecretParams {
  const factory _RecoverBySecretParams({
    required final String nin,
    required final String email,
    required final String secretAnswer,
    required final String password,
    required final String passwordConfirmation,
  }) = _$RecoverBySecretParamsImpl;

  @override
  String get nin;
  @override
  String get email;
  @override
  String get secretAnswer;
  @override
  String get password;
  @override
  String get passwordConfirmation;

  /// Create a copy of RecoverBySecretParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecoverBySecretParamsImplCopyWith<_$RecoverBySecretParamsImpl>
  get copyWith => throw _privateConstructorUsedError;
}
