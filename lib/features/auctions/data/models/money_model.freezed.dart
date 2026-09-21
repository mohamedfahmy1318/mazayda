// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'money_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MoneyModel {

 int get amount; String get formatted;
/// Create a copy of MoneyModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MoneyModelCopyWith<MoneyModel> get copyWith => _$MoneyModelCopyWithImpl<MoneyModel>(this as MoneyModel, _$identity);

  /// Serializes this MoneyModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as MoneyModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MoneyModel&&(identical(other.amount, _this.amount) || other.amount == _this.amount)&&(identical(other.formatted, _this.formatted) || other.formatted == _this.formatted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as MoneyModel;
  return Object.hash(runtimeType,_this.amount,_this.formatted);
}

@override
String toString() {
  final _this = this as MoneyModel;
  return 'MoneyModel(amount: ${_this.amount}, formatted: ${_this.formatted})';
}


}

/// @nodoc
abstract mixin class $MoneyModelCopyWith<$Res>  {
  factory $MoneyModelCopyWith(MoneyModel value, $Res Function(MoneyModel) _then) = _$MoneyModelCopyWithImpl;
@useResult
$Res call({
 int amount, String formatted
});




}
/// @nodoc
class _$MoneyModelCopyWithImpl<$Res>
    implements $MoneyModelCopyWith<$Res> {
  _$MoneyModelCopyWithImpl(this._self, this._then);

  final MoneyModel _self;
  final $Res Function(MoneyModel) _then;

/// Create a copy of MoneyModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? amount = null,Object? formatted = null,}) {
  return _then(MoneyModel(
amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,formatted: null == formatted ? _self.formatted : formatted // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MoneyModel].
extension MoneyModelPatterns on MoneyModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MoneyModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MoneyModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MoneyModel value)  $default,){
final _that = this;
switch (_that) {
case _MoneyModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MoneyModel value)?  $default,){
final _that = this;
switch (_that) {
case _MoneyModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int amount,  String formatted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MoneyModel() when $default != null:
return $default(_that.amount,_that.formatted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int amount,  String formatted)  $default,) {final _that = this;
switch (_that) {
case _MoneyModel():
return $default(_that.amount,_that.formatted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int amount,  String formatted)?  $default,) {final _that = this;
switch (_that) {
case _MoneyModel() when $default != null:
return $default(_that.amount,_that.formatted);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MoneyModel extends MoneyModel {
  const _MoneyModel({this.amount = 0, this.formatted = ''}): super._();
  factory _MoneyModel.fromJson(Map<String, dynamic> json) => _$MoneyModelFromJson(json);

@override@JsonKey() final  int amount;
@override@JsonKey() final  String formatted;

/// Create a copy of MoneyModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MoneyModelCopyWith<_MoneyModel> get copyWith => __$MoneyModelCopyWithImpl<_MoneyModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MoneyModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _MoneyModel&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.formatted, formatted) || other.formatted == formatted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,amount,formatted);
}

@override
String toString() {
    return 'MoneyModel(amount: $amount, formatted: $formatted)';
}


}

/// @nodoc
abstract mixin class _$MoneyModelCopyWith<$Res> implements $MoneyModelCopyWith<$Res> {
  factory _$MoneyModelCopyWith(_MoneyModel value, $Res Function(_MoneyModel) _then) = __$MoneyModelCopyWithImpl;
@override @useResult
$Res call({
 int amount, String formatted
});




}
/// @nodoc
class __$MoneyModelCopyWithImpl<$Res>
    implements _$MoneyModelCopyWith<$Res> {
  __$MoneyModelCopyWithImpl(this._self, this._then);

  final _MoneyModel _self;
  final $Res Function(_MoneyModel) _then;

/// Create a copy of MoneyModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? amount = null,Object? formatted = null,}) {
  return _then(_MoneyModel(
amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,formatted: null == formatted ? _self.formatted : formatted // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
