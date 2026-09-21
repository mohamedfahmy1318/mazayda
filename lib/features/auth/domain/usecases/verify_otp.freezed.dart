// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_otp.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$VerifyOtpParams {

 String get userId; String get otp; String get deviceName;
/// Create a copy of VerifyOtpParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VerifyOtpParamsCopyWith<VerifyOtpParams> get copyWith => _$VerifyOtpParamsCopyWithImpl<VerifyOtpParams>(this as VerifyOtpParams, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as VerifyOtpParams;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifyOtpParams&&(identical(other.userId, _this.userId) || other.userId == _this.userId)&&(identical(other.otp, _this.otp) || other.otp == _this.otp)&&(identical(other.deviceName, _this.deviceName) || other.deviceName == _this.deviceName));
}


@override
int get hashCode {
  final _this = this as VerifyOtpParams;
  return Object.hash(runtimeType,_this.userId,_this.otp,_this.deviceName);
}

@override
String toString() {
  final _this = this as VerifyOtpParams;
  return 'VerifyOtpParams(userId: ${_this.userId}, otp: ${_this.otp}, deviceName: ${_this.deviceName})';
}


}

/// @nodoc
abstract mixin class $VerifyOtpParamsCopyWith<$Res>  {
  factory $VerifyOtpParamsCopyWith(VerifyOtpParams value, $Res Function(VerifyOtpParams) _then) = _$VerifyOtpParamsCopyWithImpl;
@useResult
$Res call({
 String userId, String otp, String deviceName
});




}
/// @nodoc
class _$VerifyOtpParamsCopyWithImpl<$Res>
    implements $VerifyOtpParamsCopyWith<$Res> {
  _$VerifyOtpParamsCopyWithImpl(this._self, this._then);

  final VerifyOtpParams _self;
  final $Res Function(VerifyOtpParams) _then;

/// Create a copy of VerifyOtpParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? otp = null,Object? deviceName = null,}) {
  return _then(VerifyOtpParams(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,otp: null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String,deviceName: null == deviceName ? _self.deviceName : deviceName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [VerifyOtpParams].
extension VerifyOtpParamsPatterns on VerifyOtpParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VerifyOtpParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VerifyOtpParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VerifyOtpParams value)  $default,){
final _that = this;
switch (_that) {
case _VerifyOtpParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VerifyOtpParams value)?  $default,){
final _that = this;
switch (_that) {
case _VerifyOtpParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String userId,  String otp,  String deviceName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VerifyOtpParams() when $default != null:
return $default(_that.userId,_that.otp,_that.deviceName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String userId,  String otp,  String deviceName)  $default,) {final _that = this;
switch (_that) {
case _VerifyOtpParams():
return $default(_that.userId,_that.otp,_that.deviceName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String userId,  String otp,  String deviceName)?  $default,) {final _that = this;
switch (_that) {
case _VerifyOtpParams() when $default != null:
return $default(_that.userId,_that.otp,_that.deviceName);case _:
  return null;

}
}

}

/// @nodoc


class _VerifyOtpParams implements VerifyOtpParams {
  const _VerifyOtpParams({required this.userId, required this.otp, required this.deviceName});
  

@override final  String userId;
@override final  String otp;
@override final  String deviceName;

/// Create a copy of VerifyOtpParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VerifyOtpParamsCopyWith<_VerifyOtpParams> get copyWith => __$VerifyOtpParamsCopyWithImpl<_VerifyOtpParams>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _VerifyOtpParams&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.otp, otp) || other.otp == otp)&&(identical(other.deviceName, deviceName) || other.deviceName == deviceName));
}


@override
int get hashCode {
    return Object.hash(runtimeType,userId,otp,deviceName);
}

@override
String toString() {
    return 'VerifyOtpParams(userId: $userId, otp: $otp, deviceName: $deviceName)';
}


}

/// @nodoc
abstract mixin class _$VerifyOtpParamsCopyWith<$Res> implements $VerifyOtpParamsCopyWith<$Res> {
  factory _$VerifyOtpParamsCopyWith(_VerifyOtpParams value, $Res Function(_VerifyOtpParams) _then) = __$VerifyOtpParamsCopyWithImpl;
@override @useResult
$Res call({
 String userId, String otp, String deviceName
});




}
/// @nodoc
class __$VerifyOtpParamsCopyWithImpl<$Res>
    implements _$VerifyOtpParamsCopyWith<$Res> {
  __$VerifyOtpParamsCopyWithImpl(this._self, this._then);

  final _VerifyOtpParams _self;
  final $Res Function(_VerifyOtpParams) _then;

/// Create a copy of VerifyOtpParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? otp = null,Object? deviceName = null,}) {
  return _then(_VerifyOtpParams(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,otp: null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String,deviceName: null == deviceName ? _self.deviceName : deviceName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
