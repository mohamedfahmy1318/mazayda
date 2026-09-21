// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'commercial_register_usecases.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SubmitCommercialRegisterParams {

 String get companyName; String get registerNumber; String get taxNumber; String get activityType; String get startDate; String? get registerDocumentPath; String? get taxCardDocumentPath;
/// Create a copy of SubmitCommercialRegisterParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubmitCommercialRegisterParamsCopyWith<SubmitCommercialRegisterParams> get copyWith => _$SubmitCommercialRegisterParamsCopyWithImpl<SubmitCommercialRegisterParams>(this as SubmitCommercialRegisterParams, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as SubmitCommercialRegisterParams;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitCommercialRegisterParams&&(identical(other.companyName, _this.companyName) || other.companyName == _this.companyName)&&(identical(other.registerNumber, _this.registerNumber) || other.registerNumber == _this.registerNumber)&&(identical(other.taxNumber, _this.taxNumber) || other.taxNumber == _this.taxNumber)&&(identical(other.activityType, _this.activityType) || other.activityType == _this.activityType)&&(identical(other.startDate, _this.startDate) || other.startDate == _this.startDate)&&(identical(other.registerDocumentPath, _this.registerDocumentPath) || other.registerDocumentPath == _this.registerDocumentPath)&&(identical(other.taxCardDocumentPath, _this.taxCardDocumentPath) || other.taxCardDocumentPath == _this.taxCardDocumentPath));
}


@override
int get hashCode {
  final _this = this as SubmitCommercialRegisterParams;
  return Object.hash(runtimeType,_this.companyName,_this.registerNumber,_this.taxNumber,_this.activityType,_this.startDate,_this.registerDocumentPath,_this.taxCardDocumentPath);
}

@override
String toString() {
  final _this = this as SubmitCommercialRegisterParams;
  return 'SubmitCommercialRegisterParams(companyName: ${_this.companyName}, registerNumber: ${_this.registerNumber}, taxNumber: ${_this.taxNumber}, activityType: ${_this.activityType}, startDate: ${_this.startDate}, registerDocumentPath: ${_this.registerDocumentPath}, taxCardDocumentPath: ${_this.taxCardDocumentPath})';
}


}

/// @nodoc
abstract mixin class $SubmitCommercialRegisterParamsCopyWith<$Res>  {
  factory $SubmitCommercialRegisterParamsCopyWith(SubmitCommercialRegisterParams value, $Res Function(SubmitCommercialRegisterParams) _then) = _$SubmitCommercialRegisterParamsCopyWithImpl;
@useResult
$Res call({
 String companyName, String registerNumber, String taxNumber, String activityType, String startDate, String? registerDocumentPath, String? taxCardDocumentPath
});




}
/// @nodoc
class _$SubmitCommercialRegisterParamsCopyWithImpl<$Res>
    implements $SubmitCommercialRegisterParamsCopyWith<$Res> {
  _$SubmitCommercialRegisterParamsCopyWithImpl(this._self, this._then);

  final SubmitCommercialRegisterParams _self;
  final $Res Function(SubmitCommercialRegisterParams) _then;

/// Create a copy of SubmitCommercialRegisterParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? companyName = null,Object? registerNumber = null,Object? taxNumber = null,Object? activityType = null,Object? startDate = null,Object? registerDocumentPath = freezed,Object? taxCardDocumentPath = freezed,}) {
  return _then(SubmitCommercialRegisterParams(
companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,registerNumber: null == registerNumber ? _self.registerNumber : registerNumber // ignore: cast_nullable_to_non_nullable
as String,taxNumber: null == taxNumber ? _self.taxNumber : taxNumber // ignore: cast_nullable_to_non_nullable
as String,activityType: null == activityType ? _self.activityType : activityType // ignore: cast_nullable_to_non_nullable
as String,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String,registerDocumentPath: freezed == registerDocumentPath ? _self.registerDocumentPath : registerDocumentPath // ignore: cast_nullable_to_non_nullable
as String?,taxCardDocumentPath: freezed == taxCardDocumentPath ? _self.taxCardDocumentPath : taxCardDocumentPath // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SubmitCommercialRegisterParams].
extension SubmitCommercialRegisterParamsPatterns on SubmitCommercialRegisterParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubmitCommercialRegisterParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubmitCommercialRegisterParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubmitCommercialRegisterParams value)  $default,){
final _that = this;
switch (_that) {
case _SubmitCommercialRegisterParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubmitCommercialRegisterParams value)?  $default,){
final _that = this;
switch (_that) {
case _SubmitCommercialRegisterParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String companyName,  String registerNumber,  String taxNumber,  String activityType,  String startDate,  String? registerDocumentPath,  String? taxCardDocumentPath)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubmitCommercialRegisterParams() when $default != null:
return $default(_that.companyName,_that.registerNumber,_that.taxNumber,_that.activityType,_that.startDate,_that.registerDocumentPath,_that.taxCardDocumentPath);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String companyName,  String registerNumber,  String taxNumber,  String activityType,  String startDate,  String? registerDocumentPath,  String? taxCardDocumentPath)  $default,) {final _that = this;
switch (_that) {
case _SubmitCommercialRegisterParams():
return $default(_that.companyName,_that.registerNumber,_that.taxNumber,_that.activityType,_that.startDate,_that.registerDocumentPath,_that.taxCardDocumentPath);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String companyName,  String registerNumber,  String taxNumber,  String activityType,  String startDate,  String? registerDocumentPath,  String? taxCardDocumentPath)?  $default,) {final _that = this;
switch (_that) {
case _SubmitCommercialRegisterParams() when $default != null:
return $default(_that.companyName,_that.registerNumber,_that.taxNumber,_that.activityType,_that.startDate,_that.registerDocumentPath,_that.taxCardDocumentPath);case _:
  return null;

}
}

}

/// @nodoc


class _SubmitCommercialRegisterParams implements SubmitCommercialRegisterParams {
  const _SubmitCommercialRegisterParams({required this.companyName, required this.registerNumber, required this.taxNumber, required this.activityType, required this.startDate, this.registerDocumentPath, this.taxCardDocumentPath});
  

@override final  String companyName;
@override final  String registerNumber;
@override final  String taxNumber;
@override final  String activityType;
@override final  String startDate;
@override final  String? registerDocumentPath;
@override final  String? taxCardDocumentPath;

/// Create a copy of SubmitCommercialRegisterParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubmitCommercialRegisterParamsCopyWith<_SubmitCommercialRegisterParams> get copyWith => __$SubmitCommercialRegisterParamsCopyWithImpl<_SubmitCommercialRegisterParams>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubmitCommercialRegisterParams&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.registerNumber, registerNumber) || other.registerNumber == registerNumber)&&(identical(other.taxNumber, taxNumber) || other.taxNumber == taxNumber)&&(identical(other.activityType, activityType) || other.activityType == activityType)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.registerDocumentPath, registerDocumentPath) || other.registerDocumentPath == registerDocumentPath)&&(identical(other.taxCardDocumentPath, taxCardDocumentPath) || other.taxCardDocumentPath == taxCardDocumentPath));
}


@override
int get hashCode {
    return Object.hash(runtimeType,companyName,registerNumber,taxNumber,activityType,startDate,registerDocumentPath,taxCardDocumentPath);
}

@override
String toString() {
    return 'SubmitCommercialRegisterParams(companyName: $companyName, registerNumber: $registerNumber, taxNumber: $taxNumber, activityType: $activityType, startDate: $startDate, registerDocumentPath: $registerDocumentPath, taxCardDocumentPath: $taxCardDocumentPath)';
}


}

/// @nodoc
abstract mixin class _$SubmitCommercialRegisterParamsCopyWith<$Res> implements $SubmitCommercialRegisterParamsCopyWith<$Res> {
  factory _$SubmitCommercialRegisterParamsCopyWith(_SubmitCommercialRegisterParams value, $Res Function(_SubmitCommercialRegisterParams) _then) = __$SubmitCommercialRegisterParamsCopyWithImpl;
@override @useResult
$Res call({
 String companyName, String registerNumber, String taxNumber, String activityType, String startDate, String? registerDocumentPath, String? taxCardDocumentPath
});




}
/// @nodoc
class __$SubmitCommercialRegisterParamsCopyWithImpl<$Res>
    implements _$SubmitCommercialRegisterParamsCopyWith<$Res> {
  __$SubmitCommercialRegisterParamsCopyWithImpl(this._self, this._then);

  final _SubmitCommercialRegisterParams _self;
  final $Res Function(_SubmitCommercialRegisterParams) _then;

/// Create a copy of SubmitCommercialRegisterParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? companyName = null,Object? registerNumber = null,Object? taxNumber = null,Object? activityType = null,Object? startDate = null,Object? registerDocumentPath = freezed,Object? taxCardDocumentPath = freezed,}) {
  return _then(_SubmitCommercialRegisterParams(
companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,registerNumber: null == registerNumber ? _self.registerNumber : registerNumber // ignore: cast_nullable_to_non_nullable
as String,taxNumber: null == taxNumber ? _self.taxNumber : taxNumber // ignore: cast_nullable_to_non_nullable
as String,activityType: null == activityType ? _self.activityType : activityType // ignore: cast_nullable_to_non_nullable
as String,startDate: null == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String,registerDocumentPath: freezed == registerDocumentPath ? _self.registerDocumentPath : registerDocumentPath // ignore: cast_nullable_to_non_nullable
as String?,taxCardDocumentPath: freezed == taxCardDocumentPath ? _self.taxCardDocumentPath : taxCardDocumentPath // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
