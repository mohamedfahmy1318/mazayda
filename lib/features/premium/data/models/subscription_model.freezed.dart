// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscription_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SubscriptionPlanModel {

 String? get code; String? get name; String? get description; String? get period; MoneyModel? get price; List<String> get features;@JsonKey(name: 'is_recommended') bool get isRecommended;
/// Create a copy of SubscriptionPlanModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubscriptionPlanModelCopyWith<SubscriptionPlanModel> get copyWith => _$SubscriptionPlanModelCopyWithImpl<SubscriptionPlanModel>(this as SubscriptionPlanModel, _$identity);

  /// Serializes this SubscriptionPlanModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as SubscriptionPlanModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubscriptionPlanModel&&(identical(other.code, _this.code) || other.code == _this.code)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.description, _this.description) || other.description == _this.description)&&(identical(other.period, _this.period) || other.period == _this.period)&&(identical(other.price, _this.price) || other.price == _this.price)&&const DeepCollectionEquality().equals(other.features, _this.features)&&(identical(other.isRecommended, _this.isRecommended) || other.isRecommended == _this.isRecommended));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as SubscriptionPlanModel;
  return Object.hash(runtimeType,_this.code,_this.name,_this.description,_this.period,_this.price,const DeepCollectionEquality().hash(_this.features),_this.isRecommended);
}

@override
String toString() {
  final _this = this as SubscriptionPlanModel;
  return 'SubscriptionPlanModel(code: ${_this.code}, name: ${_this.name}, description: ${_this.description}, period: ${_this.period}, price: ${_this.price}, features: ${_this.features}, isRecommended: ${_this.isRecommended})';
}


}

/// @nodoc
abstract mixin class $SubscriptionPlanModelCopyWith<$Res>  {
  factory $SubscriptionPlanModelCopyWith(SubscriptionPlanModel value, $Res Function(SubscriptionPlanModel) _then) = _$SubscriptionPlanModelCopyWithImpl;
@useResult
$Res call({
 String? code, String? name, String? description, String? period, MoneyModel? price, List<String> features,@JsonKey(name: 'is_recommended') bool isRecommended
});


$MoneyModelCopyWith<$Res>? get price;

}
/// @nodoc
class _$SubscriptionPlanModelCopyWithImpl<$Res>
    implements $SubscriptionPlanModelCopyWith<$Res> {
  _$SubscriptionPlanModelCopyWithImpl(this._self, this._then);

  final SubscriptionPlanModel _self;
  final $Res Function(SubscriptionPlanModel) _then;

/// Create a copy of SubscriptionPlanModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? code = freezed,Object? name = freezed,Object? description = freezed,Object? period = freezed,Object? price = freezed,Object? features = null,Object? isRecommended = null,}) {
  return _then(SubscriptionPlanModel(
code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,period: freezed == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as MoneyModel?,features: null == features ? _self.features : features // ignore: cast_nullable_to_non_nullable
as List<String>,isRecommended: null == isRecommended ? _self.isRecommended : isRecommended // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of SubscriptionPlanModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyModelCopyWith<$Res>? get price {
    if (_self.price == null) {
    return null;
  }

  return $MoneyModelCopyWith<$Res>(_self.price!, (value) {
    return _then(_self.copyWith(price: value));
  });
}
}


/// Adds pattern-matching-related methods to [SubscriptionPlanModel].
extension SubscriptionPlanModelPatterns on SubscriptionPlanModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubscriptionPlanModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubscriptionPlanModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubscriptionPlanModel value)  $default,){
final _that = this;
switch (_that) {
case _SubscriptionPlanModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubscriptionPlanModel value)?  $default,){
final _that = this;
switch (_that) {
case _SubscriptionPlanModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? code,  String? name,  String? description,  String? period,  MoneyModel? price,  List<String> features, @JsonKey(name: 'is_recommended')  bool isRecommended)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubscriptionPlanModel() when $default != null:
return $default(_that.code,_that.name,_that.description,_that.period,_that.price,_that.features,_that.isRecommended);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? code,  String? name,  String? description,  String? period,  MoneyModel? price,  List<String> features, @JsonKey(name: 'is_recommended')  bool isRecommended)  $default,) {final _that = this;
switch (_that) {
case _SubscriptionPlanModel():
return $default(_that.code,_that.name,_that.description,_that.period,_that.price,_that.features,_that.isRecommended);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? code,  String? name,  String? description,  String? period,  MoneyModel? price,  List<String> features, @JsonKey(name: 'is_recommended')  bool isRecommended)?  $default,) {final _that = this;
switch (_that) {
case _SubscriptionPlanModel() when $default != null:
return $default(_that.code,_that.name,_that.description,_that.period,_that.price,_that.features,_that.isRecommended);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SubscriptionPlanModel extends SubscriptionPlanModel {
  const _SubscriptionPlanModel({this.code, this.name, this.description, this.period, this.price,  List<String> features = const <String>[], @JsonKey(name: 'is_recommended') this.isRecommended = false}): _features = features,super._();
  factory _SubscriptionPlanModel.fromJson(Map<String, dynamic> json) => _$SubscriptionPlanModelFromJson(json);

@override final  String? code;
@override final  String? name;
@override final  String? description;
@override final  String? period;
@override final  MoneyModel? price;
 final  List<String> _features;
@override@JsonKey() List<String> get features {
  if (_features is EqualUnmodifiableListView) return _features;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_features);
}

@override@JsonKey(name: 'is_recommended') final  bool isRecommended;

/// Create a copy of SubscriptionPlanModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubscriptionPlanModelCopyWith<_SubscriptionPlanModel> get copyWith => __$SubscriptionPlanModelCopyWithImpl<_SubscriptionPlanModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SubscriptionPlanModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubscriptionPlanModel&&(identical(other.code, code) || other.code == code)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.period, period) || other.period == period)&&(identical(other.price, price) || other.price == price)&&const DeepCollectionEquality().equals(other.features, _features)&&(identical(other.isRecommended, isRecommended) || other.isRecommended == isRecommended));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,code,name,description,period,price,const DeepCollectionEquality().hash(_features),isRecommended);
}

@override
String toString() {
    return 'SubscriptionPlanModel(code: $code, name: $name, description: $description, period: $period, price: $price, features: $features, isRecommended: $isRecommended)';
}


}

/// @nodoc
abstract mixin class _$SubscriptionPlanModelCopyWith<$Res> implements $SubscriptionPlanModelCopyWith<$Res> {
  factory _$SubscriptionPlanModelCopyWith(_SubscriptionPlanModel value, $Res Function(_SubscriptionPlanModel) _then) = __$SubscriptionPlanModelCopyWithImpl;
@override @useResult
$Res call({
 String? code, String? name, String? description, String? period, MoneyModel? price, List<String> features,@JsonKey(name: 'is_recommended') bool isRecommended
});


@override $MoneyModelCopyWith<$Res>? get price;

}
/// @nodoc
class __$SubscriptionPlanModelCopyWithImpl<$Res>
    implements _$SubscriptionPlanModelCopyWith<$Res> {
  __$SubscriptionPlanModelCopyWithImpl(this._self, this._then);

  final _SubscriptionPlanModel _self;
  final $Res Function(_SubscriptionPlanModel) _then;

/// Create a copy of SubscriptionPlanModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? code = freezed,Object? name = freezed,Object? description = freezed,Object? period = freezed,Object? price = freezed,Object? features = null,Object? isRecommended = null,}) {
  return _then(_SubscriptionPlanModel(
code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,period: freezed == period ? _self.period : period // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as MoneyModel?,features: null == features ? _self._features : features // ignore: cast_nullable_to_non_nullable
as List<String>,isRecommended: null == isRecommended ? _self.isRecommended : isRecommended // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of SubscriptionPlanModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyModelCopyWith<$Res>? get price {
    if (_self.price == null) {
    return null;
  }

  return $MoneyModelCopyWith<$Res>(_self.price!, (value) {
    return _then(_self.copyWith(price: value));
  });
}
}


/// @nodoc
mixin _$SubscriptionModel {

 String? get id; String? get status;@JsonKey(name: 'status_label') String? get statusLabel; SubscriptionPlanModel? get plan;@JsonKey(name: 'started_at') String? get startedAt;@JsonKey(name: 'expires_at') String? get expiresAt;@JsonKey(name: 'auto_renew') bool get autoRenew;@JsonKey(name: 'days_remaining') int? get daysRemaining;
/// Create a copy of SubscriptionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubscriptionModelCopyWith<SubscriptionModel> get copyWith => _$SubscriptionModelCopyWithImpl<SubscriptionModel>(this as SubscriptionModel, _$identity);

  /// Serializes this SubscriptionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as SubscriptionModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubscriptionModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.statusLabel, _this.statusLabel) || other.statusLabel == _this.statusLabel)&&(identical(other.plan, _this.plan) || other.plan == _this.plan)&&(identical(other.startedAt, _this.startedAt) || other.startedAt == _this.startedAt)&&(identical(other.expiresAt, _this.expiresAt) || other.expiresAt == _this.expiresAt)&&(identical(other.autoRenew, _this.autoRenew) || other.autoRenew == _this.autoRenew)&&(identical(other.daysRemaining, _this.daysRemaining) || other.daysRemaining == _this.daysRemaining));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as SubscriptionModel;
  return Object.hash(runtimeType,_this.id,_this.status,_this.statusLabel,_this.plan,_this.startedAt,_this.expiresAt,_this.autoRenew,_this.daysRemaining);
}

@override
String toString() {
  final _this = this as SubscriptionModel;
  return 'SubscriptionModel(id: ${_this.id}, status: ${_this.status}, statusLabel: ${_this.statusLabel}, plan: ${_this.plan}, startedAt: ${_this.startedAt}, expiresAt: ${_this.expiresAt}, autoRenew: ${_this.autoRenew}, daysRemaining: ${_this.daysRemaining})';
}


}

/// @nodoc
abstract mixin class $SubscriptionModelCopyWith<$Res>  {
  factory $SubscriptionModelCopyWith(SubscriptionModel value, $Res Function(SubscriptionModel) _then) = _$SubscriptionModelCopyWithImpl;
@useResult
$Res call({
 String? id, String? status,@JsonKey(name: 'status_label') String? statusLabel, SubscriptionPlanModel? plan,@JsonKey(name: 'started_at') String? startedAt,@JsonKey(name: 'expires_at') String? expiresAt,@JsonKey(name: 'auto_renew') bool autoRenew,@JsonKey(name: 'days_remaining') int? daysRemaining
});


$SubscriptionPlanModelCopyWith<$Res>? get plan;

}
/// @nodoc
class _$SubscriptionModelCopyWithImpl<$Res>
    implements $SubscriptionModelCopyWith<$Res> {
  _$SubscriptionModelCopyWithImpl(this._self, this._then);

  final SubscriptionModel _self;
  final $Res Function(SubscriptionModel) _then;

/// Create a copy of SubscriptionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? status = freezed,Object? statusLabel = freezed,Object? plan = freezed,Object? startedAt = freezed,Object? expiresAt = freezed,Object? autoRenew = null,Object? daysRemaining = freezed,}) {
  return _then(SubscriptionModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,statusLabel: freezed == statusLabel ? _self.statusLabel : statusLabel // ignore: cast_nullable_to_non_nullable
as String?,plan: freezed == plan ? _self.plan : plan // ignore: cast_nullable_to_non_nullable
as SubscriptionPlanModel?,startedAt: freezed == startedAt ? _self.startedAt : startedAt // ignore: cast_nullable_to_non_nullable
as String?,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as String?,autoRenew: null == autoRenew ? _self.autoRenew : autoRenew // ignore: cast_nullable_to_non_nullable
as bool,daysRemaining: freezed == daysRemaining ? _self.daysRemaining : daysRemaining // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of SubscriptionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SubscriptionPlanModelCopyWith<$Res>? get plan {
    if (_self.plan == null) {
    return null;
  }

  return $SubscriptionPlanModelCopyWith<$Res>(_self.plan!, (value) {
    return _then(_self.copyWith(plan: value));
  });
}
}


/// Adds pattern-matching-related methods to [SubscriptionModel].
extension SubscriptionModelPatterns on SubscriptionModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SubscriptionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SubscriptionModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SubscriptionModel value)  $default,){
final _that = this;
switch (_that) {
case _SubscriptionModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SubscriptionModel value)?  $default,){
final _that = this;
switch (_that) {
case _SubscriptionModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? status, @JsonKey(name: 'status_label')  String? statusLabel,  SubscriptionPlanModel? plan, @JsonKey(name: 'started_at')  String? startedAt, @JsonKey(name: 'expires_at')  String? expiresAt, @JsonKey(name: 'auto_renew')  bool autoRenew, @JsonKey(name: 'days_remaining')  int? daysRemaining)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SubscriptionModel() when $default != null:
return $default(_that.id,_that.status,_that.statusLabel,_that.plan,_that.startedAt,_that.expiresAt,_that.autoRenew,_that.daysRemaining);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? status, @JsonKey(name: 'status_label')  String? statusLabel,  SubscriptionPlanModel? plan, @JsonKey(name: 'started_at')  String? startedAt, @JsonKey(name: 'expires_at')  String? expiresAt, @JsonKey(name: 'auto_renew')  bool autoRenew, @JsonKey(name: 'days_remaining')  int? daysRemaining)  $default,) {final _that = this;
switch (_that) {
case _SubscriptionModel():
return $default(_that.id,_that.status,_that.statusLabel,_that.plan,_that.startedAt,_that.expiresAt,_that.autoRenew,_that.daysRemaining);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? status, @JsonKey(name: 'status_label')  String? statusLabel,  SubscriptionPlanModel? plan, @JsonKey(name: 'started_at')  String? startedAt, @JsonKey(name: 'expires_at')  String? expiresAt, @JsonKey(name: 'auto_renew')  bool autoRenew, @JsonKey(name: 'days_remaining')  int? daysRemaining)?  $default,) {final _that = this;
switch (_that) {
case _SubscriptionModel() when $default != null:
return $default(_that.id,_that.status,_that.statusLabel,_that.plan,_that.startedAt,_that.expiresAt,_that.autoRenew,_that.daysRemaining);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SubscriptionModel extends SubscriptionModel {
  const _SubscriptionModel({this.id, this.status, @JsonKey(name: 'status_label') this.statusLabel, this.plan, @JsonKey(name: 'started_at') this.startedAt, @JsonKey(name: 'expires_at') this.expiresAt, @JsonKey(name: 'auto_renew') this.autoRenew = false, @JsonKey(name: 'days_remaining') this.daysRemaining}): super._();
  factory _SubscriptionModel.fromJson(Map<String, dynamic> json) => _$SubscriptionModelFromJson(json);

@override final  String? id;
@override final  String? status;
@override@JsonKey(name: 'status_label') final  String? statusLabel;
@override final  SubscriptionPlanModel? plan;
@override@JsonKey(name: 'started_at') final  String? startedAt;
@override@JsonKey(name: 'expires_at') final  String? expiresAt;
@override@JsonKey(name: 'auto_renew') final  bool autoRenew;
@override@JsonKey(name: 'days_remaining') final  int? daysRemaining;

/// Create a copy of SubscriptionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubscriptionModelCopyWith<_SubscriptionModel> get copyWith => __$SubscriptionModelCopyWithImpl<_SubscriptionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SubscriptionModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubscriptionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&(identical(other.statusLabel, statusLabel) || other.statusLabel == statusLabel)&&(identical(other.plan, plan) || other.plan == plan)&&(identical(other.startedAt, startedAt) || other.startedAt == startedAt)&&(identical(other.expiresAt, expiresAt) || other.expiresAt == expiresAt)&&(identical(other.autoRenew, autoRenew) || other.autoRenew == autoRenew)&&(identical(other.daysRemaining, daysRemaining) || other.daysRemaining == daysRemaining));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,status,statusLabel,plan,startedAt,expiresAt,autoRenew,daysRemaining);
}

@override
String toString() {
    return 'SubscriptionModel(id: $id, status: $status, statusLabel: $statusLabel, plan: $plan, startedAt: $startedAt, expiresAt: $expiresAt, autoRenew: $autoRenew, daysRemaining: $daysRemaining)';
}


}

/// @nodoc
abstract mixin class _$SubscriptionModelCopyWith<$Res> implements $SubscriptionModelCopyWith<$Res> {
  factory _$SubscriptionModelCopyWith(_SubscriptionModel value, $Res Function(_SubscriptionModel) _then) = __$SubscriptionModelCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? status,@JsonKey(name: 'status_label') String? statusLabel, SubscriptionPlanModel? plan,@JsonKey(name: 'started_at') String? startedAt,@JsonKey(name: 'expires_at') String? expiresAt,@JsonKey(name: 'auto_renew') bool autoRenew,@JsonKey(name: 'days_remaining') int? daysRemaining
});


@override $SubscriptionPlanModelCopyWith<$Res>? get plan;

}
/// @nodoc
class __$SubscriptionModelCopyWithImpl<$Res>
    implements _$SubscriptionModelCopyWith<$Res> {
  __$SubscriptionModelCopyWithImpl(this._self, this._then);

  final _SubscriptionModel _self;
  final $Res Function(_SubscriptionModel) _then;

/// Create a copy of SubscriptionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? status = freezed,Object? statusLabel = freezed,Object? plan = freezed,Object? startedAt = freezed,Object? expiresAt = freezed,Object? autoRenew = null,Object? daysRemaining = freezed,}) {
  return _then(_SubscriptionModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,statusLabel: freezed == statusLabel ? _self.statusLabel : statusLabel // ignore: cast_nullable_to_non_nullable
as String?,plan: freezed == plan ? _self.plan : plan // ignore: cast_nullable_to_non_nullable
as SubscriptionPlanModel?,startedAt: freezed == startedAt ? _self.startedAt : startedAt // ignore: cast_nullable_to_non_nullable
as String?,expiresAt: freezed == expiresAt ? _self.expiresAt : expiresAt // ignore: cast_nullable_to_non_nullable
as String?,autoRenew: null == autoRenew ? _self.autoRenew : autoRenew // ignore: cast_nullable_to_non_nullable
as bool,daysRemaining: freezed == daysRemaining ? _self.daysRemaining : daysRemaining // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of SubscriptionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SubscriptionPlanModelCopyWith<$Res>? get plan {
    if (_self.plan == null) {
    return null;
  }

  return $SubscriptionPlanModelCopyWith<$Res>(_self.plan!, (value) {
    return _then(_self.copyWith(plan: value));
  });
}
}


/// @nodoc
mixin _$PremiumOverviewModel {

@JsonKey(name: 'is_premium') bool get isPremium; SubscriptionModel? get subscription; List<SubscriptionPlanModel> get plans;
/// Create a copy of PremiumOverviewModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PremiumOverviewModelCopyWith<PremiumOverviewModel> get copyWith => _$PremiumOverviewModelCopyWithImpl<PremiumOverviewModel>(this as PremiumOverviewModel, _$identity);

  /// Serializes this PremiumOverviewModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PremiumOverviewModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PremiumOverviewModel&&(identical(other.isPremium, _this.isPremium) || other.isPremium == _this.isPremium)&&(identical(other.subscription, _this.subscription) || other.subscription == _this.subscription)&&const DeepCollectionEquality().equals(other.plans, _this.plans));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PremiumOverviewModel;
  return Object.hash(runtimeType,_this.isPremium,_this.subscription,const DeepCollectionEquality().hash(_this.plans));
}

@override
String toString() {
  final _this = this as PremiumOverviewModel;
  return 'PremiumOverviewModel(isPremium: ${_this.isPremium}, subscription: ${_this.subscription}, plans: ${_this.plans})';
}


}

/// @nodoc
abstract mixin class $PremiumOverviewModelCopyWith<$Res>  {
  factory $PremiumOverviewModelCopyWith(PremiumOverviewModel value, $Res Function(PremiumOverviewModel) _then) = _$PremiumOverviewModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'is_premium') bool isPremium, SubscriptionModel? subscription, List<SubscriptionPlanModel> plans
});


$SubscriptionModelCopyWith<$Res>? get subscription;

}
/// @nodoc
class _$PremiumOverviewModelCopyWithImpl<$Res>
    implements $PremiumOverviewModelCopyWith<$Res> {
  _$PremiumOverviewModelCopyWithImpl(this._self, this._then);

  final PremiumOverviewModel _self;
  final $Res Function(PremiumOverviewModel) _then;

/// Create a copy of PremiumOverviewModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isPremium = null,Object? subscription = freezed,Object? plans = null,}) {
  return _then(PremiumOverviewModel(
isPremium: null == isPremium ? _self.isPremium : isPremium // ignore: cast_nullable_to_non_nullable
as bool,subscription: freezed == subscription ? _self.subscription : subscription // ignore: cast_nullable_to_non_nullable
as SubscriptionModel?,plans: null == plans ? _self.plans : plans // ignore: cast_nullable_to_non_nullable
as List<SubscriptionPlanModel>,
  ));
}
/// Create a copy of PremiumOverviewModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SubscriptionModelCopyWith<$Res>? get subscription {
    if (_self.subscription == null) {
    return null;
  }

  return $SubscriptionModelCopyWith<$Res>(_self.subscription!, (value) {
    return _then(_self.copyWith(subscription: value));
  });
}
}


/// Adds pattern-matching-related methods to [PremiumOverviewModel].
extension PremiumOverviewModelPatterns on PremiumOverviewModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PremiumOverviewModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PremiumOverviewModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PremiumOverviewModel value)  $default,){
final _that = this;
switch (_that) {
case _PremiumOverviewModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PremiumOverviewModel value)?  $default,){
final _that = this;
switch (_that) {
case _PremiumOverviewModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'is_premium')  bool isPremium,  SubscriptionModel? subscription,  List<SubscriptionPlanModel> plans)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PremiumOverviewModel() when $default != null:
return $default(_that.isPremium,_that.subscription,_that.plans);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'is_premium')  bool isPremium,  SubscriptionModel? subscription,  List<SubscriptionPlanModel> plans)  $default,) {final _that = this;
switch (_that) {
case _PremiumOverviewModel():
return $default(_that.isPremium,_that.subscription,_that.plans);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'is_premium')  bool isPremium,  SubscriptionModel? subscription,  List<SubscriptionPlanModel> plans)?  $default,) {final _that = this;
switch (_that) {
case _PremiumOverviewModel() when $default != null:
return $default(_that.isPremium,_that.subscription,_that.plans);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PremiumOverviewModel extends PremiumOverviewModel {
  const _PremiumOverviewModel({@JsonKey(name: 'is_premium') this.isPremium = false, this.subscription,  List<SubscriptionPlanModel> plans = const <SubscriptionPlanModel>[]}): _plans = plans,super._();
  factory _PremiumOverviewModel.fromJson(Map<String, dynamic> json) => _$PremiumOverviewModelFromJson(json);

@override@JsonKey(name: 'is_premium') final  bool isPremium;
@override final  SubscriptionModel? subscription;
 final  List<SubscriptionPlanModel> _plans;
@override@JsonKey() List<SubscriptionPlanModel> get plans {
  if (_plans is EqualUnmodifiableListView) return _plans;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_plans);
}


/// Create a copy of PremiumOverviewModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PremiumOverviewModelCopyWith<_PremiumOverviewModel> get copyWith => __$PremiumOverviewModelCopyWithImpl<_PremiumOverviewModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PremiumOverviewModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PremiumOverviewModel&&(identical(other.isPremium, isPremium) || other.isPremium == isPremium)&&(identical(other.subscription, subscription) || other.subscription == subscription)&&const DeepCollectionEquality().equals(other.plans, _plans));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,isPremium,subscription,const DeepCollectionEquality().hash(_plans));
}

@override
String toString() {
    return 'PremiumOverviewModel(isPremium: $isPremium, subscription: $subscription, plans: $plans)';
}


}

/// @nodoc
abstract mixin class _$PremiumOverviewModelCopyWith<$Res> implements $PremiumOverviewModelCopyWith<$Res> {
  factory _$PremiumOverviewModelCopyWith(_PremiumOverviewModel value, $Res Function(_PremiumOverviewModel) _then) = __$PremiumOverviewModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'is_premium') bool isPremium, SubscriptionModel? subscription, List<SubscriptionPlanModel> plans
});


@override $SubscriptionModelCopyWith<$Res>? get subscription;

}
/// @nodoc
class __$PremiumOverviewModelCopyWithImpl<$Res>
    implements _$PremiumOverviewModelCopyWith<$Res> {
  __$PremiumOverviewModelCopyWithImpl(this._self, this._then);

  final _PremiumOverviewModel _self;
  final $Res Function(_PremiumOverviewModel) _then;

/// Create a copy of PremiumOverviewModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isPremium = null,Object? subscription = freezed,Object? plans = null,}) {
  return _then(_PremiumOverviewModel(
isPremium: null == isPremium ? _self.isPremium : isPremium // ignore: cast_nullable_to_non_nullable
as bool,subscription: freezed == subscription ? _self.subscription : subscription // ignore: cast_nullable_to_non_nullable
as SubscriptionModel?,plans: null == plans ? _self._plans : plans // ignore: cast_nullable_to_non_nullable
as List<SubscriptionPlanModel>,
  ));
}

/// Create a copy of PremiumOverviewModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SubscriptionModelCopyWith<$Res>? get subscription {
    if (_self.subscription == null) {
    return null;
  }

  return $SubscriptionModelCopyWith<$Res>(_self.subscription!, (value) {
    return _then(_self.copyWith(subscription: value));
  });
}
}

// dart format on
