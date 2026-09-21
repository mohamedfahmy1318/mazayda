// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaymentInitModel {

@JsonKey(name: 'redirect_url') String? get redirectUrl; String? get ref;
/// Create a copy of PaymentInitModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentInitModelCopyWith<PaymentInitModel> get copyWith => _$PaymentInitModelCopyWithImpl<PaymentInitModel>(this as PaymentInitModel, _$identity);

  /// Serializes this PaymentInitModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PaymentInitModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentInitModel&&(identical(other.redirectUrl, _this.redirectUrl) || other.redirectUrl == _this.redirectUrl)&&(identical(other.ref, _this.ref) || other.ref == _this.ref));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PaymentInitModel;
  return Object.hash(runtimeType,_this.redirectUrl,_this.ref);
}

@override
String toString() {
  final _this = this as PaymentInitModel;
  return 'PaymentInitModel(redirectUrl: ${_this.redirectUrl}, ref: ${_this.ref})';
}


}

/// @nodoc
abstract mixin class $PaymentInitModelCopyWith<$Res>  {
  factory $PaymentInitModelCopyWith(PaymentInitModel value, $Res Function(PaymentInitModel) _then) = _$PaymentInitModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'redirect_url') String? redirectUrl, String? ref
});




}
/// @nodoc
class _$PaymentInitModelCopyWithImpl<$Res>
    implements $PaymentInitModelCopyWith<$Res> {
  _$PaymentInitModelCopyWithImpl(this._self, this._then);

  final PaymentInitModel _self;
  final $Res Function(PaymentInitModel) _then;

/// Create a copy of PaymentInitModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? redirectUrl = freezed,Object? ref = freezed,}) {
  return _then(PaymentInitModel(
redirectUrl: freezed == redirectUrl ? _self.redirectUrl : redirectUrl // ignore: cast_nullable_to_non_nullable
as String?,ref: freezed == ref ? _self.ref : ref // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentInitModel].
extension PaymentInitModelPatterns on PaymentInitModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentInitModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentInitModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentInitModel value)  $default,){
final _that = this;
switch (_that) {
case _PaymentInitModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentInitModel value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentInitModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'redirect_url')  String? redirectUrl,  String? ref)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentInitModel() when $default != null:
return $default(_that.redirectUrl,_that.ref);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'redirect_url')  String? redirectUrl,  String? ref)  $default,) {final _that = this;
switch (_that) {
case _PaymentInitModel():
return $default(_that.redirectUrl,_that.ref);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'redirect_url')  String? redirectUrl,  String? ref)?  $default,) {final _that = this;
switch (_that) {
case _PaymentInitModel() when $default != null:
return $default(_that.redirectUrl,_that.ref);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentInitModel extends PaymentInitModel {
  const _PaymentInitModel({@JsonKey(name: 'redirect_url') this.redirectUrl, this.ref}): super._();
  factory _PaymentInitModel.fromJson(Map<String, dynamic> json) => _$PaymentInitModelFromJson(json);

@override@JsonKey(name: 'redirect_url') final  String? redirectUrl;
@override final  String? ref;

/// Create a copy of PaymentInitModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentInitModelCopyWith<_PaymentInitModel> get copyWith => __$PaymentInitModelCopyWithImpl<_PaymentInitModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentInitModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentInitModel&&(identical(other.redirectUrl, redirectUrl) || other.redirectUrl == redirectUrl)&&(identical(other.ref, ref) || other.ref == ref));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,redirectUrl,ref);
}

@override
String toString() {
    return 'PaymentInitModel(redirectUrl: $redirectUrl, ref: $ref)';
}


}

/// @nodoc
abstract mixin class _$PaymentInitModelCopyWith<$Res> implements $PaymentInitModelCopyWith<$Res> {
  factory _$PaymentInitModelCopyWith(_PaymentInitModel value, $Res Function(_PaymentInitModel) _then) = __$PaymentInitModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'redirect_url') String? redirectUrl, String? ref
});




}
/// @nodoc
class __$PaymentInitModelCopyWithImpl<$Res>
    implements _$PaymentInitModelCopyWith<$Res> {
  __$PaymentInitModelCopyWithImpl(this._self, this._then);

  final _PaymentInitModel _self;
  final $Res Function(_PaymentInitModel) _then;

/// Create a copy of PaymentInitModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? redirectUrl = freezed,Object? ref = freezed,}) {
  return _then(_PaymentInitModel(
redirectUrl: freezed == redirectUrl ? _self.redirectUrl : redirectUrl // ignore: cast_nullable_to_non_nullable
as String?,ref: freezed == ref ? _self.ref : ref // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$PaymentStatusModel {

 String? get id; String? get type; MoneyModel? get amount; String? get status;@JsonKey(name: 'gateway_ref') String? get gatewayRef;@JsonKey(name: 'due_at') String? get dueAt;@JsonKey(name: 'confirmed_at') String? get confirmedAt;@JsonKey(name: 'created_at') String? get createdAt;
/// Create a copy of PaymentStatusModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentStatusModelCopyWith<PaymentStatusModel> get copyWith => _$PaymentStatusModelCopyWithImpl<PaymentStatusModel>(this as PaymentStatusModel, _$identity);

  /// Serializes this PaymentStatusModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PaymentStatusModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentStatusModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.type, _this.type) || other.type == _this.type)&&(identical(other.amount, _this.amount) || other.amount == _this.amount)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.gatewayRef, _this.gatewayRef) || other.gatewayRef == _this.gatewayRef)&&(identical(other.dueAt, _this.dueAt) || other.dueAt == _this.dueAt)&&(identical(other.confirmedAt, _this.confirmedAt) || other.confirmedAt == _this.confirmedAt)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PaymentStatusModel;
  return Object.hash(runtimeType,_this.id,_this.type,_this.amount,_this.status,_this.gatewayRef,_this.dueAt,_this.confirmedAt,_this.createdAt);
}

@override
String toString() {
  final _this = this as PaymentStatusModel;
  return 'PaymentStatusModel(id: ${_this.id}, type: ${_this.type}, amount: ${_this.amount}, status: ${_this.status}, gatewayRef: ${_this.gatewayRef}, dueAt: ${_this.dueAt}, confirmedAt: ${_this.confirmedAt}, createdAt: ${_this.createdAt})';
}


}

/// @nodoc
abstract mixin class $PaymentStatusModelCopyWith<$Res>  {
  factory $PaymentStatusModelCopyWith(PaymentStatusModel value, $Res Function(PaymentStatusModel) _then) = _$PaymentStatusModelCopyWithImpl;
@useResult
$Res call({
 String? id, String? type, MoneyModel? amount, String? status,@JsonKey(name: 'gateway_ref') String? gatewayRef,@JsonKey(name: 'due_at') String? dueAt,@JsonKey(name: 'confirmed_at') String? confirmedAt,@JsonKey(name: 'created_at') String? createdAt
});


$MoneyModelCopyWith<$Res>? get amount;

}
/// @nodoc
class _$PaymentStatusModelCopyWithImpl<$Res>
    implements $PaymentStatusModelCopyWith<$Res> {
  _$PaymentStatusModelCopyWithImpl(this._self, this._then);

  final PaymentStatusModel _self;
  final $Res Function(PaymentStatusModel) _then;

/// Create a copy of PaymentStatusModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? type = freezed,Object? amount = freezed,Object? status = freezed,Object? gatewayRef = freezed,Object? dueAt = freezed,Object? confirmedAt = freezed,Object? createdAt = freezed,}) {
  return _then(PaymentStatusModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as MoneyModel?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,gatewayRef: freezed == gatewayRef ? _self.gatewayRef : gatewayRef // ignore: cast_nullable_to_non_nullable
as String?,dueAt: freezed == dueAt ? _self.dueAt : dueAt // ignore: cast_nullable_to_non_nullable
as String?,confirmedAt: freezed == confirmedAt ? _self.confirmedAt : confirmedAt // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of PaymentStatusModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyModelCopyWith<$Res>? get amount {
    if (_self.amount == null) {
    return null;
  }

  return $MoneyModelCopyWith<$Res>(_self.amount!, (value) {
    return _then(_self.copyWith(amount: value));
  });
}
}


/// Adds pattern-matching-related methods to [PaymentStatusModel].
extension PaymentStatusModelPatterns on PaymentStatusModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentStatusModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentStatusModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentStatusModel value)  $default,){
final _that = this;
switch (_that) {
case _PaymentStatusModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentStatusModel value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentStatusModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? type,  MoneyModel? amount,  String? status, @JsonKey(name: 'gateway_ref')  String? gatewayRef, @JsonKey(name: 'due_at')  String? dueAt, @JsonKey(name: 'confirmed_at')  String? confirmedAt, @JsonKey(name: 'created_at')  String? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentStatusModel() when $default != null:
return $default(_that.id,_that.type,_that.amount,_that.status,_that.gatewayRef,_that.dueAt,_that.confirmedAt,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? type,  MoneyModel? amount,  String? status, @JsonKey(name: 'gateway_ref')  String? gatewayRef, @JsonKey(name: 'due_at')  String? dueAt, @JsonKey(name: 'confirmed_at')  String? confirmedAt, @JsonKey(name: 'created_at')  String? createdAt)  $default,) {final _that = this;
switch (_that) {
case _PaymentStatusModel():
return $default(_that.id,_that.type,_that.amount,_that.status,_that.gatewayRef,_that.dueAt,_that.confirmedAt,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? type,  MoneyModel? amount,  String? status, @JsonKey(name: 'gateway_ref')  String? gatewayRef, @JsonKey(name: 'due_at')  String? dueAt, @JsonKey(name: 'confirmed_at')  String? confirmedAt, @JsonKey(name: 'created_at')  String? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _PaymentStatusModel() when $default != null:
return $default(_that.id,_that.type,_that.amount,_that.status,_that.gatewayRef,_that.dueAt,_that.confirmedAt,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentStatusModel extends PaymentStatusModel {
  const _PaymentStatusModel({this.id, this.type, this.amount, this.status, @JsonKey(name: 'gateway_ref') this.gatewayRef, @JsonKey(name: 'due_at') this.dueAt, @JsonKey(name: 'confirmed_at') this.confirmedAt, @JsonKey(name: 'created_at') this.createdAt}): super._();
  factory _PaymentStatusModel.fromJson(Map<String, dynamic> json) => _$PaymentStatusModelFromJson(json);

@override final  String? id;
@override final  String? type;
@override final  MoneyModel? amount;
@override final  String? status;
@override@JsonKey(name: 'gateway_ref') final  String? gatewayRef;
@override@JsonKey(name: 'due_at') final  String? dueAt;
@override@JsonKey(name: 'confirmed_at') final  String? confirmedAt;
@override@JsonKey(name: 'created_at') final  String? createdAt;

/// Create a copy of PaymentStatusModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentStatusModelCopyWith<_PaymentStatusModel> get copyWith => __$PaymentStatusModelCopyWithImpl<_PaymentStatusModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentStatusModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentStatusModel&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.status, status) || other.status == status)&&(identical(other.gatewayRef, gatewayRef) || other.gatewayRef == gatewayRef)&&(identical(other.dueAt, dueAt) || other.dueAt == dueAt)&&(identical(other.confirmedAt, confirmedAt) || other.confirmedAt == confirmedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,type,amount,status,gatewayRef,dueAt,confirmedAt,createdAt);
}

@override
String toString() {
    return 'PaymentStatusModel(id: $id, type: $type, amount: $amount, status: $status, gatewayRef: $gatewayRef, dueAt: $dueAt, confirmedAt: $confirmedAt, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$PaymentStatusModelCopyWith<$Res> implements $PaymentStatusModelCopyWith<$Res> {
  factory _$PaymentStatusModelCopyWith(_PaymentStatusModel value, $Res Function(_PaymentStatusModel) _then) = __$PaymentStatusModelCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? type, MoneyModel? amount, String? status,@JsonKey(name: 'gateway_ref') String? gatewayRef,@JsonKey(name: 'due_at') String? dueAt,@JsonKey(name: 'confirmed_at') String? confirmedAt,@JsonKey(name: 'created_at') String? createdAt
});


@override $MoneyModelCopyWith<$Res>? get amount;

}
/// @nodoc
class __$PaymentStatusModelCopyWithImpl<$Res>
    implements _$PaymentStatusModelCopyWith<$Res> {
  __$PaymentStatusModelCopyWithImpl(this._self, this._then);

  final _PaymentStatusModel _self;
  final $Res Function(_PaymentStatusModel) _then;

/// Create a copy of PaymentStatusModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? type = freezed,Object? amount = freezed,Object? status = freezed,Object? gatewayRef = freezed,Object? dueAt = freezed,Object? confirmedAt = freezed,Object? createdAt = freezed,}) {
  return _then(_PaymentStatusModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as MoneyModel?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,gatewayRef: freezed == gatewayRef ? _self.gatewayRef : gatewayRef // ignore: cast_nullable_to_non_nullable
as String?,dueAt: freezed == dueAt ? _self.dueAt : dueAt // ignore: cast_nullable_to_non_nullable
as String?,confirmedAt: freezed == confirmedAt ? _self.confirmedAt : confirmedAt // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of PaymentStatusModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyModelCopyWith<$Res>? get amount {
    if (_self.amount == null) {
    return null;
  }

  return $MoneyModelCopyWith<$Res>(_self.amount!, (value) {
    return _then(_self.copyWith(amount: value));
  });
}
}


/// @nodoc
mixin _$PaymentStatusResponseModel {

/// الـ ref اللي إحنا بعتناه (gateway_ref أو payment id).
 String? get ref;/// المرجع الرسمي من البوابة — نوحّد عليه (BE-13).
@JsonKey(name: 'gateway_ref') String? get gatewayRef;/// كل الصفوف مأكّدة — حساب السيرفر، أدقّ من إعادة اشتقاقه عندنا.
 bool? get confirmed; List<PaymentStatusModel> get payments;
/// Create a copy of PaymentStatusResponseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentStatusResponseModelCopyWith<PaymentStatusResponseModel> get copyWith => _$PaymentStatusResponseModelCopyWithImpl<PaymentStatusResponseModel>(this as PaymentStatusResponseModel, _$identity);

  /// Serializes this PaymentStatusResponseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PaymentStatusResponseModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentStatusResponseModel&&(identical(other.ref, _this.ref) || other.ref == _this.ref)&&(identical(other.gatewayRef, _this.gatewayRef) || other.gatewayRef == _this.gatewayRef)&&(identical(other.confirmed, _this.confirmed) || other.confirmed == _this.confirmed)&&const DeepCollectionEquality().equals(other.payments, _this.payments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PaymentStatusResponseModel;
  return Object.hash(runtimeType,_this.ref,_this.gatewayRef,_this.confirmed,const DeepCollectionEquality().hash(_this.payments));
}

@override
String toString() {
  final _this = this as PaymentStatusResponseModel;
  return 'PaymentStatusResponseModel(ref: ${_this.ref}, gatewayRef: ${_this.gatewayRef}, confirmed: ${_this.confirmed}, payments: ${_this.payments})';
}


}

/// @nodoc
abstract mixin class $PaymentStatusResponseModelCopyWith<$Res>  {
  factory $PaymentStatusResponseModelCopyWith(PaymentStatusResponseModel value, $Res Function(PaymentStatusResponseModel) _then) = _$PaymentStatusResponseModelCopyWithImpl;
@useResult
$Res call({
 String? ref,@JsonKey(name: 'gateway_ref') String? gatewayRef, bool? confirmed, List<PaymentStatusModel> payments
});




}
/// @nodoc
class _$PaymentStatusResponseModelCopyWithImpl<$Res>
    implements $PaymentStatusResponseModelCopyWith<$Res> {
  _$PaymentStatusResponseModelCopyWithImpl(this._self, this._then);

  final PaymentStatusResponseModel _self;
  final $Res Function(PaymentStatusResponseModel) _then;

/// Create a copy of PaymentStatusResponseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ref = freezed,Object? gatewayRef = freezed,Object? confirmed = freezed,Object? payments = null,}) {
  return _then(PaymentStatusResponseModel(
ref: freezed == ref ? _self.ref : ref // ignore: cast_nullable_to_non_nullable
as String?,gatewayRef: freezed == gatewayRef ? _self.gatewayRef : gatewayRef // ignore: cast_nullable_to_non_nullable
as String?,confirmed: freezed == confirmed ? _self.confirmed : confirmed // ignore: cast_nullable_to_non_nullable
as bool?,payments: null == payments ? _self.payments : payments // ignore: cast_nullable_to_non_nullable
as List<PaymentStatusModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentStatusResponseModel].
extension PaymentStatusResponseModelPatterns on PaymentStatusResponseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentStatusResponseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentStatusResponseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentStatusResponseModel value)  $default,){
final _that = this;
switch (_that) {
case _PaymentStatusResponseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentStatusResponseModel value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentStatusResponseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? ref, @JsonKey(name: 'gateway_ref')  String? gatewayRef,  bool? confirmed,  List<PaymentStatusModel> payments)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentStatusResponseModel() when $default != null:
return $default(_that.ref,_that.gatewayRef,_that.confirmed,_that.payments);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? ref, @JsonKey(name: 'gateway_ref')  String? gatewayRef,  bool? confirmed,  List<PaymentStatusModel> payments)  $default,) {final _that = this;
switch (_that) {
case _PaymentStatusResponseModel():
return $default(_that.ref,_that.gatewayRef,_that.confirmed,_that.payments);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? ref, @JsonKey(name: 'gateway_ref')  String? gatewayRef,  bool? confirmed,  List<PaymentStatusModel> payments)?  $default,) {final _that = this;
switch (_that) {
case _PaymentStatusResponseModel() when $default != null:
return $default(_that.ref,_that.gatewayRef,_that.confirmed,_that.payments);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentStatusResponseModel extends PaymentStatusResponseModel {
  const _PaymentStatusResponseModel({this.ref, @JsonKey(name: 'gateway_ref') this.gatewayRef, this.confirmed,  List<PaymentStatusModel> payments = const <PaymentStatusModel>[]}): _payments = payments,super._();
  factory _PaymentStatusResponseModel.fromJson(Map<String, dynamic> json) => _$PaymentStatusResponseModelFromJson(json);

/// الـ ref اللي إحنا بعتناه (gateway_ref أو payment id).
@override final  String? ref;
/// المرجع الرسمي من البوابة — نوحّد عليه (BE-13).
@override@JsonKey(name: 'gateway_ref') final  String? gatewayRef;
/// كل الصفوف مأكّدة — حساب السيرفر، أدقّ من إعادة اشتقاقه عندنا.
@override final  bool? confirmed;
 final  List<PaymentStatusModel> _payments;
@override@JsonKey() List<PaymentStatusModel> get payments {
  if (_payments is EqualUnmodifiableListView) return _payments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_payments);
}


/// Create a copy of PaymentStatusResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentStatusResponseModelCopyWith<_PaymentStatusResponseModel> get copyWith => __$PaymentStatusResponseModelCopyWithImpl<_PaymentStatusResponseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentStatusResponseModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentStatusResponseModel&&(identical(other.ref, ref) || other.ref == ref)&&(identical(other.gatewayRef, gatewayRef) || other.gatewayRef == gatewayRef)&&(identical(other.confirmed, confirmed) || other.confirmed == confirmed)&&const DeepCollectionEquality().equals(other.payments, _payments));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,ref,gatewayRef,confirmed,const DeepCollectionEquality().hash(_payments));
}

@override
String toString() {
    return 'PaymentStatusResponseModel(ref: $ref, gatewayRef: $gatewayRef, confirmed: $confirmed, payments: $payments)';
}


}

/// @nodoc
abstract mixin class _$PaymentStatusResponseModelCopyWith<$Res> implements $PaymentStatusResponseModelCopyWith<$Res> {
  factory _$PaymentStatusResponseModelCopyWith(_PaymentStatusResponseModel value, $Res Function(_PaymentStatusResponseModel) _then) = __$PaymentStatusResponseModelCopyWithImpl;
@override @useResult
$Res call({
 String? ref,@JsonKey(name: 'gateway_ref') String? gatewayRef, bool? confirmed, List<PaymentStatusModel> payments
});




}
/// @nodoc
class __$PaymentStatusResponseModelCopyWithImpl<$Res>
    implements _$PaymentStatusResponseModelCopyWith<$Res> {
  __$PaymentStatusResponseModelCopyWithImpl(this._self, this._then);

  final _PaymentStatusResponseModel _self;
  final $Res Function(_PaymentStatusResponseModel) _then;

/// Create a copy of PaymentStatusResponseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ref = freezed,Object? gatewayRef = freezed,Object? confirmed = freezed,Object? payments = null,}) {
  return _then(_PaymentStatusResponseModel(
ref: freezed == ref ? _self.ref : ref // ignore: cast_nullable_to_non_nullable
as String?,gatewayRef: freezed == gatewayRef ? _self.gatewayRef : gatewayRef // ignore: cast_nullable_to_non_nullable
as String?,confirmed: freezed == confirmed ? _self.confirmed : confirmed // ignore: cast_nullable_to_non_nullable
as bool?,payments: null == payments ? _self._payments : payments // ignore: cast_nullable_to_non_nullable
as List<PaymentStatusModel>,
  ));
}


}

// dart format on
