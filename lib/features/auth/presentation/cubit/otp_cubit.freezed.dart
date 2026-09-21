// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$OtpState {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is OtpState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'OtpState()';
}


}

/// @nodoc
class $OtpStateCopyWith<$Res>  {
$OtpStateCopyWith(OtpState _, $Res Function(OtpState) __);
}


/// Adds pattern-matching-related methods to [OtpState].
extension OtpStatePatterns on OtpState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( OtpInitial value)?  initial,TResult Function( OtpVerifying value)?  verifying,TResult Function( OtpVerified value)?  verified,TResult Function( OtpError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case OtpInitial() when initial != null:
return initial(_that);case OtpVerifying() when verifying != null:
return verifying(_that);case OtpVerified() when verified != null:
return verified(_that);case OtpError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( OtpInitial value)  initial,required TResult Function( OtpVerifying value)  verifying,required TResult Function( OtpVerified value)  verified,required TResult Function( OtpError value)  error,}){
final _that = this;
switch (_that) {
case OtpInitial():
return initial(_that);case OtpVerifying():
return verifying(_that);case OtpVerified():
return verified(_that);case OtpError():
return error(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( OtpInitial value)?  initial,TResult? Function( OtpVerifying value)?  verifying,TResult? Function( OtpVerified value)?  verified,TResult? Function( OtpError value)?  error,}){
final _that = this;
switch (_that) {
case OtpInitial() when initial != null:
return initial(_that);case OtpVerifying() when verifying != null:
return verifying(_that);case OtpVerified() when verified != null:
return verified(_that);case OtpError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int cooldown)?  initial,TResult Function()?  verifying,TResult Function()?  verified,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case OtpInitial() when initial != null:
return initial(_that.cooldown);case OtpVerifying() when verifying != null:
return verifying();case OtpVerified() when verified != null:
return verified();case OtpError() when error != null:
return error(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int cooldown)  initial,required TResult Function()  verifying,required TResult Function()  verified,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case OtpInitial():
return initial(_that.cooldown);case OtpVerifying():
return verifying();case OtpVerified():
return verified();case OtpError():
return error(_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int cooldown)?  initial,TResult? Function()?  verifying,TResult? Function()?  verified,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case OtpInitial() when initial != null:
return initial(_that.cooldown);case OtpVerifying() when verifying != null:
return verifying();case OtpVerified() when verified != null:
return verified();case OtpError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class OtpInitial implements OtpState {
  const OtpInitial({this.cooldown = 0});
  

@JsonKey() final  int cooldown;

/// Create a copy of OtpState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OtpInitialCopyWith<OtpInitial> get copyWith => _$OtpInitialCopyWithImpl<OtpInitial>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is OtpInitial&&(identical(other.cooldown, cooldown) || other.cooldown == cooldown));
}


@override
int get hashCode {
    return Object.hash(runtimeType,cooldown);
}

@override
String toString() {
    return 'OtpState.initial(cooldown: $cooldown)';
}


}

/// @nodoc
abstract mixin class $OtpInitialCopyWith<$Res> implements $OtpStateCopyWith<$Res> {
  factory $OtpInitialCopyWith(OtpInitial value, $Res Function(OtpInitial) _then) = _$OtpInitialCopyWithImpl;
@useResult
$Res call({
 int cooldown
});




}
/// @nodoc
class _$OtpInitialCopyWithImpl<$Res>
    implements $OtpInitialCopyWith<$Res> {
  _$OtpInitialCopyWithImpl(this._self, this._then);

  final OtpInitial _self;
  final $Res Function(OtpInitial) _then;

/// Create a copy of OtpState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? cooldown = null,}) {
  return _then(OtpInitial(
cooldown: null == cooldown ? _self.cooldown : cooldown // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class OtpVerifying implements OtpState {
  const OtpVerifying();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is OtpVerifying);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'OtpState.verifying()';
}


}




/// @nodoc


class OtpVerified implements OtpState {
  const OtpVerified();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is OtpVerified);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'OtpState.verified()';
}


}




/// @nodoc


class OtpError implements OtpState {
  const OtpError(this.message);
  

 final  String message;

/// Create a copy of OtpState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OtpErrorCopyWith<OtpError> get copyWith => _$OtpErrorCopyWithImpl<OtpError>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is OtpError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode {
    return Object.hash(runtimeType,message);
}

@override
String toString() {
    return 'OtpState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $OtpErrorCopyWith<$Res> implements $OtpStateCopyWith<$Res> {
  factory $OtpErrorCopyWith(OtpError value, $Res Function(OtpError) _then) = _$OtpErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$OtpErrorCopyWithImpl<$Res>
    implements $OtpErrorCopyWith<$Res> {
  _$OtpErrorCopyWithImpl(this._self, this._then);

  final OtpError _self;
  final $Res Function(OtpError) _then;

/// Create a copy of OtpState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(OtpError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
