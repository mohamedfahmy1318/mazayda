// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kyc_usecases.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UploadDocParams {

 KycDocType get type; String get filePath;
/// Create a copy of UploadDocParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UploadDocParamsCopyWith<UploadDocParams> get copyWith => _$UploadDocParamsCopyWithImpl<UploadDocParams>(this as UploadDocParams, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as UploadDocParams;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UploadDocParams&&(identical(other.type, _this.type) || other.type == _this.type)&&(identical(other.filePath, _this.filePath) || other.filePath == _this.filePath));
}


@override
int get hashCode {
  final _this = this as UploadDocParams;
  return Object.hash(runtimeType,_this.type,_this.filePath);
}

@override
String toString() {
  final _this = this as UploadDocParams;
  return 'UploadDocParams(type: ${_this.type}, filePath: ${_this.filePath})';
}


}

/// @nodoc
abstract mixin class $UploadDocParamsCopyWith<$Res>  {
  factory $UploadDocParamsCopyWith(UploadDocParams value, $Res Function(UploadDocParams) _then) = _$UploadDocParamsCopyWithImpl;
@useResult
$Res call({
 KycDocType type, String filePath
});




}
/// @nodoc
class _$UploadDocParamsCopyWithImpl<$Res>
    implements $UploadDocParamsCopyWith<$Res> {
  _$UploadDocParamsCopyWithImpl(this._self, this._then);

  final UploadDocParams _self;
  final $Res Function(UploadDocParams) _then;

/// Create a copy of UploadDocParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? filePath = null,}) {
  return _then(UploadDocParams(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as KycDocType,filePath: null == filePath ? _self.filePath : filePath // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UploadDocParams].
extension UploadDocParamsPatterns on UploadDocParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UploadDocParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UploadDocParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UploadDocParams value)  $default,){
final _that = this;
switch (_that) {
case _UploadDocParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UploadDocParams value)?  $default,){
final _that = this;
switch (_that) {
case _UploadDocParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( KycDocType type,  String filePath)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UploadDocParams() when $default != null:
return $default(_that.type,_that.filePath);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( KycDocType type,  String filePath)  $default,) {final _that = this;
switch (_that) {
case _UploadDocParams():
return $default(_that.type,_that.filePath);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( KycDocType type,  String filePath)?  $default,) {final _that = this;
switch (_that) {
case _UploadDocParams() when $default != null:
return $default(_that.type,_that.filePath);case _:
  return null;

}
}

}

/// @nodoc


class _UploadDocParams implements UploadDocParams {
  const _UploadDocParams({required this.type, required this.filePath});
  

@override final  KycDocType type;
@override final  String filePath;

/// Create a copy of UploadDocParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UploadDocParamsCopyWith<_UploadDocParams> get copyWith => __$UploadDocParamsCopyWithImpl<_UploadDocParams>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _UploadDocParams&&(identical(other.type, type) || other.type == type)&&(identical(other.filePath, filePath) || other.filePath == filePath));
}


@override
int get hashCode {
    return Object.hash(runtimeType,type,filePath);
}

@override
String toString() {
    return 'UploadDocParams(type: $type, filePath: $filePath)';
}


}

/// @nodoc
abstract mixin class _$UploadDocParamsCopyWith<$Res> implements $UploadDocParamsCopyWith<$Res> {
  factory _$UploadDocParamsCopyWith(_UploadDocParams value, $Res Function(_UploadDocParams) _then) = __$UploadDocParamsCopyWithImpl;
@override @useResult
$Res call({
 KycDocType type, String filePath
});




}
/// @nodoc
class __$UploadDocParamsCopyWithImpl<$Res>
    implements _$UploadDocParamsCopyWith<$Res> {
  __$UploadDocParamsCopyWithImpl(this._self, this._then);

  final _UploadDocParams _self;
  final $Res Function(_UploadDocParams) _then;

/// Create a copy of UploadDocParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? filePath = null,}) {
  return _then(_UploadDocParams(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as KycDocType,filePath: null == filePath ? _self.filePath : filePath // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
