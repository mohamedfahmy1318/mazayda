// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'submit_appeal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SubmitAppealParams {

 String get auctionId; String get subject; String get reason;
/// Create a copy of SubmitAppealParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubmitAppealParamsCopyWith<SubmitAppealParams> get copyWith => _$SubmitAppealParamsCopyWithImpl<SubmitAppealParams>(this as SubmitAppealParams, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as SubmitAppealParams;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitAppealParams&&(identical(other.auctionId, _this.auctionId) || other.auctionId == _this.auctionId)&&(identical(other.subject, _this.subject) || other.subject == _this.subject)&&(identical(other.reason, _this.reason) || other.reason == _this.reason));
}


@override
int get hashCode {
  final _this = this as SubmitAppealParams;
  return Object.hash(runtimeType,_this.auctionId,_this.subject,_this.reason);
}

@override
String toString() {
  final _this = this as SubmitAppealParams;
  return 'SubmitAppealParams(auctionId: ${_this.auctionId}, subject: ${_this.subject}, reason: ${_this.reason})';
}


}

/// @nodoc
abstract mixin class $SubmitAppealParamsCopyWith<$Res>  {
  factory $SubmitAppealParamsCopyWith(SubmitAppealParams value, $Res Function(SubmitAppealParams) _then) = _$SubmitAppealParamsCopyWithImpl;
@useResult
$Res call({
 String auctionId, String subject, String reason
});




}
/// @nodoc
class _$SubmitAppealParamsCopyWithImpl<$Res>
    implements $SubmitAppealParamsCopyWith<$Res> {
  _$SubmitAppealParamsCopyWithImpl(this._self, this._then);

  final SubmitAppealParams _self;
  final $Res Function(SubmitAppealParams) _then;

/// Create a copy of SubmitAppealParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? auctionId = null,Object? subject = null,Object? reason = null,}) {
  return _then(SubmitAppealParams(
auctionId: null == auctionId ? _self.auctionId : auctionId // ignore: cast_nullable_to_non_nullable
as String,subject: null == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as String,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SubmitAppealParams].
extension SubmitAppealParamsPatterns on SubmitAppealParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubmitAppealParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubmitAppealParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubmitAppealParams value)  $default,){
final _that = this;
switch (_that) {
case _SubmitAppealParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubmitAppealParams value)?  $default,){
final _that = this;
switch (_that) {
case _SubmitAppealParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String auctionId,  String subject,  String reason)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubmitAppealParams() when $default != null:
return $default(_that.auctionId,_that.subject,_that.reason);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String auctionId,  String subject,  String reason)  $default,) {final _that = this;
switch (_that) {
case _SubmitAppealParams():
return $default(_that.auctionId,_that.subject,_that.reason);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String auctionId,  String subject,  String reason)?  $default,) {final _that = this;
switch (_that) {
case _SubmitAppealParams() when $default != null:
return $default(_that.auctionId,_that.subject,_that.reason);case _:
  return null;

}
}

}

/// @nodoc


class _SubmitAppealParams implements SubmitAppealParams {
  const _SubmitAppealParams({required this.auctionId, required this.subject, required this.reason});
  

@override final  String auctionId;
@override final  String subject;
@override final  String reason;

/// Create a copy of SubmitAppealParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubmitAppealParamsCopyWith<_SubmitAppealParams> get copyWith => __$SubmitAppealParamsCopyWithImpl<_SubmitAppealParams>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubmitAppealParams&&(identical(other.auctionId, auctionId) || other.auctionId == auctionId)&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.reason, reason) || other.reason == reason));
}


@override
int get hashCode {
    return Object.hash(runtimeType,auctionId,subject,reason);
}

@override
String toString() {
    return 'SubmitAppealParams(auctionId: $auctionId, subject: $subject, reason: $reason)';
}


}

/// @nodoc
abstract mixin class _$SubmitAppealParamsCopyWith<$Res> implements $SubmitAppealParamsCopyWith<$Res> {
  factory _$SubmitAppealParamsCopyWith(_SubmitAppealParams value, $Res Function(_SubmitAppealParams) _then) = __$SubmitAppealParamsCopyWithImpl;
@override @useResult
$Res call({
 String auctionId, String subject, String reason
});




}
/// @nodoc
class __$SubmitAppealParamsCopyWithImpl<$Res>
    implements _$SubmitAppealParamsCopyWith<$Res> {
  __$SubmitAppealParamsCopyWithImpl(this._self, this._then);

  final _SubmitAppealParams _self;
  final $Res Function(_SubmitAppealParams) _then;

/// Create a copy of SubmitAppealParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? auctionId = null,Object? subject = null,Object? reason = null,}) {
  return _then(_SubmitAppealParams(
auctionId: null == auctionId ? _self.auctionId : auctionId // ignore: cast_nullable_to_non_nullable
as String,subject: null == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as String,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
