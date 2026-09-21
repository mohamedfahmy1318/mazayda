// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UpdateProfileParams {

 String? get phone; String? get email; String? get address; String? get postalCode; String? get profession;
/// Create a copy of UpdateProfileParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateProfileParamsCopyWith<UpdateProfileParams> get copyWith => _$UpdateProfileParamsCopyWithImpl<UpdateProfileParams>(this as UpdateProfileParams, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as UpdateProfileParams;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateProfileParams&&(identical(other.phone, _this.phone) || other.phone == _this.phone)&&(identical(other.email, _this.email) || other.email == _this.email)&&(identical(other.address, _this.address) || other.address == _this.address)&&(identical(other.postalCode, _this.postalCode) || other.postalCode == _this.postalCode)&&(identical(other.profession, _this.profession) || other.profession == _this.profession));
}


@override
int get hashCode {
  final _this = this as UpdateProfileParams;
  return Object.hash(runtimeType,_this.phone,_this.email,_this.address,_this.postalCode,_this.profession);
}

@override
String toString() {
  final _this = this as UpdateProfileParams;
  return 'UpdateProfileParams(phone: ${_this.phone}, email: ${_this.email}, address: ${_this.address}, postalCode: ${_this.postalCode}, profession: ${_this.profession})';
}


}

/// @nodoc
abstract mixin class $UpdateProfileParamsCopyWith<$Res>  {
  factory $UpdateProfileParamsCopyWith(UpdateProfileParams value, $Res Function(UpdateProfileParams) _then) = _$UpdateProfileParamsCopyWithImpl;
@useResult
$Res call({
 String? phone, String? email, String? address, String? postalCode, String? profession
});




}
/// @nodoc
class _$UpdateProfileParamsCopyWithImpl<$Res>
    implements $UpdateProfileParamsCopyWith<$Res> {
  _$UpdateProfileParamsCopyWithImpl(this._self, this._then);

  final UpdateProfileParams _self;
  final $Res Function(UpdateProfileParams) _then;

/// Create a copy of UpdateProfileParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? phone = freezed,Object? email = freezed,Object? address = freezed,Object? postalCode = freezed,Object? profession = freezed,}) {
  return _then(UpdateProfileParams(
phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,postalCode: freezed == postalCode ? _self.postalCode : postalCode // ignore: cast_nullable_to_non_nullable
as String?,profession: freezed == profession ? _self.profession : profession // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [UpdateProfileParams].
extension UpdateProfileParamsPatterns on UpdateProfileParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UpdateProfileParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateProfileParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UpdateProfileParams value)  $default,){
final _that = this;
switch (_that) {
case _UpdateProfileParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UpdateProfileParams value)?  $default,){
final _that = this;
switch (_that) {
case _UpdateProfileParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? phone,  String? email,  String? address,  String? postalCode,  String? profession)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateProfileParams() when $default != null:
return $default(_that.phone,_that.email,_that.address,_that.postalCode,_that.profession);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? phone,  String? email,  String? address,  String? postalCode,  String? profession)  $default,) {final _that = this;
switch (_that) {
case _UpdateProfileParams():
return $default(_that.phone,_that.email,_that.address,_that.postalCode,_that.profession);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? phone,  String? email,  String? address,  String? postalCode,  String? profession)?  $default,) {final _that = this;
switch (_that) {
case _UpdateProfileParams() when $default != null:
return $default(_that.phone,_that.email,_that.address,_that.postalCode,_that.profession);case _:
  return null;

}
}

}

/// @nodoc


class _UpdateProfileParams implements UpdateProfileParams {
  const _UpdateProfileParams({this.phone, this.email, this.address, this.postalCode, this.profession});
  

@override final  String? phone;
@override final  String? email;
@override final  String? address;
@override final  String? postalCode;
@override final  String? profession;

/// Create a copy of UpdateProfileParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateProfileParamsCopyWith<_UpdateProfileParams> get copyWith => __$UpdateProfileParamsCopyWithImpl<_UpdateProfileParams>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateProfileParams&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.email, email) || other.email == email)&&(identical(other.address, address) || other.address == address)&&(identical(other.postalCode, postalCode) || other.postalCode == postalCode)&&(identical(other.profession, profession) || other.profession == profession));
}


@override
int get hashCode {
    return Object.hash(runtimeType,phone,email,address,postalCode,profession);
}

@override
String toString() {
    return 'UpdateProfileParams(phone: $phone, email: $email, address: $address, postalCode: $postalCode, profession: $profession)';
}


}

/// @nodoc
abstract mixin class _$UpdateProfileParamsCopyWith<$Res> implements $UpdateProfileParamsCopyWith<$Res> {
  factory _$UpdateProfileParamsCopyWith(_UpdateProfileParams value, $Res Function(_UpdateProfileParams) _then) = __$UpdateProfileParamsCopyWithImpl;
@override @useResult
$Res call({
 String? phone, String? email, String? address, String? postalCode, String? profession
});




}
/// @nodoc
class __$UpdateProfileParamsCopyWithImpl<$Res>
    implements _$UpdateProfileParamsCopyWith<$Res> {
  __$UpdateProfileParamsCopyWithImpl(this._self, this._then);

  final _UpdateProfileParams _self;
  final $Res Function(_UpdateProfileParams) _then;

/// Create a copy of UpdateProfileParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? phone = freezed,Object? email = freezed,Object? address = freezed,Object? postalCode = freezed,Object? profession = freezed,}) {
  return _then(_UpdateProfileParams(
phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,postalCode: freezed == postalCode ? _self.postalCode : postalCode // ignore: cast_nullable_to_non_nullable
as String?,profession: freezed == profession ? _self.profession : profession // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
