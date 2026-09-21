// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appeal_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppealAuctionRefModel {

 String? get id; String? get title;
/// Create a copy of AppealAuctionRefModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppealAuctionRefModelCopyWith<AppealAuctionRefModel> get copyWith => _$AppealAuctionRefModelCopyWithImpl<AppealAuctionRefModel>(this as AppealAuctionRefModel, _$identity);

  /// Serializes this AppealAuctionRefModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AppealAuctionRefModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppealAuctionRefModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.title, _this.title) || other.title == _this.title));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AppealAuctionRefModel;
  return Object.hash(runtimeType,_this.id,_this.title);
}

@override
String toString() {
  final _this = this as AppealAuctionRefModel;
  return 'AppealAuctionRefModel(id: ${_this.id}, title: ${_this.title})';
}


}

/// @nodoc
abstract mixin class $AppealAuctionRefModelCopyWith<$Res>  {
  factory $AppealAuctionRefModelCopyWith(AppealAuctionRefModel value, $Res Function(AppealAuctionRefModel) _then) = _$AppealAuctionRefModelCopyWithImpl;
@useResult
$Res call({
 String? id, String? title
});




}
/// @nodoc
class _$AppealAuctionRefModelCopyWithImpl<$Res>
    implements $AppealAuctionRefModelCopyWith<$Res> {
  _$AppealAuctionRefModelCopyWithImpl(this._self, this._then);

  final AppealAuctionRefModel _self;
  final $Res Function(AppealAuctionRefModel) _then;

/// Create a copy of AppealAuctionRefModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? title = freezed,}) {
  return _then(AppealAuctionRefModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AppealAuctionRefModel].
extension AppealAuctionRefModelPatterns on AppealAuctionRefModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppealAuctionRefModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppealAuctionRefModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppealAuctionRefModel value)  $default,){
final _that = this;
switch (_that) {
case _AppealAuctionRefModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppealAuctionRefModel value)?  $default,){
final _that = this;
switch (_that) {
case _AppealAuctionRefModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? title)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppealAuctionRefModel() when $default != null:
return $default(_that.id,_that.title);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? title)  $default,) {final _that = this;
switch (_that) {
case _AppealAuctionRefModel():
return $default(_that.id,_that.title);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? title)?  $default,) {final _that = this;
switch (_that) {
case _AppealAuctionRefModel() when $default != null:
return $default(_that.id,_that.title);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AppealAuctionRefModel extends AppealAuctionRefModel {
  const _AppealAuctionRefModel({this.id, this.title}): super._();
  factory _AppealAuctionRefModel.fromJson(Map<String, dynamic> json) => _$AppealAuctionRefModelFromJson(json);

@override final  String? id;
@override final  String? title;

/// Create a copy of AppealAuctionRefModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppealAuctionRefModelCopyWith<_AppealAuctionRefModel> get copyWith => __$AppealAuctionRefModelCopyWithImpl<_AppealAuctionRefModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AppealAuctionRefModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppealAuctionRefModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,title);
}

@override
String toString() {
    return 'AppealAuctionRefModel(id: $id, title: $title)';
}


}

/// @nodoc
abstract mixin class _$AppealAuctionRefModelCopyWith<$Res> implements $AppealAuctionRefModelCopyWith<$Res> {
  factory _$AppealAuctionRefModelCopyWith(_AppealAuctionRefModel value, $Res Function(_AppealAuctionRefModel) _then) = __$AppealAuctionRefModelCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? title
});




}
/// @nodoc
class __$AppealAuctionRefModelCopyWithImpl<$Res>
    implements _$AppealAuctionRefModelCopyWith<$Res> {
  __$AppealAuctionRefModelCopyWithImpl(this._self, this._then);

  final _AppealAuctionRefModel _self;
  final $Res Function(_AppealAuctionRefModel) _then;

/// Create a copy of AppealAuctionRefModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? title = freezed,}) {
  return _then(_AppealAuctionRefModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$AppealModel {

 String get id; String? get subject; String? get reason; String? get status;@JsonKey(name: 'status_label') String? get statusLabel;@JsonKey(name: 'admin_response') String? get adminResponse;@JsonKey(name: 'entity_response') String? get entityResponse; AppealAuctionRefModel? get auction;@JsonKey(name: 'created_at') String? get createdAt;@JsonKey(name: 'forwarded_at') String? get forwardedAt;@JsonKey(name: 'entity_decided_at') String? get entityDecidedAt;@JsonKey(name: 'resolved_at') String? get resolvedAt;
/// Create a copy of AppealModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppealModelCopyWith<AppealModel> get copyWith => _$AppealModelCopyWithImpl<AppealModel>(this as AppealModel, _$identity);

  /// Serializes this AppealModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AppealModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppealModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.subject, _this.subject) || other.subject == _this.subject)&&(identical(other.reason, _this.reason) || other.reason == _this.reason)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.statusLabel, _this.statusLabel) || other.statusLabel == _this.statusLabel)&&(identical(other.adminResponse, _this.adminResponse) || other.adminResponse == _this.adminResponse)&&(identical(other.entityResponse, _this.entityResponse) || other.entityResponse == _this.entityResponse)&&(identical(other.auction, _this.auction) || other.auction == _this.auction)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.forwardedAt, _this.forwardedAt) || other.forwardedAt == _this.forwardedAt)&&(identical(other.entityDecidedAt, _this.entityDecidedAt) || other.entityDecidedAt == _this.entityDecidedAt)&&(identical(other.resolvedAt, _this.resolvedAt) || other.resolvedAt == _this.resolvedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AppealModel;
  return Object.hash(runtimeType,_this.id,_this.subject,_this.reason,_this.status,_this.statusLabel,_this.adminResponse,_this.entityResponse,_this.auction,_this.createdAt,_this.forwardedAt,_this.entityDecidedAt,_this.resolvedAt);
}

@override
String toString() {
  final _this = this as AppealModel;
  return 'AppealModel(id: ${_this.id}, subject: ${_this.subject}, reason: ${_this.reason}, status: ${_this.status}, statusLabel: ${_this.statusLabel}, adminResponse: ${_this.adminResponse}, entityResponse: ${_this.entityResponse}, auction: ${_this.auction}, createdAt: ${_this.createdAt}, forwardedAt: ${_this.forwardedAt}, entityDecidedAt: ${_this.entityDecidedAt}, resolvedAt: ${_this.resolvedAt})';
}


}

/// @nodoc
abstract mixin class $AppealModelCopyWith<$Res>  {
  factory $AppealModelCopyWith(AppealModel value, $Res Function(AppealModel) _then) = _$AppealModelCopyWithImpl;
@useResult
$Res call({
 String id, String? subject, String? reason, String? status,@JsonKey(name: 'status_label') String? statusLabel,@JsonKey(name: 'admin_response') String? adminResponse,@JsonKey(name: 'entity_response') String? entityResponse, AppealAuctionRefModel? auction,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'forwarded_at') String? forwardedAt,@JsonKey(name: 'entity_decided_at') String? entityDecidedAt,@JsonKey(name: 'resolved_at') String? resolvedAt
});


$AppealAuctionRefModelCopyWith<$Res>? get auction;

}
/// @nodoc
class _$AppealModelCopyWithImpl<$Res>
    implements $AppealModelCopyWith<$Res> {
  _$AppealModelCopyWithImpl(this._self, this._then);

  final AppealModel _self;
  final $Res Function(AppealModel) _then;

/// Create a copy of AppealModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? subject = freezed,Object? reason = freezed,Object? status = freezed,Object? statusLabel = freezed,Object? adminResponse = freezed,Object? entityResponse = freezed,Object? auction = freezed,Object? createdAt = freezed,Object? forwardedAt = freezed,Object? entityDecidedAt = freezed,Object? resolvedAt = freezed,}) {
  return _then(AppealModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,subject: freezed == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as String?,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,statusLabel: freezed == statusLabel ? _self.statusLabel : statusLabel // ignore: cast_nullable_to_non_nullable
as String?,adminResponse: freezed == adminResponse ? _self.adminResponse : adminResponse // ignore: cast_nullable_to_non_nullable
as String?,entityResponse: freezed == entityResponse ? _self.entityResponse : entityResponse // ignore: cast_nullable_to_non_nullable
as String?,auction: freezed == auction ? _self.auction : auction // ignore: cast_nullable_to_non_nullable
as AppealAuctionRefModel?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,forwardedAt: freezed == forwardedAt ? _self.forwardedAt : forwardedAt // ignore: cast_nullable_to_non_nullable
as String?,entityDecidedAt: freezed == entityDecidedAt ? _self.entityDecidedAt : entityDecidedAt // ignore: cast_nullable_to_non_nullable
as String?,resolvedAt: freezed == resolvedAt ? _self.resolvedAt : resolvedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of AppealModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppealAuctionRefModelCopyWith<$Res>? get auction {
    if (_self.auction == null) {
    return null;
  }

  return $AppealAuctionRefModelCopyWith<$Res>(_self.auction!, (value) {
    return _then(_self.copyWith(auction: value));
  });
}
}


/// Adds pattern-matching-related methods to [AppealModel].
extension AppealModelPatterns on AppealModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppealModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppealModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppealModel value)  $default,){
final _that = this;
switch (_that) {
case _AppealModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppealModel value)?  $default,){
final _that = this;
switch (_that) {
case _AppealModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String? subject,  String? reason,  String? status, @JsonKey(name: 'status_label')  String? statusLabel, @JsonKey(name: 'admin_response')  String? adminResponse, @JsonKey(name: 'entity_response')  String? entityResponse,  AppealAuctionRefModel? auction, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'forwarded_at')  String? forwardedAt, @JsonKey(name: 'entity_decided_at')  String? entityDecidedAt, @JsonKey(name: 'resolved_at')  String? resolvedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppealModel() when $default != null:
return $default(_that.id,_that.subject,_that.reason,_that.status,_that.statusLabel,_that.adminResponse,_that.entityResponse,_that.auction,_that.createdAt,_that.forwardedAt,_that.entityDecidedAt,_that.resolvedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String? subject,  String? reason,  String? status, @JsonKey(name: 'status_label')  String? statusLabel, @JsonKey(name: 'admin_response')  String? adminResponse, @JsonKey(name: 'entity_response')  String? entityResponse,  AppealAuctionRefModel? auction, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'forwarded_at')  String? forwardedAt, @JsonKey(name: 'entity_decided_at')  String? entityDecidedAt, @JsonKey(name: 'resolved_at')  String? resolvedAt)  $default,) {final _that = this;
switch (_that) {
case _AppealModel():
return $default(_that.id,_that.subject,_that.reason,_that.status,_that.statusLabel,_that.adminResponse,_that.entityResponse,_that.auction,_that.createdAt,_that.forwardedAt,_that.entityDecidedAt,_that.resolvedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String? subject,  String? reason,  String? status, @JsonKey(name: 'status_label')  String? statusLabel, @JsonKey(name: 'admin_response')  String? adminResponse, @JsonKey(name: 'entity_response')  String? entityResponse,  AppealAuctionRefModel? auction, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'forwarded_at')  String? forwardedAt, @JsonKey(name: 'entity_decided_at')  String? entityDecidedAt, @JsonKey(name: 'resolved_at')  String? resolvedAt)?  $default,) {final _that = this;
switch (_that) {
case _AppealModel() when $default != null:
return $default(_that.id,_that.subject,_that.reason,_that.status,_that.statusLabel,_that.adminResponse,_that.entityResponse,_that.auction,_that.createdAt,_that.forwardedAt,_that.entityDecidedAt,_that.resolvedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AppealModel extends AppealModel {
  const _AppealModel({required this.id, this.subject, this.reason, this.status, @JsonKey(name: 'status_label') this.statusLabel, @JsonKey(name: 'admin_response') this.adminResponse, @JsonKey(name: 'entity_response') this.entityResponse, this.auction, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'forwarded_at') this.forwardedAt, @JsonKey(name: 'entity_decided_at') this.entityDecidedAt, @JsonKey(name: 'resolved_at') this.resolvedAt}): super._();
  factory _AppealModel.fromJson(Map<String, dynamic> json) => _$AppealModelFromJson(json);

@override final  String id;
@override final  String? subject;
@override final  String? reason;
@override final  String? status;
@override@JsonKey(name: 'status_label') final  String? statusLabel;
@override@JsonKey(name: 'admin_response') final  String? adminResponse;
@override@JsonKey(name: 'entity_response') final  String? entityResponse;
@override final  AppealAuctionRefModel? auction;
@override@JsonKey(name: 'created_at') final  String? createdAt;
@override@JsonKey(name: 'forwarded_at') final  String? forwardedAt;
@override@JsonKey(name: 'entity_decided_at') final  String? entityDecidedAt;
@override@JsonKey(name: 'resolved_at') final  String? resolvedAt;

/// Create a copy of AppealModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppealModelCopyWith<_AppealModel> get copyWith => __$AppealModelCopyWithImpl<_AppealModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AppealModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppealModel&&(identical(other.id, id) || other.id == id)&&(identical(other.subject, subject) || other.subject == subject)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.status, status) || other.status == status)&&(identical(other.statusLabel, statusLabel) || other.statusLabel == statusLabel)&&(identical(other.adminResponse, adminResponse) || other.adminResponse == adminResponse)&&(identical(other.entityResponse, entityResponse) || other.entityResponse == entityResponse)&&(identical(other.auction, auction) || other.auction == auction)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.forwardedAt, forwardedAt) || other.forwardedAt == forwardedAt)&&(identical(other.entityDecidedAt, entityDecidedAt) || other.entityDecidedAt == entityDecidedAt)&&(identical(other.resolvedAt, resolvedAt) || other.resolvedAt == resolvedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,subject,reason,status,statusLabel,adminResponse,entityResponse,auction,createdAt,forwardedAt,entityDecidedAt,resolvedAt);
}

@override
String toString() {
    return 'AppealModel(id: $id, subject: $subject, reason: $reason, status: $status, statusLabel: $statusLabel, adminResponse: $adminResponse, entityResponse: $entityResponse, auction: $auction, createdAt: $createdAt, forwardedAt: $forwardedAt, entityDecidedAt: $entityDecidedAt, resolvedAt: $resolvedAt)';
}


}

/// @nodoc
abstract mixin class _$AppealModelCopyWith<$Res> implements $AppealModelCopyWith<$Res> {
  factory _$AppealModelCopyWith(_AppealModel value, $Res Function(_AppealModel) _then) = __$AppealModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String? subject, String? reason, String? status,@JsonKey(name: 'status_label') String? statusLabel,@JsonKey(name: 'admin_response') String? adminResponse,@JsonKey(name: 'entity_response') String? entityResponse, AppealAuctionRefModel? auction,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'forwarded_at') String? forwardedAt,@JsonKey(name: 'entity_decided_at') String? entityDecidedAt,@JsonKey(name: 'resolved_at') String? resolvedAt
});


@override $AppealAuctionRefModelCopyWith<$Res>? get auction;

}
/// @nodoc
class __$AppealModelCopyWithImpl<$Res>
    implements _$AppealModelCopyWith<$Res> {
  __$AppealModelCopyWithImpl(this._self, this._then);

  final _AppealModel _self;
  final $Res Function(_AppealModel) _then;

/// Create a copy of AppealModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? subject = freezed,Object? reason = freezed,Object? status = freezed,Object? statusLabel = freezed,Object? adminResponse = freezed,Object? entityResponse = freezed,Object? auction = freezed,Object? createdAt = freezed,Object? forwardedAt = freezed,Object? entityDecidedAt = freezed,Object? resolvedAt = freezed,}) {
  return _then(_AppealModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,subject: freezed == subject ? _self.subject : subject // ignore: cast_nullable_to_non_nullable
as String?,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,statusLabel: freezed == statusLabel ? _self.statusLabel : statusLabel // ignore: cast_nullable_to_non_nullable
as String?,adminResponse: freezed == adminResponse ? _self.adminResponse : adminResponse // ignore: cast_nullable_to_non_nullable
as String?,entityResponse: freezed == entityResponse ? _self.entityResponse : entityResponse // ignore: cast_nullable_to_non_nullable
as String?,auction: freezed == auction ? _self.auction : auction // ignore: cast_nullable_to_non_nullable
as AppealAuctionRefModel?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,forwardedAt: freezed == forwardedAt ? _self.forwardedAt : forwardedAt // ignore: cast_nullable_to_non_nullable
as String?,entityDecidedAt: freezed == entityDecidedAt ? _self.entityDecidedAt : entityDecidedAt // ignore: cast_nullable_to_non_nullable
as String?,resolvedAt: freezed == resolvedAt ? _self.resolvedAt : resolvedAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of AppealModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppealAuctionRefModelCopyWith<$Res>? get auction {
    if (_self.auction == null) {
    return null;
  }

  return $AppealAuctionRefModelCopyWith<$Res>(_self.auction!, (value) {
    return _then(_self.copyWith(auction: value));
  });
}
}

// dart format on
