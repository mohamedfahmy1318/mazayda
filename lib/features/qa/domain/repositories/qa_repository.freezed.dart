// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qa_repository.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AskQuestionParams {

 String get auctionId; String get question;
/// Create a copy of AskQuestionParams
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AskQuestionParamsCopyWith<AskQuestionParams> get copyWith => _$AskQuestionParamsCopyWithImpl<AskQuestionParams>(this as AskQuestionParams, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as AskQuestionParams;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AskQuestionParams&&(identical(other.auctionId, _this.auctionId) || other.auctionId == _this.auctionId)&&(identical(other.question, _this.question) || other.question == _this.question));
}


@override
int get hashCode {
  final _this = this as AskQuestionParams;
  return Object.hash(runtimeType,_this.auctionId,_this.question);
}

@override
String toString() {
  final _this = this as AskQuestionParams;
  return 'AskQuestionParams(auctionId: ${_this.auctionId}, question: ${_this.question})';
}


}

/// @nodoc
abstract mixin class $AskQuestionParamsCopyWith<$Res>  {
  factory $AskQuestionParamsCopyWith(AskQuestionParams value, $Res Function(AskQuestionParams) _then) = _$AskQuestionParamsCopyWithImpl;
@useResult
$Res call({
 String auctionId, String question
});




}
/// @nodoc
class _$AskQuestionParamsCopyWithImpl<$Res>
    implements $AskQuestionParamsCopyWith<$Res> {
  _$AskQuestionParamsCopyWithImpl(this._self, this._then);

  final AskQuestionParams _self;
  final $Res Function(AskQuestionParams) _then;

/// Create a copy of AskQuestionParams
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? auctionId = null,Object? question = null,}) {
  return _then(AskQuestionParams(
auctionId: null == auctionId ? _self.auctionId : auctionId // ignore: cast_nullable_to_non_nullable
as String,question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AskQuestionParams].
extension AskQuestionParamsPatterns on AskQuestionParams {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AskQuestionParams value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AskQuestionParams() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AskQuestionParams value)  $default,){
final _that = this;
switch (_that) {
case _AskQuestionParams():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AskQuestionParams value)?  $default,){
final _that = this;
switch (_that) {
case _AskQuestionParams() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String auctionId,  String question)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AskQuestionParams() when $default != null:
return $default(_that.auctionId,_that.question);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String auctionId,  String question)  $default,) {final _that = this;
switch (_that) {
case _AskQuestionParams():
return $default(_that.auctionId,_that.question);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String auctionId,  String question)?  $default,) {final _that = this;
switch (_that) {
case _AskQuestionParams() when $default != null:
return $default(_that.auctionId,_that.question);case _:
  return null;

}
}

}

/// @nodoc


class _AskQuestionParams implements AskQuestionParams {
  const _AskQuestionParams({required this.auctionId, required this.question});
  

@override final  String auctionId;
@override final  String question;

/// Create a copy of AskQuestionParams
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AskQuestionParamsCopyWith<_AskQuestionParams> get copyWith => __$AskQuestionParamsCopyWithImpl<_AskQuestionParams>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AskQuestionParams&&(identical(other.auctionId, auctionId) || other.auctionId == auctionId)&&(identical(other.question, question) || other.question == question));
}


@override
int get hashCode {
    return Object.hash(runtimeType,auctionId,question);
}

@override
String toString() {
    return 'AskQuestionParams(auctionId: $auctionId, question: $question)';
}


}

/// @nodoc
abstract mixin class _$AskQuestionParamsCopyWith<$Res> implements $AskQuestionParamsCopyWith<$Res> {
  factory _$AskQuestionParamsCopyWith(_AskQuestionParams value, $Res Function(_AskQuestionParams) _then) = __$AskQuestionParamsCopyWithImpl;
@override @useResult
$Res call({
 String auctionId, String question
});




}
/// @nodoc
class __$AskQuestionParamsCopyWithImpl<$Res>
    implements _$AskQuestionParamsCopyWith<$Res> {
  __$AskQuestionParamsCopyWithImpl(this._self, this._then);

  final _AskQuestionParams _self;
  final $Res Function(_AskQuestionParams) _then;

/// Create a copy of AskQuestionParams
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? auctionId = null,Object? question = null,}) {
  return _then(_AskQuestionParams(
auctionId: null == auctionId ? _self.auctionId : auctionId // ignore: cast_nullable_to_non_nullable
as String,question: null == question ? _self.question : question // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
