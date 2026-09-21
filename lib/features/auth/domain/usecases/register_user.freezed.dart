// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RegisterParams {

 String get nin; String get firstNameAr; String get lastNameAr; String get phone; String get email; String get birthDate; String get password; String get passwordConfirmation; String get deviceName;
/// Create a copy of RegisterParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterParamsCopyWith<RegisterParams> get copyWith => _$RegisterParamsCopyWithImpl<RegisterParams>(this as RegisterParams, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as RegisterParams;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterParams&&(identical(other.nin, _this.nin) || other.nin == _this.nin)&&(identical(other.firstNameAr, _this.firstNameAr) || other.firstNameAr == _this.firstNameAr)&&(identical(other.lastNameAr, _this.lastNameAr) || other.lastNameAr == _this.lastNameAr)&&(identical(other.phone, _this.phone) || other.phone == _this.phone)&&(identical(other.email, _this.email) || other.email == _this.email)&&(identical(other.birthDate, _this.birthDate) || other.birthDate == _this.birthDate)&&(identical(other.password, _this.password) || other.password == _this.password)&&(identical(other.passwordConfirmation, _this.passwordConfirmation) || other.passwordConfirmation == _this.passwordConfirmation)&&(identical(other.deviceName, _this.deviceName) || other.deviceName == _this.deviceName));
}


@override
int get hashCode {
  final _this = this as RegisterParams;
  return Object.hash(runtimeType,_this.nin,_this.firstNameAr,_this.lastNameAr,_this.phone,_this.email,_this.birthDate,_this.password,_this.passwordConfirmation,_this.deviceName);
}

@override
String toString() {
  final _this = this as RegisterParams;
  return 'RegisterParams(nin: ${_this.nin}, firstNameAr: ${_this.firstNameAr}, lastNameAr: ${_this.lastNameAr}, phone: ${_this.phone}, email: ${_this.email}, birthDate: ${_this.birthDate}, password: ${_this.password}, passwordConfirmation: ${_this.passwordConfirmation}, deviceName: ${_this.deviceName})';
}


}

/// @nodoc
abstract mixin class $RegisterParamsCopyWith<$Res>  {
  factory $RegisterParamsCopyWith(RegisterParams value, $Res Function(RegisterParams) _then) = _$RegisterParamsCopyWithImpl;
@useResult
$Res call({
 String nin, String firstNameAr, String lastNameAr, String phone, String email, String birthDate, String password, String passwordConfirmation, String deviceName
});




}
/// @nodoc
class _$RegisterParamsCopyWithImpl<$Res>
    implements $RegisterParamsCopyWith<$Res> {
  _$RegisterParamsCopyWithImpl(this._self, this._then);

  final RegisterParams _self;
  final $Res Function(RegisterParams) _then;

/// Create a copy of RegisterParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? nin = null,Object? firstNameAr = null,Object? lastNameAr = null,Object? phone = null,Object? email = null,Object? birthDate = null,Object? password = null,Object? passwordConfirmation = null,Object? deviceName = null,}) {
  return _then(RegisterParams(
nin: null == nin ? _self.nin : nin // ignore: cast_nullable_to_non_nullable
as String,firstNameAr: null == firstNameAr ? _self.firstNameAr : firstNameAr // ignore: cast_nullable_to_non_nullable
as String,lastNameAr: null == lastNameAr ? _self.lastNameAr : lastNameAr // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,birthDate: null == birthDate ? _self.birthDate : birthDate // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,passwordConfirmation: null == passwordConfirmation ? _self.passwordConfirmation : passwordConfirmation // ignore: cast_nullable_to_non_nullable
as String,deviceName: null == deviceName ? _self.deviceName : deviceName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RegisterParams].
extension RegisterParamsPatterns on RegisterParams {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RegisterParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RegisterParams() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RegisterParams value)  $default,){
final _that = this;
switch (_that) {
case _RegisterParams():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RegisterParams value)?  $default,){
final _that = this;
switch (_that) {
case _RegisterParams() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String nin,  String firstNameAr,  String lastNameAr,  String phone,  String email,  String birthDate,  String password,  String passwordConfirmation,  String deviceName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RegisterParams() when $default != null:
return $default(_that.nin,_that.firstNameAr,_that.lastNameAr,_that.phone,_that.email,_that.birthDate,_that.password,_that.passwordConfirmation,_that.deviceName);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String nin,  String firstNameAr,  String lastNameAr,  String phone,  String email,  String birthDate,  String password,  String passwordConfirmation,  String deviceName)  $default,) {final _that = this;
switch (_that) {
case _RegisterParams():
return $default(_that.nin,_that.firstNameAr,_that.lastNameAr,_that.phone,_that.email,_that.birthDate,_that.password,_that.passwordConfirmation,_that.deviceName);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String nin,  String firstNameAr,  String lastNameAr,  String phone,  String email,  String birthDate,  String password,  String passwordConfirmation,  String deviceName)?  $default,) {final _that = this;
switch (_that) {
case _RegisterParams() when $default != null:
return $default(_that.nin,_that.firstNameAr,_that.lastNameAr,_that.phone,_that.email,_that.birthDate,_that.password,_that.passwordConfirmation,_that.deviceName);case _:
  return null;

}
}

}

/// @nodoc


class _RegisterParams implements RegisterParams {
  const _RegisterParams({required this.nin, required this.firstNameAr, required this.lastNameAr, required this.phone, required this.email, required this.birthDate, required this.password, required this.passwordConfirmation, required this.deviceName});
  

@override final  String nin;
@override final  String firstNameAr;
@override final  String lastNameAr;
@override final  String phone;
@override final  String email;
@override final  String birthDate;
@override final  String password;
@override final  String passwordConfirmation;
@override final  String deviceName;

/// Create a copy of RegisterParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegisterParamsCopyWith<_RegisterParams> get copyWith => __$RegisterParamsCopyWithImpl<_RegisterParams>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegisterParams&&(identical(other.nin, nin) || other.nin == nin)&&(identical(other.firstNameAr, firstNameAr) || other.firstNameAr == firstNameAr)&&(identical(other.lastNameAr, lastNameAr) || other.lastNameAr == lastNameAr)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.email, email) || other.email == email)&&(identical(other.birthDate, birthDate) || other.birthDate == birthDate)&&(identical(other.password, password) || other.password == password)&&(identical(other.passwordConfirmation, passwordConfirmation) || other.passwordConfirmation == passwordConfirmation)&&(identical(other.deviceName, deviceName) || other.deviceName == deviceName));
}


@override
int get hashCode {
    return Object.hash(runtimeType,nin,firstNameAr,lastNameAr,phone,email,birthDate,password,passwordConfirmation,deviceName);
}

@override
String toString() {
    return 'RegisterParams(nin: $nin, firstNameAr: $firstNameAr, lastNameAr: $lastNameAr, phone: $phone, email: $email, birthDate: $birthDate, password: $password, passwordConfirmation: $passwordConfirmation, deviceName: $deviceName)';
}


}

/// @nodoc
abstract mixin class _$RegisterParamsCopyWith<$Res> implements $RegisterParamsCopyWith<$Res> {
  factory _$RegisterParamsCopyWith(_RegisterParams value, $Res Function(_RegisterParams) _then) = __$RegisterParamsCopyWithImpl;
@override @useResult
$Res call({
 String nin, String firstNameAr, String lastNameAr, String phone, String email, String birthDate, String password, String passwordConfirmation, String deviceName
});




}
/// @nodoc
class __$RegisterParamsCopyWithImpl<$Res>
    implements _$RegisterParamsCopyWith<$Res> {
  __$RegisterParamsCopyWithImpl(this._self, this._then);

  final _RegisterParams _self;
  final $Res Function(_RegisterParams) _then;

/// Create a copy of RegisterParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? nin = null,Object? firstNameAr = null,Object? lastNameAr = null,Object? phone = null,Object? email = null,Object? birthDate = null,Object? password = null,Object? passwordConfirmation = null,Object? deviceName = null,}) {
  return _then(_RegisterParams(
nin: null == nin ? _self.nin : nin // ignore: cast_nullable_to_non_nullable
as String,firstNameAr: null == firstNameAr ? _self.firstNameAr : firstNameAr // ignore: cast_nullable_to_non_nullable
as String,lastNameAr: null == lastNameAr ? _self.lastNameAr : lastNameAr // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,birthDate: null == birthDate ? _self.birthDate : birthDate // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,passwordConfirmation: null == passwordConfirmation ? _self.passwordConfirmation : passwordConfirmation // ignore: cast_nullable_to_non_nullable
as String,deviceName: null == deviceName ? _self.deviceName : deviceName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
