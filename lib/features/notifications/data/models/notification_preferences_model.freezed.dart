// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_preferences_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CategoryOptionModel {

 dynamic get id; String? get name;
/// Create a copy of CategoryOptionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryOptionModelCopyWith<CategoryOptionModel> get copyWith => _$CategoryOptionModelCopyWithImpl<CategoryOptionModel>(this as CategoryOptionModel, _$identity);

  /// Serializes this CategoryOptionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CategoryOptionModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryOptionModel&&const DeepCollectionEquality().equals(other.id, _this.id)&&(identical(other.name, _this.name) || other.name == _this.name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CategoryOptionModel;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.id),_this.name);
}

@override
String toString() {
  final _this = this as CategoryOptionModel;
  return 'CategoryOptionModel(id: ${_this.id}, name: ${_this.name})';
}


}

/// @nodoc
abstract mixin class $CategoryOptionModelCopyWith<$Res>  {
  factory $CategoryOptionModelCopyWith(CategoryOptionModel value, $Res Function(CategoryOptionModel) _then) = _$CategoryOptionModelCopyWithImpl;
@useResult
$Res call({
 dynamic id, String? name
});




}
/// @nodoc
class _$CategoryOptionModelCopyWithImpl<$Res>
    implements $CategoryOptionModelCopyWith<$Res> {
  _$CategoryOptionModelCopyWithImpl(this._self, this._then);

  final CategoryOptionModel _self;
  final $Res Function(CategoryOptionModel) _then;

/// Create a copy of CategoryOptionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,}) {
  return _then(CategoryOptionModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as dynamic,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CategoryOptionModel].
extension CategoryOptionModelPatterns on CategoryOptionModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CategoryOptionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CategoryOptionModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CategoryOptionModel value)  $default,){
final _that = this;
switch (_that) {
case _CategoryOptionModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CategoryOptionModel value)?  $default,){
final _that = this;
switch (_that) {
case _CategoryOptionModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( dynamic id,  String? name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CategoryOptionModel() when $default != null:
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( dynamic id,  String? name)  $default,) {final _that = this;
switch (_that) {
case _CategoryOptionModel():
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( dynamic id,  String? name)?  $default,) {final _that = this;
switch (_that) {
case _CategoryOptionModel() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CategoryOptionModel extends CategoryOptionModel {
  const _CategoryOptionModel({this.id, this.name}): super._();
  factory _CategoryOptionModel.fromJson(Map<String, dynamic> json) => _$CategoryOptionModelFromJson(json);

@override final  dynamic id;
@override final  String? name;

/// Create a copy of CategoryOptionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryOptionModelCopyWith<_CategoryOptionModel> get copyWith => __$CategoryOptionModelCopyWithImpl<_CategoryOptionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoryOptionModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryOptionModel&&const DeepCollectionEquality().equals(other.id, id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(id),name);
}

@override
String toString() {
    return 'CategoryOptionModel(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$CategoryOptionModelCopyWith<$Res> implements $CategoryOptionModelCopyWith<$Res> {
  factory _$CategoryOptionModelCopyWith(_CategoryOptionModel value, $Res Function(_CategoryOptionModel) _then) = __$CategoryOptionModelCopyWithImpl;
@override @useResult
$Res call({
 dynamic id, String? name
});




}
/// @nodoc
class __$CategoryOptionModelCopyWithImpl<$Res>
    implements _$CategoryOptionModelCopyWith<$Res> {
  __$CategoryOptionModelCopyWithImpl(this._self, this._then);

  final _CategoryOptionModel _self;
  final $Res Function(_CategoryOptionModel) _then;

/// Create a copy of CategoryOptionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,}) {
  return _then(_CategoryOptionModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as dynamic,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$NotificationChannelsModel {

 bool get push; bool get email; bool get sms;
/// Create a copy of NotificationChannelsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationChannelsModelCopyWith<NotificationChannelsModel> get copyWith => _$NotificationChannelsModelCopyWithImpl<NotificationChannelsModel>(this as NotificationChannelsModel, _$identity);

  /// Serializes this NotificationChannelsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as NotificationChannelsModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationChannelsModel&&(identical(other.push, _this.push) || other.push == _this.push)&&(identical(other.email, _this.email) || other.email == _this.email)&&(identical(other.sms, _this.sms) || other.sms == _this.sms));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as NotificationChannelsModel;
  return Object.hash(runtimeType,_this.push,_this.email,_this.sms);
}

@override
String toString() {
  final _this = this as NotificationChannelsModel;
  return 'NotificationChannelsModel(push: ${_this.push}, email: ${_this.email}, sms: ${_this.sms})';
}


}

/// @nodoc
abstract mixin class $NotificationChannelsModelCopyWith<$Res>  {
  factory $NotificationChannelsModelCopyWith(NotificationChannelsModel value, $Res Function(NotificationChannelsModel) _then) = _$NotificationChannelsModelCopyWithImpl;
@useResult
$Res call({
 bool push, bool email, bool sms
});




}
/// @nodoc
class _$NotificationChannelsModelCopyWithImpl<$Res>
    implements $NotificationChannelsModelCopyWith<$Res> {
  _$NotificationChannelsModelCopyWithImpl(this._self, this._then);

  final NotificationChannelsModel _self;
  final $Res Function(NotificationChannelsModel) _then;

/// Create a copy of NotificationChannelsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? push = null,Object? email = null,Object? sms = null,}) {
  return _then(NotificationChannelsModel(
push: null == push ? _self.push : push // ignore: cast_nullable_to_non_nullable
as bool,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as bool,sms: null == sms ? _self.sms : sms // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [NotificationChannelsModel].
extension NotificationChannelsModelPatterns on NotificationChannelsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationChannelsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationChannelsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationChannelsModel value)  $default,){
final _that = this;
switch (_that) {
case _NotificationChannelsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationChannelsModel value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationChannelsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool push,  bool email,  bool sms)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationChannelsModel() when $default != null:
return $default(_that.push,_that.email,_that.sms);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool push,  bool email,  bool sms)  $default,) {final _that = this;
switch (_that) {
case _NotificationChannelsModel():
return $default(_that.push,_that.email,_that.sms);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool push,  bool email,  bool sms)?  $default,) {final _that = this;
switch (_that) {
case _NotificationChannelsModel() when $default != null:
return $default(_that.push,_that.email,_that.sms);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NotificationChannelsModel extends NotificationChannelsModel {
  const _NotificationChannelsModel({this.push = true, this.email = false, this.sms = false}): super._();
  factory _NotificationChannelsModel.fromJson(Map<String, dynamic> json) => _$NotificationChannelsModelFromJson(json);

@override@JsonKey() final  bool push;
@override@JsonKey() final  bool email;
@override@JsonKey() final  bool sms;

/// Create a copy of NotificationChannelsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationChannelsModelCopyWith<_NotificationChannelsModel> get copyWith => __$NotificationChannelsModelCopyWithImpl<_NotificationChannelsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NotificationChannelsModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationChannelsModel&&(identical(other.push, push) || other.push == push)&&(identical(other.email, email) || other.email == email)&&(identical(other.sms, sms) || other.sms == sms));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,push,email,sms);
}

@override
String toString() {
    return 'NotificationChannelsModel(push: $push, email: $email, sms: $sms)';
}


}

/// @nodoc
abstract mixin class _$NotificationChannelsModelCopyWith<$Res> implements $NotificationChannelsModelCopyWith<$Res> {
  factory _$NotificationChannelsModelCopyWith(_NotificationChannelsModel value, $Res Function(_NotificationChannelsModel) _then) = __$NotificationChannelsModelCopyWithImpl;
@override @useResult
$Res call({
 bool push, bool email, bool sms
});




}
/// @nodoc
class __$NotificationChannelsModelCopyWithImpl<$Res>
    implements _$NotificationChannelsModelCopyWith<$Res> {
  __$NotificationChannelsModelCopyWithImpl(this._self, this._then);

  final _NotificationChannelsModel _self;
  final $Res Function(_NotificationChannelsModel) _then;

/// Create a copy of NotificationChannelsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? push = null,Object? email = null,Object? sms = null,}) {
  return _then(_NotificationChannelsModel(
push: null == push ? _self.push : push // ignore: cast_nullable_to_non_nullable
as bool,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as bool,sms: null == sms ? _self.sms : sms // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$NotificationPreferencesModel {

 NotificationChannelsModel? get channels;@JsonKey(name: 'auction_categories') List<dynamic> get auctionCategories;@JsonKey(name: 'new_auction_alerts') bool get newAuctionAlerts;@JsonKey(name: 'available_categories') List<CategoryOptionModel> get availableCategories;@JsonKey(name: 'email_requires_premium') bool get emailRequiresPremium;@JsonKey(name: 'is_premium') bool get isPremium;@JsonKey(name: 'sms_available') bool get smsAvailable;
/// Create a copy of NotificationPreferencesModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationPreferencesModelCopyWith<NotificationPreferencesModel> get copyWith => _$NotificationPreferencesModelCopyWithImpl<NotificationPreferencesModel>(this as NotificationPreferencesModel, _$identity);

  /// Serializes this NotificationPreferencesModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as NotificationPreferencesModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationPreferencesModel&&(identical(other.channels, _this.channels) || other.channels == _this.channels)&&const DeepCollectionEquality().equals(other.auctionCategories, _this.auctionCategories)&&(identical(other.newAuctionAlerts, _this.newAuctionAlerts) || other.newAuctionAlerts == _this.newAuctionAlerts)&&const DeepCollectionEquality().equals(other.availableCategories, _this.availableCategories)&&(identical(other.emailRequiresPremium, _this.emailRequiresPremium) || other.emailRequiresPremium == _this.emailRequiresPremium)&&(identical(other.isPremium, _this.isPremium) || other.isPremium == _this.isPremium)&&(identical(other.smsAvailable, _this.smsAvailable) || other.smsAvailable == _this.smsAvailable));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as NotificationPreferencesModel;
  return Object.hash(runtimeType,_this.channels,const DeepCollectionEquality().hash(_this.auctionCategories),_this.newAuctionAlerts,const DeepCollectionEquality().hash(_this.availableCategories),_this.emailRequiresPremium,_this.isPremium,_this.smsAvailable);
}

@override
String toString() {
  final _this = this as NotificationPreferencesModel;
  return 'NotificationPreferencesModel(channels: ${_this.channels}, auctionCategories: ${_this.auctionCategories}, newAuctionAlerts: ${_this.newAuctionAlerts}, availableCategories: ${_this.availableCategories}, emailRequiresPremium: ${_this.emailRequiresPremium}, isPremium: ${_this.isPremium}, smsAvailable: ${_this.smsAvailable})';
}


}

/// @nodoc
abstract mixin class $NotificationPreferencesModelCopyWith<$Res>  {
  factory $NotificationPreferencesModelCopyWith(NotificationPreferencesModel value, $Res Function(NotificationPreferencesModel) _then) = _$NotificationPreferencesModelCopyWithImpl;
@useResult
$Res call({
 NotificationChannelsModel? channels,@JsonKey(name: 'auction_categories') List<dynamic> auctionCategories,@JsonKey(name: 'new_auction_alerts') bool newAuctionAlerts,@JsonKey(name: 'available_categories') List<CategoryOptionModel> availableCategories,@JsonKey(name: 'email_requires_premium') bool emailRequiresPremium,@JsonKey(name: 'is_premium') bool isPremium,@JsonKey(name: 'sms_available') bool smsAvailable
});


$NotificationChannelsModelCopyWith<$Res>? get channels;

}
/// @nodoc
class _$NotificationPreferencesModelCopyWithImpl<$Res>
    implements $NotificationPreferencesModelCopyWith<$Res> {
  _$NotificationPreferencesModelCopyWithImpl(this._self, this._then);

  final NotificationPreferencesModel _self;
  final $Res Function(NotificationPreferencesModel) _then;

/// Create a copy of NotificationPreferencesModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? channels = freezed,Object? auctionCategories = null,Object? newAuctionAlerts = null,Object? availableCategories = null,Object? emailRequiresPremium = null,Object? isPremium = null,Object? smsAvailable = null,}) {
  return _then(NotificationPreferencesModel(
channels: freezed == channels ? _self.channels : channels // ignore: cast_nullable_to_non_nullable
as NotificationChannelsModel?,auctionCategories: null == auctionCategories ? _self.auctionCategories : auctionCategories // ignore: cast_nullable_to_non_nullable
as List<dynamic>,newAuctionAlerts: null == newAuctionAlerts ? _self.newAuctionAlerts : newAuctionAlerts // ignore: cast_nullable_to_non_nullable
as bool,availableCategories: null == availableCategories ? _self.availableCategories : availableCategories // ignore: cast_nullable_to_non_nullable
as List<CategoryOptionModel>,emailRequiresPremium: null == emailRequiresPremium ? _self.emailRequiresPremium : emailRequiresPremium // ignore: cast_nullable_to_non_nullable
as bool,isPremium: null == isPremium ? _self.isPremium : isPremium // ignore: cast_nullable_to_non_nullable
as bool,smsAvailable: null == smsAvailable ? _self.smsAvailable : smsAvailable // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of NotificationPreferencesModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NotificationChannelsModelCopyWith<$Res>? get channels {
    if (_self.channels == null) {
    return null;
  }

  return $NotificationChannelsModelCopyWith<$Res>(_self.channels!, (value) {
    return _then(_self.copyWith(channels: value));
  });
}
}


/// Adds pattern-matching-related methods to [NotificationPreferencesModel].
extension NotificationPreferencesModelPatterns on NotificationPreferencesModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationPreferencesModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationPreferencesModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationPreferencesModel value)  $default,){
final _that = this;
switch (_that) {
case _NotificationPreferencesModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationPreferencesModel value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationPreferencesModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( NotificationChannelsModel? channels, @JsonKey(name: 'auction_categories')  List<dynamic> auctionCategories, @JsonKey(name: 'new_auction_alerts')  bool newAuctionAlerts, @JsonKey(name: 'available_categories')  List<CategoryOptionModel> availableCategories, @JsonKey(name: 'email_requires_premium')  bool emailRequiresPremium, @JsonKey(name: 'is_premium')  bool isPremium, @JsonKey(name: 'sms_available')  bool smsAvailable)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationPreferencesModel() when $default != null:
return $default(_that.channels,_that.auctionCategories,_that.newAuctionAlerts,_that.availableCategories,_that.emailRequiresPremium,_that.isPremium,_that.smsAvailable);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( NotificationChannelsModel? channels, @JsonKey(name: 'auction_categories')  List<dynamic> auctionCategories, @JsonKey(name: 'new_auction_alerts')  bool newAuctionAlerts, @JsonKey(name: 'available_categories')  List<CategoryOptionModel> availableCategories, @JsonKey(name: 'email_requires_premium')  bool emailRequiresPremium, @JsonKey(name: 'is_premium')  bool isPremium, @JsonKey(name: 'sms_available')  bool smsAvailable)  $default,) {final _that = this;
switch (_that) {
case _NotificationPreferencesModel():
return $default(_that.channels,_that.auctionCategories,_that.newAuctionAlerts,_that.availableCategories,_that.emailRequiresPremium,_that.isPremium,_that.smsAvailable);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( NotificationChannelsModel? channels, @JsonKey(name: 'auction_categories')  List<dynamic> auctionCategories, @JsonKey(name: 'new_auction_alerts')  bool newAuctionAlerts, @JsonKey(name: 'available_categories')  List<CategoryOptionModel> availableCategories, @JsonKey(name: 'email_requires_premium')  bool emailRequiresPremium, @JsonKey(name: 'is_premium')  bool isPremium, @JsonKey(name: 'sms_available')  bool smsAvailable)?  $default,) {final _that = this;
switch (_that) {
case _NotificationPreferencesModel() when $default != null:
return $default(_that.channels,_that.auctionCategories,_that.newAuctionAlerts,_that.availableCategories,_that.emailRequiresPremium,_that.isPremium,_that.smsAvailable);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NotificationPreferencesModel extends NotificationPreferencesModel {
  const _NotificationPreferencesModel({this.channels, @JsonKey(name: 'auction_categories')  List<dynamic> auctionCategories = const <dynamic>[], @JsonKey(name: 'new_auction_alerts') this.newAuctionAlerts = true, @JsonKey(name: 'available_categories')  List<CategoryOptionModel> availableCategories = const <CategoryOptionModel>[], @JsonKey(name: 'email_requires_premium') this.emailRequiresPremium = false, @JsonKey(name: 'is_premium') this.isPremium = false, @JsonKey(name: 'sms_available') this.smsAvailable = false}): _auctionCategories = auctionCategories,_availableCategories = availableCategories,super._();
  factory _NotificationPreferencesModel.fromJson(Map<String, dynamic> json) => _$NotificationPreferencesModelFromJson(json);

@override final  NotificationChannelsModel? channels;
 final  List<dynamic> _auctionCategories;
@override@JsonKey(name: 'auction_categories') List<dynamic> get auctionCategories {
  if (_auctionCategories is EqualUnmodifiableListView) return _auctionCategories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_auctionCategories);
}

@override@JsonKey(name: 'new_auction_alerts') final  bool newAuctionAlerts;
 final  List<CategoryOptionModel> _availableCategories;
@override@JsonKey(name: 'available_categories') List<CategoryOptionModel> get availableCategories {
  if (_availableCategories is EqualUnmodifiableListView) return _availableCategories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_availableCategories);
}

@override@JsonKey(name: 'email_requires_premium') final  bool emailRequiresPremium;
@override@JsonKey(name: 'is_premium') final  bool isPremium;
@override@JsonKey(name: 'sms_available') final  bool smsAvailable;

/// Create a copy of NotificationPreferencesModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationPreferencesModelCopyWith<_NotificationPreferencesModel> get copyWith => __$NotificationPreferencesModelCopyWithImpl<_NotificationPreferencesModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NotificationPreferencesModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationPreferencesModel&&(identical(other.channels, channels) || other.channels == channels)&&const DeepCollectionEquality().equals(other.auctionCategories, _auctionCategories)&&(identical(other.newAuctionAlerts, newAuctionAlerts) || other.newAuctionAlerts == newAuctionAlerts)&&const DeepCollectionEquality().equals(other.availableCategories, _availableCategories)&&(identical(other.emailRequiresPremium, emailRequiresPremium) || other.emailRequiresPremium == emailRequiresPremium)&&(identical(other.isPremium, isPremium) || other.isPremium == isPremium)&&(identical(other.smsAvailable, smsAvailable) || other.smsAvailable == smsAvailable));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,channels,const DeepCollectionEquality().hash(_auctionCategories),newAuctionAlerts,const DeepCollectionEquality().hash(_availableCategories),emailRequiresPremium,isPremium,smsAvailable);
}

@override
String toString() {
    return 'NotificationPreferencesModel(channels: $channels, auctionCategories: $auctionCategories, newAuctionAlerts: $newAuctionAlerts, availableCategories: $availableCategories, emailRequiresPremium: $emailRequiresPremium, isPremium: $isPremium, smsAvailable: $smsAvailable)';
}


}

/// @nodoc
abstract mixin class _$NotificationPreferencesModelCopyWith<$Res> implements $NotificationPreferencesModelCopyWith<$Res> {
  factory _$NotificationPreferencesModelCopyWith(_NotificationPreferencesModel value, $Res Function(_NotificationPreferencesModel) _then) = __$NotificationPreferencesModelCopyWithImpl;
@override @useResult
$Res call({
 NotificationChannelsModel? channels,@JsonKey(name: 'auction_categories') List<dynamic> auctionCategories,@JsonKey(name: 'new_auction_alerts') bool newAuctionAlerts,@JsonKey(name: 'available_categories') List<CategoryOptionModel> availableCategories,@JsonKey(name: 'email_requires_premium') bool emailRequiresPremium,@JsonKey(name: 'is_premium') bool isPremium,@JsonKey(name: 'sms_available') bool smsAvailable
});


@override $NotificationChannelsModelCopyWith<$Res>? get channels;

}
/// @nodoc
class __$NotificationPreferencesModelCopyWithImpl<$Res>
    implements _$NotificationPreferencesModelCopyWith<$Res> {
  __$NotificationPreferencesModelCopyWithImpl(this._self, this._then);

  final _NotificationPreferencesModel _self;
  final $Res Function(_NotificationPreferencesModel) _then;

/// Create a copy of NotificationPreferencesModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? channels = freezed,Object? auctionCategories = null,Object? newAuctionAlerts = null,Object? availableCategories = null,Object? emailRequiresPremium = null,Object? isPremium = null,Object? smsAvailable = null,}) {
  return _then(_NotificationPreferencesModel(
channels: freezed == channels ? _self.channels : channels // ignore: cast_nullable_to_non_nullable
as NotificationChannelsModel?,auctionCategories: null == auctionCategories ? _self._auctionCategories : auctionCategories // ignore: cast_nullable_to_non_nullable
as List<dynamic>,newAuctionAlerts: null == newAuctionAlerts ? _self.newAuctionAlerts : newAuctionAlerts // ignore: cast_nullable_to_non_nullable
as bool,availableCategories: null == availableCategories ? _self._availableCategories : availableCategories // ignore: cast_nullable_to_non_nullable
as List<CategoryOptionModel>,emailRequiresPremium: null == emailRequiresPremium ? _self.emailRequiresPremium : emailRequiresPremium // ignore: cast_nullable_to_non_nullable
as bool,isPremium: null == isPremium ? _self.isPremium : isPremium // ignore: cast_nullable_to_non_nullable
as bool,smsAvailable: null == smsAvailable ? _self.smsAvailable : smsAvailable // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of NotificationPreferencesModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NotificationChannelsModelCopyWith<$Res>? get channels {
    if (_self.channels == null) {
    return null;
  }

  return $NotificationChannelsModelCopyWith<$Res>(_self.channels!, (value) {
    return _then(_self.copyWith(channels: value));
  });
}
}

// dart format on
