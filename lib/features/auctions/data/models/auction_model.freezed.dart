// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auction_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NamedRefModel {

 dynamic get id; String? get name;
/// Create a copy of NamedRefModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NamedRefModelCopyWith<NamedRefModel> get copyWith => _$NamedRefModelCopyWithImpl<NamedRefModel>(this as NamedRefModel, _$identity);

  /// Serializes this NamedRefModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as NamedRefModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NamedRefModel&&const DeepCollectionEquality().equals(other.id, _this.id)&&(identical(other.name, _this.name) || other.name == _this.name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as NamedRefModel;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.id),_this.name);
}

@override
String toString() {
  final _this = this as NamedRefModel;
  return 'NamedRefModel(id: ${_this.id}, name: ${_this.name})';
}


}

/// @nodoc
abstract mixin class $NamedRefModelCopyWith<$Res>  {
  factory $NamedRefModelCopyWith(NamedRefModel value, $Res Function(NamedRefModel) _then) = _$NamedRefModelCopyWithImpl;
@useResult
$Res call({
 dynamic id, String? name
});




}
/// @nodoc
class _$NamedRefModelCopyWithImpl<$Res>
    implements $NamedRefModelCopyWith<$Res> {
  _$NamedRefModelCopyWithImpl(this._self, this._then);

  final NamedRefModel _self;
  final $Res Function(NamedRefModel) _then;

/// Create a copy of NamedRefModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,}) {
  return _then(NamedRefModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as dynamic,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [NamedRefModel].
extension NamedRefModelPatterns on NamedRefModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NamedRefModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NamedRefModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NamedRefModel value)  $default,){
final _that = this;
switch (_that) {
case _NamedRefModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NamedRefModel value)?  $default,){
final _that = this;
switch (_that) {
case _NamedRefModel() when $default != null:
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
case _NamedRefModel() when $default != null:
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
case _NamedRefModel():
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
case _NamedRefModel() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _NamedRefModel extends NamedRefModel {
  const _NamedRefModel({this.id, this.name}): super._();
  factory _NamedRefModel.fromJson(Map<String, dynamic> json) => _$NamedRefModelFromJson(json);

@override final  dynamic id;
@override final  String? name;

/// Create a copy of NamedRefModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NamedRefModelCopyWith<_NamedRefModel> get copyWith => __$NamedRefModelCopyWithImpl<_NamedRefModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NamedRefModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _NamedRefModel&&const DeepCollectionEquality().equals(other.id, id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(id),name);
}

@override
String toString() {
    return 'NamedRefModel(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$NamedRefModelCopyWith<$Res> implements $NamedRefModelCopyWith<$Res> {
  factory _$NamedRefModelCopyWith(_NamedRefModel value, $Res Function(_NamedRefModel) _then) = __$NamedRefModelCopyWithImpl;
@override @useResult
$Res call({
 dynamic id, String? name
});




}
/// @nodoc
class __$NamedRefModelCopyWithImpl<$Res>
    implements _$NamedRefModelCopyWith<$Res> {
  __$NamedRefModelCopyWithImpl(this._self, this._then);

  final _NamedRefModel _self;
  final $Res Function(_NamedRefModel) _then;

/// Create a copy of NamedRefModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,}) {
  return _then(_NamedRefModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as dynamic,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$AuctionSpecModel {

 String? get title; String? get body;
/// Create a copy of AuctionSpecModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuctionSpecModelCopyWith<AuctionSpecModel> get copyWith => _$AuctionSpecModelCopyWithImpl<AuctionSpecModel>(this as AuctionSpecModel, _$identity);

  /// Serializes this AuctionSpecModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AuctionSpecModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuctionSpecModel&&(identical(other.title, _this.title) || other.title == _this.title)&&(identical(other.body, _this.body) || other.body == _this.body));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AuctionSpecModel;
  return Object.hash(runtimeType,_this.title,_this.body);
}

@override
String toString() {
  final _this = this as AuctionSpecModel;
  return 'AuctionSpecModel(title: ${_this.title}, body: ${_this.body})';
}


}

/// @nodoc
abstract mixin class $AuctionSpecModelCopyWith<$Res>  {
  factory $AuctionSpecModelCopyWith(AuctionSpecModel value, $Res Function(AuctionSpecModel) _then) = _$AuctionSpecModelCopyWithImpl;
@useResult
$Res call({
 String? title, String? body
});




}
/// @nodoc
class _$AuctionSpecModelCopyWithImpl<$Res>
    implements $AuctionSpecModelCopyWith<$Res> {
  _$AuctionSpecModelCopyWithImpl(this._self, this._then);

  final AuctionSpecModel _self;
  final $Res Function(AuctionSpecModel) _then;

/// Create a copy of AuctionSpecModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = freezed,Object? body = freezed,}) {
  return _then(AuctionSpecModel(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,body: freezed == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AuctionSpecModel].
extension AuctionSpecModelPatterns on AuctionSpecModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuctionSpecModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuctionSpecModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuctionSpecModel value)  $default,){
final _that = this;
switch (_that) {
case _AuctionSpecModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuctionSpecModel value)?  $default,){
final _that = this;
switch (_that) {
case _AuctionSpecModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? title,  String? body)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuctionSpecModel() when $default != null:
return $default(_that.title,_that.body);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? title,  String? body)  $default,) {final _that = this;
switch (_that) {
case _AuctionSpecModel():
return $default(_that.title,_that.body);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? title,  String? body)?  $default,) {final _that = this;
switch (_that) {
case _AuctionSpecModel() when $default != null:
return $default(_that.title,_that.body);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AuctionSpecModel extends AuctionSpecModel {
  const _AuctionSpecModel({this.title, this.body}): super._();
  factory _AuctionSpecModel.fromJson(Map<String, dynamic> json) => _$AuctionSpecModelFromJson(json);

@override final  String? title;
@override final  String? body;

/// Create a copy of AuctionSpecModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuctionSpecModelCopyWith<_AuctionSpecModel> get copyWith => __$AuctionSpecModelCopyWithImpl<_AuctionSpecModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuctionSpecModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuctionSpecModel&&(identical(other.title, title) || other.title == title)&&(identical(other.body, body) || other.body == body));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,title,body);
}

@override
String toString() {
    return 'AuctionSpecModel(title: $title, body: $body)';
}


}

/// @nodoc
abstract mixin class _$AuctionSpecModelCopyWith<$Res> implements $AuctionSpecModelCopyWith<$Res> {
  factory _$AuctionSpecModelCopyWith(_AuctionSpecModel value, $Res Function(_AuctionSpecModel) _then) = __$AuctionSpecModelCopyWithImpl;
@override @useResult
$Res call({
 String? title, String? body
});




}
/// @nodoc
class __$AuctionSpecModelCopyWithImpl<$Res>
    implements _$AuctionSpecModelCopyWith<$Res> {
  __$AuctionSpecModelCopyWithImpl(this._self, this._then);

  final _AuctionSpecModel _self;
  final $Res Function(_AuctionSpecModel) _then;

/// Create a copy of AuctionSpecModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = freezed,Object? body = freezed,}) {
  return _then(_AuctionSpecModel(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,body: freezed == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$InspectionModel {

 String? get start; String? get end; String? get location;@JsonKey(name: 'is_open') bool get isOpen;
/// Create a copy of InspectionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InspectionModelCopyWith<InspectionModel> get copyWith => _$InspectionModelCopyWithImpl<InspectionModel>(this as InspectionModel, _$identity);

  /// Serializes this InspectionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as InspectionModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InspectionModel&&(identical(other.start, _this.start) || other.start == _this.start)&&(identical(other.end, _this.end) || other.end == _this.end)&&(identical(other.location, _this.location) || other.location == _this.location)&&(identical(other.isOpen, _this.isOpen) || other.isOpen == _this.isOpen));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as InspectionModel;
  return Object.hash(runtimeType,_this.start,_this.end,_this.location,_this.isOpen);
}

@override
String toString() {
  final _this = this as InspectionModel;
  return 'InspectionModel(start: ${_this.start}, end: ${_this.end}, location: ${_this.location}, isOpen: ${_this.isOpen})';
}


}

/// @nodoc
abstract mixin class $InspectionModelCopyWith<$Res>  {
  factory $InspectionModelCopyWith(InspectionModel value, $Res Function(InspectionModel) _then) = _$InspectionModelCopyWithImpl;
@useResult
$Res call({
 String? start, String? end, String? location,@JsonKey(name: 'is_open') bool isOpen
});




}
/// @nodoc
class _$InspectionModelCopyWithImpl<$Res>
    implements $InspectionModelCopyWith<$Res> {
  _$InspectionModelCopyWithImpl(this._self, this._then);

  final InspectionModel _self;
  final $Res Function(InspectionModel) _then;

/// Create a copy of InspectionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? start = freezed,Object? end = freezed,Object? location = freezed,Object? isOpen = null,}) {
  return _then(InspectionModel(
start: freezed == start ? _self.start : start // ignore: cast_nullable_to_non_nullable
as String?,end: freezed == end ? _self.end : end // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,isOpen: null == isOpen ? _self.isOpen : isOpen // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [InspectionModel].
extension InspectionModelPatterns on InspectionModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InspectionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InspectionModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InspectionModel value)  $default,){
final _that = this;
switch (_that) {
case _InspectionModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InspectionModel value)?  $default,){
final _that = this;
switch (_that) {
case _InspectionModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? start,  String? end,  String? location, @JsonKey(name: 'is_open')  bool isOpen)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InspectionModel() when $default != null:
return $default(_that.start,_that.end,_that.location,_that.isOpen);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? start,  String? end,  String? location, @JsonKey(name: 'is_open')  bool isOpen)  $default,) {final _that = this;
switch (_that) {
case _InspectionModel():
return $default(_that.start,_that.end,_that.location,_that.isOpen);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? start,  String? end,  String? location, @JsonKey(name: 'is_open')  bool isOpen)?  $default,) {final _that = this;
switch (_that) {
case _InspectionModel() when $default != null:
return $default(_that.start,_that.end,_that.location,_that.isOpen);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InspectionModel extends InspectionModel {
  const _InspectionModel({this.start, this.end, this.location, @JsonKey(name: 'is_open') this.isOpen = false}): super._();
  factory _InspectionModel.fromJson(Map<String, dynamic> json) => _$InspectionModelFromJson(json);

@override final  String? start;
@override final  String? end;
@override final  String? location;
@override@JsonKey(name: 'is_open') final  bool isOpen;

/// Create a copy of InspectionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InspectionModelCopyWith<_InspectionModel> get copyWith => __$InspectionModelCopyWithImpl<_InspectionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InspectionModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _InspectionModel&&(identical(other.start, start) || other.start == start)&&(identical(other.end, end) || other.end == end)&&(identical(other.location, location) || other.location == location)&&(identical(other.isOpen, isOpen) || other.isOpen == isOpen));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,start,end,location,isOpen);
}

@override
String toString() {
    return 'InspectionModel(start: $start, end: $end, location: $location, isOpen: $isOpen)';
}


}

/// @nodoc
abstract mixin class _$InspectionModelCopyWith<$Res> implements $InspectionModelCopyWith<$Res> {
  factory _$InspectionModelCopyWith(_InspectionModel value, $Res Function(_InspectionModel) _then) = __$InspectionModelCopyWithImpl;
@override @useResult
$Res call({
 String? start, String? end, String? location,@JsonKey(name: 'is_open') bool isOpen
});




}
/// @nodoc
class __$InspectionModelCopyWithImpl<$Res>
    implements _$InspectionModelCopyWith<$Res> {
  __$InspectionModelCopyWithImpl(this._self, this._then);

  final _InspectionModel _self;
  final $Res Function(_InspectionModel) _then;

/// Create a copy of InspectionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? start = freezed,Object? end = freezed,Object? location = freezed,Object? isOpen = null,}) {
  return _then(_InspectionModel(
start: freezed == start ? _self.start : start // ignore: cast_nullable_to_non_nullable
as String?,end: freezed == end ? _self.end : end // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,isOpen: null == isOpen ? _self.isOpen : isOpen // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$AppealWindowModel {

 int get days;@JsonKey(name: 'is_open') bool get isOpen; String? get deadline;
/// Create a copy of AppealWindowModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppealWindowModelCopyWith<AppealWindowModel> get copyWith => _$AppealWindowModelCopyWithImpl<AppealWindowModel>(this as AppealWindowModel, _$identity);

  /// Serializes this AppealWindowModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AppealWindowModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppealWindowModel&&(identical(other.days, _this.days) || other.days == _this.days)&&(identical(other.isOpen, _this.isOpen) || other.isOpen == _this.isOpen)&&(identical(other.deadline, _this.deadline) || other.deadline == _this.deadline));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AppealWindowModel;
  return Object.hash(runtimeType,_this.days,_this.isOpen,_this.deadline);
}

@override
String toString() {
  final _this = this as AppealWindowModel;
  return 'AppealWindowModel(days: ${_this.days}, isOpen: ${_this.isOpen}, deadline: ${_this.deadline})';
}


}

/// @nodoc
abstract mixin class $AppealWindowModelCopyWith<$Res>  {
  factory $AppealWindowModelCopyWith(AppealWindowModel value, $Res Function(AppealWindowModel) _then) = _$AppealWindowModelCopyWithImpl;
@useResult
$Res call({
 int days,@JsonKey(name: 'is_open') bool isOpen, String? deadline
});




}
/// @nodoc
class _$AppealWindowModelCopyWithImpl<$Res>
    implements $AppealWindowModelCopyWith<$Res> {
  _$AppealWindowModelCopyWithImpl(this._self, this._then);

  final AppealWindowModel _self;
  final $Res Function(AppealWindowModel) _then;

/// Create a copy of AppealWindowModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? days = null,Object? isOpen = null,Object? deadline = freezed,}) {
  return _then(AppealWindowModel(
days: null == days ? _self.days : days // ignore: cast_nullable_to_non_nullable
as int,isOpen: null == isOpen ? _self.isOpen : isOpen // ignore: cast_nullable_to_non_nullable
as bool,deadline: freezed == deadline ? _self.deadline : deadline // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AppealWindowModel].
extension AppealWindowModelPatterns on AppealWindowModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppealWindowModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppealWindowModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppealWindowModel value)  $default,){
final _that = this;
switch (_that) {
case _AppealWindowModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppealWindowModel value)?  $default,){
final _that = this;
switch (_that) {
case _AppealWindowModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int days, @JsonKey(name: 'is_open')  bool isOpen,  String? deadline)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppealWindowModel() when $default != null:
return $default(_that.days,_that.isOpen,_that.deadline);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int days, @JsonKey(name: 'is_open')  bool isOpen,  String? deadline)  $default,) {final _that = this;
switch (_that) {
case _AppealWindowModel():
return $default(_that.days,_that.isOpen,_that.deadline);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int days, @JsonKey(name: 'is_open')  bool isOpen,  String? deadline)?  $default,) {final _that = this;
switch (_that) {
case _AppealWindowModel() when $default != null:
return $default(_that.days,_that.isOpen,_that.deadline);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AppealWindowModel extends AppealWindowModel {
  const _AppealWindowModel({this.days = 0, @JsonKey(name: 'is_open') this.isOpen = false, this.deadline}): super._();
  factory _AppealWindowModel.fromJson(Map<String, dynamic> json) => _$AppealWindowModelFromJson(json);

@override@JsonKey() final  int days;
@override@JsonKey(name: 'is_open') final  bool isOpen;
@override final  String? deadline;

/// Create a copy of AppealWindowModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppealWindowModelCopyWith<_AppealWindowModel> get copyWith => __$AppealWindowModelCopyWithImpl<_AppealWindowModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AppealWindowModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppealWindowModel&&(identical(other.days, days) || other.days == days)&&(identical(other.isOpen, isOpen) || other.isOpen == isOpen)&&(identical(other.deadline, deadline) || other.deadline == deadline));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,days,isOpen,deadline);
}

@override
String toString() {
    return 'AppealWindowModel(days: $days, isOpen: $isOpen, deadline: $deadline)';
}


}

/// @nodoc
abstract mixin class _$AppealWindowModelCopyWith<$Res> implements $AppealWindowModelCopyWith<$Res> {
  factory _$AppealWindowModelCopyWith(_AppealWindowModel value, $Res Function(_AppealWindowModel) _then) = __$AppealWindowModelCopyWithImpl;
@override @useResult
$Res call({
 int days,@JsonKey(name: 'is_open') bool isOpen, String? deadline
});




}
/// @nodoc
class __$AppealWindowModelCopyWithImpl<$Res>
    implements _$AppealWindowModelCopyWith<$Res> {
  __$AppealWindowModelCopyWithImpl(this._self, this._then);

  final _AppealWindowModel _self;
  final $Res Function(_AppealWindowModel) _then;

/// Create a copy of AppealWindowModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? days = null,Object? isOpen = null,Object? deadline = freezed,}) {
  return _then(_AppealWindowModel(
days: null == days ? _self.days : days // ignore: cast_nullable_to_non_nullable
as int,isOpen: null == isOpen ? _self.isOpen : isOpen // ignore: cast_nullable_to_non_nullable
as bool,deadline: freezed == deadline ? _self.deadline : deadline // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$LeaseModel {

@JsonKey(name: 'duration_years') int? get durationYears; int? get renewals;
/// Create a copy of LeaseModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LeaseModelCopyWith<LeaseModel> get copyWith => _$LeaseModelCopyWithImpl<LeaseModel>(this as LeaseModel, _$identity);

  /// Serializes this LeaseModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as LeaseModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LeaseModel&&(identical(other.durationYears, _this.durationYears) || other.durationYears == _this.durationYears)&&(identical(other.renewals, _this.renewals) || other.renewals == _this.renewals));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as LeaseModel;
  return Object.hash(runtimeType,_this.durationYears,_this.renewals);
}

@override
String toString() {
  final _this = this as LeaseModel;
  return 'LeaseModel(durationYears: ${_this.durationYears}, renewals: ${_this.renewals})';
}


}

/// @nodoc
abstract mixin class $LeaseModelCopyWith<$Res>  {
  factory $LeaseModelCopyWith(LeaseModel value, $Res Function(LeaseModel) _then) = _$LeaseModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'duration_years') int? durationYears, int? renewals
});




}
/// @nodoc
class _$LeaseModelCopyWithImpl<$Res>
    implements $LeaseModelCopyWith<$Res> {
  _$LeaseModelCopyWithImpl(this._self, this._then);

  final LeaseModel _self;
  final $Res Function(LeaseModel) _then;

/// Create a copy of LeaseModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? durationYears = freezed,Object? renewals = freezed,}) {
  return _then(LeaseModel(
durationYears: freezed == durationYears ? _self.durationYears : durationYears // ignore: cast_nullable_to_non_nullable
as int?,renewals: freezed == renewals ? _self.renewals : renewals // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [LeaseModel].
extension LeaseModelPatterns on LeaseModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LeaseModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LeaseModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LeaseModel value)  $default,){
final _that = this;
switch (_that) {
case _LeaseModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LeaseModel value)?  $default,){
final _that = this;
switch (_that) {
case _LeaseModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'duration_years')  int? durationYears,  int? renewals)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LeaseModel() when $default != null:
return $default(_that.durationYears,_that.renewals);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'duration_years')  int? durationYears,  int? renewals)  $default,) {final _that = this;
switch (_that) {
case _LeaseModel():
return $default(_that.durationYears,_that.renewals);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'duration_years')  int? durationYears,  int? renewals)?  $default,) {final _that = this;
switch (_that) {
case _LeaseModel() when $default != null:
return $default(_that.durationYears,_that.renewals);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LeaseModel extends LeaseModel {
  const _LeaseModel({@JsonKey(name: 'duration_years') this.durationYears, this.renewals}): super._();
  factory _LeaseModel.fromJson(Map<String, dynamic> json) => _$LeaseModelFromJson(json);

@override@JsonKey(name: 'duration_years') final  int? durationYears;
@override final  int? renewals;

/// Create a copy of LeaseModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LeaseModelCopyWith<_LeaseModel> get copyWith => __$LeaseModelCopyWithImpl<_LeaseModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LeaseModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LeaseModel&&(identical(other.durationYears, durationYears) || other.durationYears == durationYears)&&(identical(other.renewals, renewals) || other.renewals == renewals));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,durationYears,renewals);
}

@override
String toString() {
    return 'LeaseModel(durationYears: $durationYears, renewals: $renewals)';
}


}

/// @nodoc
abstract mixin class _$LeaseModelCopyWith<$Res> implements $LeaseModelCopyWith<$Res> {
  factory _$LeaseModelCopyWith(_LeaseModel value, $Res Function(_LeaseModel) _then) = __$LeaseModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'duration_years') int? durationYears, int? renewals
});




}
/// @nodoc
class __$LeaseModelCopyWithImpl<$Res>
    implements _$LeaseModelCopyWith<$Res> {
  __$LeaseModelCopyWithImpl(this._self, this._then);

  final _LeaseModel _self;
  final $Res Function(_LeaseModel) _then;

/// Create a copy of LeaseModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? durationYears = freezed,Object? renewals = freezed,}) {
  return _then(_LeaseModel(
durationYears: freezed == durationYears ? _self.durationYears : durationYears // ignore: cast_nullable_to_non_nullable
as int?,renewals: freezed == renewals ? _self.renewals : renewals // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$AuctionSessionModel {

 int get round; String? get code;@JsonKey(name: 'start_time') String? get startTime;@JsonKey(name: 'end_time') String? get endTime;@JsonKey(name: 'opening_price') MoneyModel? get openingPrice;@JsonKey(name: 'reduction_percent') dynamic get reductionPercent; String? get status;@JsonKey(name: 'result_label') String? get resultLabel;
/// Create a copy of AuctionSessionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuctionSessionModelCopyWith<AuctionSessionModel> get copyWith => _$AuctionSessionModelCopyWithImpl<AuctionSessionModel>(this as AuctionSessionModel, _$identity);

  /// Serializes this AuctionSessionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AuctionSessionModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuctionSessionModel&&(identical(other.round, _this.round) || other.round == _this.round)&&(identical(other.code, _this.code) || other.code == _this.code)&&(identical(other.startTime, _this.startTime) || other.startTime == _this.startTime)&&(identical(other.endTime, _this.endTime) || other.endTime == _this.endTime)&&(identical(other.openingPrice, _this.openingPrice) || other.openingPrice == _this.openingPrice)&&const DeepCollectionEquality().equals(other.reductionPercent, _this.reductionPercent)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.resultLabel, _this.resultLabel) || other.resultLabel == _this.resultLabel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AuctionSessionModel;
  return Object.hash(runtimeType,_this.round,_this.code,_this.startTime,_this.endTime,_this.openingPrice,const DeepCollectionEquality().hash(_this.reductionPercent),_this.status,_this.resultLabel);
}

@override
String toString() {
  final _this = this as AuctionSessionModel;
  return 'AuctionSessionModel(round: ${_this.round}, code: ${_this.code}, startTime: ${_this.startTime}, endTime: ${_this.endTime}, openingPrice: ${_this.openingPrice}, reductionPercent: ${_this.reductionPercent}, status: ${_this.status}, resultLabel: ${_this.resultLabel})';
}


}

/// @nodoc
abstract mixin class $AuctionSessionModelCopyWith<$Res>  {
  factory $AuctionSessionModelCopyWith(AuctionSessionModel value, $Res Function(AuctionSessionModel) _then) = _$AuctionSessionModelCopyWithImpl;
@useResult
$Res call({
 int round, String? code,@JsonKey(name: 'start_time') String? startTime,@JsonKey(name: 'end_time') String? endTime,@JsonKey(name: 'opening_price') MoneyModel? openingPrice,@JsonKey(name: 'reduction_percent') dynamic reductionPercent, String? status,@JsonKey(name: 'result_label') String? resultLabel
});


$MoneyModelCopyWith<$Res>? get openingPrice;

}
/// @nodoc
class _$AuctionSessionModelCopyWithImpl<$Res>
    implements $AuctionSessionModelCopyWith<$Res> {
  _$AuctionSessionModelCopyWithImpl(this._self, this._then);

  final AuctionSessionModel _self;
  final $Res Function(AuctionSessionModel) _then;

/// Create a copy of AuctionSessionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? round = null,Object? code = freezed,Object? startTime = freezed,Object? endTime = freezed,Object? openingPrice = freezed,Object? reductionPercent = freezed,Object? status = freezed,Object? resultLabel = freezed,}) {
  return _then(AuctionSessionModel(
round: null == round ? _self.round : round // ignore: cast_nullable_to_non_nullable
as int,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,startTime: freezed == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String?,endTime: freezed == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as String?,openingPrice: freezed == openingPrice ? _self.openingPrice : openingPrice // ignore: cast_nullable_to_non_nullable
as MoneyModel?,reductionPercent: freezed == reductionPercent ? _self.reductionPercent : reductionPercent // ignore: cast_nullable_to_non_nullable
as dynamic,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,resultLabel: freezed == resultLabel ? _self.resultLabel : resultLabel // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of AuctionSessionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyModelCopyWith<$Res>? get openingPrice {
    if (_self.openingPrice == null) {
    return null;
  }

  return $MoneyModelCopyWith<$Res>(_self.openingPrice!, (value) {
    return _then(_self.copyWith(openingPrice: value));
  });
}
}


/// Adds pattern-matching-related methods to [AuctionSessionModel].
extension AuctionSessionModelPatterns on AuctionSessionModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuctionSessionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuctionSessionModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuctionSessionModel value)  $default,){
final _that = this;
switch (_that) {
case _AuctionSessionModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuctionSessionModel value)?  $default,){
final _that = this;
switch (_that) {
case _AuctionSessionModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int round,  String? code, @JsonKey(name: 'start_time')  String? startTime, @JsonKey(name: 'end_time')  String? endTime, @JsonKey(name: 'opening_price')  MoneyModel? openingPrice, @JsonKey(name: 'reduction_percent')  dynamic reductionPercent,  String? status, @JsonKey(name: 'result_label')  String? resultLabel)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuctionSessionModel() when $default != null:
return $default(_that.round,_that.code,_that.startTime,_that.endTime,_that.openingPrice,_that.reductionPercent,_that.status,_that.resultLabel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int round,  String? code, @JsonKey(name: 'start_time')  String? startTime, @JsonKey(name: 'end_time')  String? endTime, @JsonKey(name: 'opening_price')  MoneyModel? openingPrice, @JsonKey(name: 'reduction_percent')  dynamic reductionPercent,  String? status, @JsonKey(name: 'result_label')  String? resultLabel)  $default,) {final _that = this;
switch (_that) {
case _AuctionSessionModel():
return $default(_that.round,_that.code,_that.startTime,_that.endTime,_that.openingPrice,_that.reductionPercent,_that.status,_that.resultLabel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int round,  String? code, @JsonKey(name: 'start_time')  String? startTime, @JsonKey(name: 'end_time')  String? endTime, @JsonKey(name: 'opening_price')  MoneyModel? openingPrice, @JsonKey(name: 'reduction_percent')  dynamic reductionPercent,  String? status, @JsonKey(name: 'result_label')  String? resultLabel)?  $default,) {final _that = this;
switch (_that) {
case _AuctionSessionModel() when $default != null:
return $default(_that.round,_that.code,_that.startTime,_that.endTime,_that.openingPrice,_that.reductionPercent,_that.status,_that.resultLabel);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AuctionSessionModel extends AuctionSessionModel {
  const _AuctionSessionModel({this.round = 1, this.code, @JsonKey(name: 'start_time') this.startTime, @JsonKey(name: 'end_time') this.endTime, @JsonKey(name: 'opening_price') this.openingPrice, @JsonKey(name: 'reduction_percent') this.reductionPercent, this.status, @JsonKey(name: 'result_label') this.resultLabel}): super._();
  factory _AuctionSessionModel.fromJson(Map<String, dynamic> json) => _$AuctionSessionModelFromJson(json);

@override@JsonKey() final  int round;
@override final  String? code;
@override@JsonKey(name: 'start_time') final  String? startTime;
@override@JsonKey(name: 'end_time') final  String? endTime;
@override@JsonKey(name: 'opening_price') final  MoneyModel? openingPrice;
@override@JsonKey(name: 'reduction_percent') final  dynamic reductionPercent;
@override final  String? status;
@override@JsonKey(name: 'result_label') final  String? resultLabel;

/// Create a copy of AuctionSessionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuctionSessionModelCopyWith<_AuctionSessionModel> get copyWith => __$AuctionSessionModelCopyWithImpl<_AuctionSessionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuctionSessionModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuctionSessionModel&&(identical(other.round, round) || other.round == round)&&(identical(other.code, code) || other.code == code)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.openingPrice, openingPrice) || other.openingPrice == openingPrice)&&const DeepCollectionEquality().equals(other.reductionPercent, reductionPercent)&&(identical(other.status, status) || other.status == status)&&(identical(other.resultLabel, resultLabel) || other.resultLabel == resultLabel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,round,code,startTime,endTime,openingPrice,const DeepCollectionEquality().hash(reductionPercent),status,resultLabel);
}

@override
String toString() {
    return 'AuctionSessionModel(round: $round, code: $code, startTime: $startTime, endTime: $endTime, openingPrice: $openingPrice, reductionPercent: $reductionPercent, status: $status, resultLabel: $resultLabel)';
}


}

/// @nodoc
abstract mixin class _$AuctionSessionModelCopyWith<$Res> implements $AuctionSessionModelCopyWith<$Res> {
  factory _$AuctionSessionModelCopyWith(_AuctionSessionModel value, $Res Function(_AuctionSessionModel) _then) = __$AuctionSessionModelCopyWithImpl;
@override @useResult
$Res call({
 int round, String? code,@JsonKey(name: 'start_time') String? startTime,@JsonKey(name: 'end_time') String? endTime,@JsonKey(name: 'opening_price') MoneyModel? openingPrice,@JsonKey(name: 'reduction_percent') dynamic reductionPercent, String? status,@JsonKey(name: 'result_label') String? resultLabel
});


@override $MoneyModelCopyWith<$Res>? get openingPrice;

}
/// @nodoc
class __$AuctionSessionModelCopyWithImpl<$Res>
    implements _$AuctionSessionModelCopyWith<$Res> {
  __$AuctionSessionModelCopyWithImpl(this._self, this._then);

  final _AuctionSessionModel _self;
  final $Res Function(_AuctionSessionModel) _then;

/// Create a copy of AuctionSessionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? round = null,Object? code = freezed,Object? startTime = freezed,Object? endTime = freezed,Object? openingPrice = freezed,Object? reductionPercent = freezed,Object? status = freezed,Object? resultLabel = freezed,}) {
  return _then(_AuctionSessionModel(
round: null == round ? _self.round : round // ignore: cast_nullable_to_non_nullable
as int,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,startTime: freezed == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String?,endTime: freezed == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as String?,openingPrice: freezed == openingPrice ? _self.openingPrice : openingPrice // ignore: cast_nullable_to_non_nullable
as MoneyModel?,reductionPercent: freezed == reductionPercent ? _self.reductionPercent : reductionPercent // ignore: cast_nullable_to_non_nullable
as dynamic,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,resultLabel: freezed == resultLabel ? _self.resultLabel : resultLabel // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of AuctionSessionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyModelCopyWith<$Res>? get openingPrice {
    if (_self.openingPrice == null) {
    return null;
  }

  return $MoneyModelCopyWith<$Res>(_self.openingPrice!, (value) {
    return _then(_self.copyWith(openingPrice: value));
  });
}
}


/// @nodoc
mixin _$AuctionSessionInfoModel {

 int get round; String? get code;@JsonKey(name: 'start_time') String? get startTime;@JsonKey(name: 'end_time') String? get endTime;@JsonKey(name: 'opening_price') MoneyModel? get openingPrice;@JsonKey(name: 'reduction_percent') dynamic get reductionPercent;@JsonKey(name: 'reschedule_count') int get rescheduleCount;@JsonKey(name: 'original_opening_price') MoneyModel? get originalOpeningPrice; List<AuctionSessionModel> get history;
/// Create a copy of AuctionSessionInfoModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuctionSessionInfoModelCopyWith<AuctionSessionInfoModel> get copyWith => _$AuctionSessionInfoModelCopyWithImpl<AuctionSessionInfoModel>(this as AuctionSessionInfoModel, _$identity);

  /// Serializes this AuctionSessionInfoModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AuctionSessionInfoModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuctionSessionInfoModel&&(identical(other.round, _this.round) || other.round == _this.round)&&(identical(other.code, _this.code) || other.code == _this.code)&&(identical(other.startTime, _this.startTime) || other.startTime == _this.startTime)&&(identical(other.endTime, _this.endTime) || other.endTime == _this.endTime)&&(identical(other.openingPrice, _this.openingPrice) || other.openingPrice == _this.openingPrice)&&const DeepCollectionEquality().equals(other.reductionPercent, _this.reductionPercent)&&(identical(other.rescheduleCount, _this.rescheduleCount) || other.rescheduleCount == _this.rescheduleCount)&&(identical(other.originalOpeningPrice, _this.originalOpeningPrice) || other.originalOpeningPrice == _this.originalOpeningPrice)&&const DeepCollectionEquality().equals(other.history, _this.history));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AuctionSessionInfoModel;
  return Object.hash(runtimeType,_this.round,_this.code,_this.startTime,_this.endTime,_this.openingPrice,const DeepCollectionEquality().hash(_this.reductionPercent),_this.rescheduleCount,_this.originalOpeningPrice,const DeepCollectionEquality().hash(_this.history));
}

@override
String toString() {
  final _this = this as AuctionSessionInfoModel;
  return 'AuctionSessionInfoModel(round: ${_this.round}, code: ${_this.code}, startTime: ${_this.startTime}, endTime: ${_this.endTime}, openingPrice: ${_this.openingPrice}, reductionPercent: ${_this.reductionPercent}, rescheduleCount: ${_this.rescheduleCount}, originalOpeningPrice: ${_this.originalOpeningPrice}, history: ${_this.history})';
}


}

/// @nodoc
abstract mixin class $AuctionSessionInfoModelCopyWith<$Res>  {
  factory $AuctionSessionInfoModelCopyWith(AuctionSessionInfoModel value, $Res Function(AuctionSessionInfoModel) _then) = _$AuctionSessionInfoModelCopyWithImpl;
@useResult
$Res call({
 int round, String? code,@JsonKey(name: 'start_time') String? startTime,@JsonKey(name: 'end_time') String? endTime,@JsonKey(name: 'opening_price') MoneyModel? openingPrice,@JsonKey(name: 'reduction_percent') dynamic reductionPercent,@JsonKey(name: 'reschedule_count') int rescheduleCount,@JsonKey(name: 'original_opening_price') MoneyModel? originalOpeningPrice, List<AuctionSessionModel> history
});


$MoneyModelCopyWith<$Res>? get openingPrice;$MoneyModelCopyWith<$Res>? get originalOpeningPrice;

}
/// @nodoc
class _$AuctionSessionInfoModelCopyWithImpl<$Res>
    implements $AuctionSessionInfoModelCopyWith<$Res> {
  _$AuctionSessionInfoModelCopyWithImpl(this._self, this._then);

  final AuctionSessionInfoModel _self;
  final $Res Function(AuctionSessionInfoModel) _then;

/// Create a copy of AuctionSessionInfoModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? round = null,Object? code = freezed,Object? startTime = freezed,Object? endTime = freezed,Object? openingPrice = freezed,Object? reductionPercent = freezed,Object? rescheduleCount = null,Object? originalOpeningPrice = freezed,Object? history = null,}) {
  return _then(AuctionSessionInfoModel(
round: null == round ? _self.round : round // ignore: cast_nullable_to_non_nullable
as int,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,startTime: freezed == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String?,endTime: freezed == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as String?,openingPrice: freezed == openingPrice ? _self.openingPrice : openingPrice // ignore: cast_nullable_to_non_nullable
as MoneyModel?,reductionPercent: freezed == reductionPercent ? _self.reductionPercent : reductionPercent // ignore: cast_nullable_to_non_nullable
as dynamic,rescheduleCount: null == rescheduleCount ? _self.rescheduleCount : rescheduleCount // ignore: cast_nullable_to_non_nullable
as int,originalOpeningPrice: freezed == originalOpeningPrice ? _self.originalOpeningPrice : originalOpeningPrice // ignore: cast_nullable_to_non_nullable
as MoneyModel?,history: null == history ? _self.history : history // ignore: cast_nullable_to_non_nullable
as List<AuctionSessionModel>,
  ));
}
/// Create a copy of AuctionSessionInfoModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyModelCopyWith<$Res>? get openingPrice {
    if (_self.openingPrice == null) {
    return null;
  }

  return $MoneyModelCopyWith<$Res>(_self.openingPrice!, (value) {
    return _then(_self.copyWith(openingPrice: value));
  });
}/// Create a copy of AuctionSessionInfoModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyModelCopyWith<$Res>? get originalOpeningPrice {
    if (_self.originalOpeningPrice == null) {
    return null;
  }

  return $MoneyModelCopyWith<$Res>(_self.originalOpeningPrice!, (value) {
    return _then(_self.copyWith(originalOpeningPrice: value));
  });
}
}


/// Adds pattern-matching-related methods to [AuctionSessionInfoModel].
extension AuctionSessionInfoModelPatterns on AuctionSessionInfoModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuctionSessionInfoModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuctionSessionInfoModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuctionSessionInfoModel value)  $default,){
final _that = this;
switch (_that) {
case _AuctionSessionInfoModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuctionSessionInfoModel value)?  $default,){
final _that = this;
switch (_that) {
case _AuctionSessionInfoModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int round,  String? code, @JsonKey(name: 'start_time')  String? startTime, @JsonKey(name: 'end_time')  String? endTime, @JsonKey(name: 'opening_price')  MoneyModel? openingPrice, @JsonKey(name: 'reduction_percent')  dynamic reductionPercent, @JsonKey(name: 'reschedule_count')  int rescheduleCount, @JsonKey(name: 'original_opening_price')  MoneyModel? originalOpeningPrice,  List<AuctionSessionModel> history)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuctionSessionInfoModel() when $default != null:
return $default(_that.round,_that.code,_that.startTime,_that.endTime,_that.openingPrice,_that.reductionPercent,_that.rescheduleCount,_that.originalOpeningPrice,_that.history);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int round,  String? code, @JsonKey(name: 'start_time')  String? startTime, @JsonKey(name: 'end_time')  String? endTime, @JsonKey(name: 'opening_price')  MoneyModel? openingPrice, @JsonKey(name: 'reduction_percent')  dynamic reductionPercent, @JsonKey(name: 'reschedule_count')  int rescheduleCount, @JsonKey(name: 'original_opening_price')  MoneyModel? originalOpeningPrice,  List<AuctionSessionModel> history)  $default,) {final _that = this;
switch (_that) {
case _AuctionSessionInfoModel():
return $default(_that.round,_that.code,_that.startTime,_that.endTime,_that.openingPrice,_that.reductionPercent,_that.rescheduleCount,_that.originalOpeningPrice,_that.history);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int round,  String? code, @JsonKey(name: 'start_time')  String? startTime, @JsonKey(name: 'end_time')  String? endTime, @JsonKey(name: 'opening_price')  MoneyModel? openingPrice, @JsonKey(name: 'reduction_percent')  dynamic reductionPercent, @JsonKey(name: 'reschedule_count')  int rescheduleCount, @JsonKey(name: 'original_opening_price')  MoneyModel? originalOpeningPrice,  List<AuctionSessionModel> history)?  $default,) {final _that = this;
switch (_that) {
case _AuctionSessionInfoModel() when $default != null:
return $default(_that.round,_that.code,_that.startTime,_that.endTime,_that.openingPrice,_that.reductionPercent,_that.rescheduleCount,_that.originalOpeningPrice,_that.history);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AuctionSessionInfoModel extends AuctionSessionInfoModel {
  const _AuctionSessionInfoModel({this.round = 1, this.code, @JsonKey(name: 'start_time') this.startTime, @JsonKey(name: 'end_time') this.endTime, @JsonKey(name: 'opening_price') this.openingPrice, @JsonKey(name: 'reduction_percent') this.reductionPercent, @JsonKey(name: 'reschedule_count') this.rescheduleCount = 0, @JsonKey(name: 'original_opening_price') this.originalOpeningPrice,  List<AuctionSessionModel> history = const <AuctionSessionModel>[]}): _history = history,super._();
  factory _AuctionSessionInfoModel.fromJson(Map<String, dynamic> json) => _$AuctionSessionInfoModelFromJson(json);

@override@JsonKey() final  int round;
@override final  String? code;
@override@JsonKey(name: 'start_time') final  String? startTime;
@override@JsonKey(name: 'end_time') final  String? endTime;
@override@JsonKey(name: 'opening_price') final  MoneyModel? openingPrice;
@override@JsonKey(name: 'reduction_percent') final  dynamic reductionPercent;
@override@JsonKey(name: 'reschedule_count') final  int rescheduleCount;
@override@JsonKey(name: 'original_opening_price') final  MoneyModel? originalOpeningPrice;
 final  List<AuctionSessionModel> _history;
@override@JsonKey() List<AuctionSessionModel> get history {
  if (_history is EqualUnmodifiableListView) return _history;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_history);
}


/// Create a copy of AuctionSessionInfoModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuctionSessionInfoModelCopyWith<_AuctionSessionInfoModel> get copyWith => __$AuctionSessionInfoModelCopyWithImpl<_AuctionSessionInfoModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuctionSessionInfoModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuctionSessionInfoModel&&(identical(other.round, round) || other.round == round)&&(identical(other.code, code) || other.code == code)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.openingPrice, openingPrice) || other.openingPrice == openingPrice)&&const DeepCollectionEquality().equals(other.reductionPercent, reductionPercent)&&(identical(other.rescheduleCount, rescheduleCount) || other.rescheduleCount == rescheduleCount)&&(identical(other.originalOpeningPrice, originalOpeningPrice) || other.originalOpeningPrice == originalOpeningPrice)&&const DeepCollectionEquality().equals(other.history, _history));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,round,code,startTime,endTime,openingPrice,const DeepCollectionEquality().hash(reductionPercent),rescheduleCount,originalOpeningPrice,const DeepCollectionEquality().hash(_history));
}

@override
String toString() {
    return 'AuctionSessionInfoModel(round: $round, code: $code, startTime: $startTime, endTime: $endTime, openingPrice: $openingPrice, reductionPercent: $reductionPercent, rescheduleCount: $rescheduleCount, originalOpeningPrice: $originalOpeningPrice, history: $history)';
}


}

/// @nodoc
abstract mixin class _$AuctionSessionInfoModelCopyWith<$Res> implements $AuctionSessionInfoModelCopyWith<$Res> {
  factory _$AuctionSessionInfoModelCopyWith(_AuctionSessionInfoModel value, $Res Function(_AuctionSessionInfoModel) _then) = __$AuctionSessionInfoModelCopyWithImpl;
@override @useResult
$Res call({
 int round, String? code,@JsonKey(name: 'start_time') String? startTime,@JsonKey(name: 'end_time') String? endTime,@JsonKey(name: 'opening_price') MoneyModel? openingPrice,@JsonKey(name: 'reduction_percent') dynamic reductionPercent,@JsonKey(name: 'reschedule_count') int rescheduleCount,@JsonKey(name: 'original_opening_price') MoneyModel? originalOpeningPrice, List<AuctionSessionModel> history
});


@override $MoneyModelCopyWith<$Res>? get openingPrice;@override $MoneyModelCopyWith<$Res>? get originalOpeningPrice;

}
/// @nodoc
class __$AuctionSessionInfoModelCopyWithImpl<$Res>
    implements _$AuctionSessionInfoModelCopyWith<$Res> {
  __$AuctionSessionInfoModelCopyWithImpl(this._self, this._then);

  final _AuctionSessionInfoModel _self;
  final $Res Function(_AuctionSessionInfoModel) _then;

/// Create a copy of AuctionSessionInfoModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? round = null,Object? code = freezed,Object? startTime = freezed,Object? endTime = freezed,Object? openingPrice = freezed,Object? reductionPercent = freezed,Object? rescheduleCount = null,Object? originalOpeningPrice = freezed,Object? history = null,}) {
  return _then(_AuctionSessionInfoModel(
round: null == round ? _self.round : round // ignore: cast_nullable_to_non_nullable
as int,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,startTime: freezed == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String?,endTime: freezed == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as String?,openingPrice: freezed == openingPrice ? _self.openingPrice : openingPrice // ignore: cast_nullable_to_non_nullable
as MoneyModel?,reductionPercent: freezed == reductionPercent ? _self.reductionPercent : reductionPercent // ignore: cast_nullable_to_non_nullable
as dynamic,rescheduleCount: null == rescheduleCount ? _self.rescheduleCount : rescheduleCount // ignore: cast_nullable_to_non_nullable
as int,originalOpeningPrice: freezed == originalOpeningPrice ? _self.originalOpeningPrice : originalOpeningPrice // ignore: cast_nullable_to_non_nullable
as MoneyModel?,history: null == history ? _self._history : history // ignore: cast_nullable_to_non_nullable
as List<AuctionSessionModel>,
  ));
}

/// Create a copy of AuctionSessionInfoModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyModelCopyWith<$Res>? get openingPrice {
    if (_self.openingPrice == null) {
    return null;
  }

  return $MoneyModelCopyWith<$Res>(_self.openingPrice!, (value) {
    return _then(_self.copyWith(openingPrice: value));
  });
}/// Create a copy of AuctionSessionInfoModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyModelCopyWith<$Res>? get originalOpeningPrice {
    if (_self.originalOpeningPrice == null) {
    return null;
  }

  return $MoneyModelCopyWith<$Res>(_self.originalOpeningPrice!, (value) {
    return _then(_self.copyWith(originalOpeningPrice: value));
  });
}
}


/// @nodoc
mixin _$AuctionSectorModel {

 dynamic get id; String? get name;@JsonKey(name: 'min_increment_percent') dynamic get minIncrementPercent;
/// Create a copy of AuctionSectorModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuctionSectorModelCopyWith<AuctionSectorModel> get copyWith => _$AuctionSectorModelCopyWithImpl<AuctionSectorModel>(this as AuctionSectorModel, _$identity);

  /// Serializes this AuctionSectorModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AuctionSectorModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuctionSectorModel&&const DeepCollectionEquality().equals(other.id, _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&const DeepCollectionEquality().equals(other.minIncrementPercent, _this.minIncrementPercent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AuctionSectorModel;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.id),_this.name,const DeepCollectionEquality().hash(_this.minIncrementPercent));
}

@override
String toString() {
  final _this = this as AuctionSectorModel;
  return 'AuctionSectorModel(id: ${_this.id}, name: ${_this.name}, minIncrementPercent: ${_this.minIncrementPercent})';
}


}

/// @nodoc
abstract mixin class $AuctionSectorModelCopyWith<$Res>  {
  factory $AuctionSectorModelCopyWith(AuctionSectorModel value, $Res Function(AuctionSectorModel) _then) = _$AuctionSectorModelCopyWithImpl;
@useResult
$Res call({
 dynamic id, String? name,@JsonKey(name: 'min_increment_percent') dynamic minIncrementPercent
});




}
/// @nodoc
class _$AuctionSectorModelCopyWithImpl<$Res>
    implements $AuctionSectorModelCopyWith<$Res> {
  _$AuctionSectorModelCopyWithImpl(this._self, this._then);

  final AuctionSectorModel _self;
  final $Res Function(AuctionSectorModel) _then;

/// Create a copy of AuctionSectorModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? minIncrementPercent = freezed,}) {
  return _then(AuctionSectorModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as dynamic,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,minIncrementPercent: freezed == minIncrementPercent ? _self.minIncrementPercent : minIncrementPercent // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [AuctionSectorModel].
extension AuctionSectorModelPatterns on AuctionSectorModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuctionSectorModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuctionSectorModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuctionSectorModel value)  $default,){
final _that = this;
switch (_that) {
case _AuctionSectorModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuctionSectorModel value)?  $default,){
final _that = this;
switch (_that) {
case _AuctionSectorModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( dynamic id,  String? name, @JsonKey(name: 'min_increment_percent')  dynamic minIncrementPercent)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuctionSectorModel() when $default != null:
return $default(_that.id,_that.name,_that.minIncrementPercent);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( dynamic id,  String? name, @JsonKey(name: 'min_increment_percent')  dynamic minIncrementPercent)  $default,) {final _that = this;
switch (_that) {
case _AuctionSectorModel():
return $default(_that.id,_that.name,_that.minIncrementPercent);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( dynamic id,  String? name, @JsonKey(name: 'min_increment_percent')  dynamic minIncrementPercent)?  $default,) {final _that = this;
switch (_that) {
case _AuctionSectorModel() when $default != null:
return $default(_that.id,_that.name,_that.minIncrementPercent);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AuctionSectorModel extends AuctionSectorModel {
  const _AuctionSectorModel({this.id, this.name, @JsonKey(name: 'min_increment_percent') this.minIncrementPercent}): super._();
  factory _AuctionSectorModel.fromJson(Map<String, dynamic> json) => _$AuctionSectorModelFromJson(json);

@override final  dynamic id;
@override final  String? name;
@override@JsonKey(name: 'min_increment_percent') final  dynamic minIncrementPercent;

/// Create a copy of AuctionSectorModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuctionSectorModelCopyWith<_AuctionSectorModel> get copyWith => __$AuctionSectorModelCopyWithImpl<_AuctionSectorModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuctionSectorModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuctionSectorModel&&const DeepCollectionEquality().equals(other.id, id)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.minIncrementPercent, minIncrementPercent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(id),name,const DeepCollectionEquality().hash(minIncrementPercent));
}

@override
String toString() {
    return 'AuctionSectorModel(id: $id, name: $name, minIncrementPercent: $minIncrementPercent)';
}


}

/// @nodoc
abstract mixin class _$AuctionSectorModelCopyWith<$Res> implements $AuctionSectorModelCopyWith<$Res> {
  factory _$AuctionSectorModelCopyWith(_AuctionSectorModel value, $Res Function(_AuctionSectorModel) _then) = __$AuctionSectorModelCopyWithImpl;
@override @useResult
$Res call({
 dynamic id, String? name,@JsonKey(name: 'min_increment_percent') dynamic minIncrementPercent
});




}
/// @nodoc
class __$AuctionSectorModelCopyWithImpl<$Res>
    implements _$AuctionSectorModelCopyWith<$Res> {
  __$AuctionSectorModelCopyWithImpl(this._self, this._then);

  final _AuctionSectorModel _self;
  final $Res Function(_AuctionSectorModel) _then;

/// Create a copy of AuctionSectorModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? minIncrementPercent = freezed,}) {
  return _then(_AuctionSectorModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as dynamic,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,minIncrementPercent: freezed == minIncrementPercent ? _self.minIncrementPercent : minIncrementPercent // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}


/// @nodoc
mixin _$AuctionModel {

 String get id; String? get title; String? get description; String? get status;@JsonKey(name: 'auction_type') String? get auctionType;@JsonKey(name: 'asset_class') String? get assetClass; String? get condition;@JsonKey(name: 'unit_count') int? get unitCount;@JsonKey(name: 'condition_terms') String? get conditionTerms;@JsonKey(name: 'award_terms') String? get awardTerms; List<AuctionSpecModel> get specifications;@JsonKey(name: 'cover_photo_url') String? get coverPhotoUrl; List<String> get photos;@JsonKey(name: 'video_url') String? get videoUrl; NamedRefModel? get category; NamedRefModel? get entity; WilayaRefModel? get wilaya; NamedRefModel? get commune;@JsonKey(name: 'asset_location') String? get assetLocation; dynamic get latitude; dynamic get longitude;@JsonKey(name: 'mayor_name') String? get mayorName;@JsonKey(name: 'opening_price') MoneyModel? get openingPrice;@JsonKey(name: 'current_price') MoneyModel? get currentPrice;@JsonKey(name: 'deposit_amount') MoneyModel? get depositAmount;@JsonKey(name: 'deposit_percent') dynamic get depositPercent;@JsonKey(name: 'book_price') MoneyModel? get bookPrice;@JsonKey(name: 'has_book_access') bool get hasBookAccess;@JsonKey(name: 'bid_count') int get bidCount;@JsonKey(name: 'start_time') String? get startTime;@JsonKey(name: 'end_time') String? get endTime;@JsonKey(name: 'seconds_remaining') int get secondsRemaining;@JsonKey(name: 'is_live') bool get isLive;@JsonKey(name: 'is_biddable') bool get isBiddable;@JsonKey(name: 'has_ended') bool get hasEnded;@JsonKey(name: 'extension_count') int get extensionCount;@JsonKey(name: 'max_extensions') int? get maxExtensions; InspectionModel? get inspection;@JsonKey(name: 'appeal_window') AppealWindowModel? get appealWindow; LeaseModel? get lease;@JsonKey(name: 'winner_alias') String? get winnerAlias;@JsonKey(name: 'final_price') MoneyModel? get finalPrice;@JsonKey(name: 'requires_commerce_register') bool get requiresCommerceRegister;@JsonKey(name: 'requires_newspaper_announcement') bool get requiresNewspaperAnnouncement;@JsonKey(name: 'condition_book') ConditionBookModel? get conditionBook;@JsonKey(name: 'award_document') ConditionBookModel? get awardDocument;@JsonKey(name: 'participation_receipt') ConditionBookModel? get participationReceipt;@JsonKey(name: 'result_document') ConditionBookModel? get resultDocument; AuctionSessionInfoModel? get session; AuctionSectorModel? get sector;@JsonKey(name: 'min_bid') MoneyModel? get minBid;@JsonKey(name: 'publication_priority') String? get publicationPriority;
/// Create a copy of AuctionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuctionModelCopyWith<AuctionModel> get copyWith => _$AuctionModelCopyWithImpl<AuctionModel>(this as AuctionModel, _$identity);

  /// Serializes this AuctionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AuctionModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuctionModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.title, _this.title) || other.title == _this.title)&&(identical(other.description, _this.description) || other.description == _this.description)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.auctionType, _this.auctionType) || other.auctionType == _this.auctionType)&&(identical(other.assetClass, _this.assetClass) || other.assetClass == _this.assetClass)&&(identical(other.condition, _this.condition) || other.condition == _this.condition)&&(identical(other.unitCount, _this.unitCount) || other.unitCount == _this.unitCount)&&(identical(other.conditionTerms, _this.conditionTerms) || other.conditionTerms == _this.conditionTerms)&&(identical(other.awardTerms, _this.awardTerms) || other.awardTerms == _this.awardTerms)&&const DeepCollectionEquality().equals(other.specifications, _this.specifications)&&(identical(other.coverPhotoUrl, _this.coverPhotoUrl) || other.coverPhotoUrl == _this.coverPhotoUrl)&&const DeepCollectionEquality().equals(other.photos, _this.photos)&&(identical(other.videoUrl, _this.videoUrl) || other.videoUrl == _this.videoUrl)&&(identical(other.category, _this.category) || other.category == _this.category)&&(identical(other.entity, _this.entity) || other.entity == _this.entity)&&(identical(other.wilaya, _this.wilaya) || other.wilaya == _this.wilaya)&&(identical(other.commune, _this.commune) || other.commune == _this.commune)&&(identical(other.assetLocation, _this.assetLocation) || other.assetLocation == _this.assetLocation)&&const DeepCollectionEquality().equals(other.latitude, _this.latitude)&&const DeepCollectionEquality().equals(other.longitude, _this.longitude)&&(identical(other.mayorName, _this.mayorName) || other.mayorName == _this.mayorName)&&(identical(other.openingPrice, _this.openingPrice) || other.openingPrice == _this.openingPrice)&&(identical(other.currentPrice, _this.currentPrice) || other.currentPrice == _this.currentPrice)&&(identical(other.depositAmount, _this.depositAmount) || other.depositAmount == _this.depositAmount)&&const DeepCollectionEquality().equals(other.depositPercent, _this.depositPercent)&&(identical(other.bookPrice, _this.bookPrice) || other.bookPrice == _this.bookPrice)&&(identical(other.hasBookAccess, _this.hasBookAccess) || other.hasBookAccess == _this.hasBookAccess)&&(identical(other.bidCount, _this.bidCount) || other.bidCount == _this.bidCount)&&(identical(other.startTime, _this.startTime) || other.startTime == _this.startTime)&&(identical(other.endTime, _this.endTime) || other.endTime == _this.endTime)&&(identical(other.secondsRemaining, _this.secondsRemaining) || other.secondsRemaining == _this.secondsRemaining)&&(identical(other.isLive, _this.isLive) || other.isLive == _this.isLive)&&(identical(other.isBiddable, _this.isBiddable) || other.isBiddable == _this.isBiddable)&&(identical(other.hasEnded, _this.hasEnded) || other.hasEnded == _this.hasEnded)&&(identical(other.extensionCount, _this.extensionCount) || other.extensionCount == _this.extensionCount)&&(identical(other.maxExtensions, _this.maxExtensions) || other.maxExtensions == _this.maxExtensions)&&(identical(other.inspection, _this.inspection) || other.inspection == _this.inspection)&&(identical(other.appealWindow, _this.appealWindow) || other.appealWindow == _this.appealWindow)&&(identical(other.lease, _this.lease) || other.lease == _this.lease)&&(identical(other.winnerAlias, _this.winnerAlias) || other.winnerAlias == _this.winnerAlias)&&(identical(other.finalPrice, _this.finalPrice) || other.finalPrice == _this.finalPrice)&&(identical(other.requiresCommerceRegister, _this.requiresCommerceRegister) || other.requiresCommerceRegister == _this.requiresCommerceRegister)&&(identical(other.requiresNewspaperAnnouncement, _this.requiresNewspaperAnnouncement) || other.requiresNewspaperAnnouncement == _this.requiresNewspaperAnnouncement)&&(identical(other.conditionBook, _this.conditionBook) || other.conditionBook == _this.conditionBook)&&(identical(other.awardDocument, _this.awardDocument) || other.awardDocument == _this.awardDocument)&&(identical(other.participationReceipt, _this.participationReceipt) || other.participationReceipt == _this.participationReceipt)&&(identical(other.resultDocument, _this.resultDocument) || other.resultDocument == _this.resultDocument)&&(identical(other.session, _this.session) || other.session == _this.session)&&(identical(other.sector, _this.sector) || other.sector == _this.sector)&&(identical(other.minBid, _this.minBid) || other.minBid == _this.minBid)&&(identical(other.publicationPriority, _this.publicationPriority) || other.publicationPriority == _this.publicationPriority));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AuctionModel;
  return Object.hashAll([runtimeType,_this.id,_this.title,_this.description,_this.status,_this.auctionType,_this.assetClass,_this.condition,_this.unitCount,_this.conditionTerms,_this.awardTerms,const DeepCollectionEquality().hash(_this.specifications),_this.coverPhotoUrl,const DeepCollectionEquality().hash(_this.photos),_this.videoUrl,_this.category,_this.entity,_this.wilaya,_this.commune,_this.assetLocation,const DeepCollectionEquality().hash(_this.latitude),const DeepCollectionEquality().hash(_this.longitude),_this.mayorName,_this.openingPrice,_this.currentPrice,_this.depositAmount,const DeepCollectionEquality().hash(_this.depositPercent),_this.bookPrice,_this.hasBookAccess,_this.bidCount,_this.startTime,_this.endTime,_this.secondsRemaining,_this.isLive,_this.isBiddable,_this.hasEnded,_this.extensionCount,_this.maxExtensions,_this.inspection,_this.appealWindow,_this.lease,_this.winnerAlias,_this.finalPrice,_this.requiresCommerceRegister,_this.requiresNewspaperAnnouncement,_this.conditionBook,_this.awardDocument,_this.participationReceipt,_this.resultDocument,_this.session,_this.sector,_this.minBid,_this.publicationPriority]);
}

@override
String toString() {
  final _this = this as AuctionModel;
  return 'AuctionModel(id: ${_this.id}, title: ${_this.title}, description: ${_this.description}, status: ${_this.status}, auctionType: ${_this.auctionType}, assetClass: ${_this.assetClass}, condition: ${_this.condition}, unitCount: ${_this.unitCount}, conditionTerms: ${_this.conditionTerms}, awardTerms: ${_this.awardTerms}, specifications: ${_this.specifications}, coverPhotoUrl: ${_this.coverPhotoUrl}, photos: ${_this.photos}, videoUrl: ${_this.videoUrl}, category: ${_this.category}, entity: ${_this.entity}, wilaya: ${_this.wilaya}, commune: ${_this.commune}, assetLocation: ${_this.assetLocation}, latitude: ${_this.latitude}, longitude: ${_this.longitude}, mayorName: ${_this.mayorName}, openingPrice: ${_this.openingPrice}, currentPrice: ${_this.currentPrice}, depositAmount: ${_this.depositAmount}, depositPercent: ${_this.depositPercent}, bookPrice: ${_this.bookPrice}, hasBookAccess: ${_this.hasBookAccess}, bidCount: ${_this.bidCount}, startTime: ${_this.startTime}, endTime: ${_this.endTime}, secondsRemaining: ${_this.secondsRemaining}, isLive: ${_this.isLive}, isBiddable: ${_this.isBiddable}, hasEnded: ${_this.hasEnded}, extensionCount: ${_this.extensionCount}, maxExtensions: ${_this.maxExtensions}, inspection: ${_this.inspection}, appealWindow: ${_this.appealWindow}, lease: ${_this.lease}, winnerAlias: ${_this.winnerAlias}, finalPrice: ${_this.finalPrice}, requiresCommerceRegister: ${_this.requiresCommerceRegister}, requiresNewspaperAnnouncement: ${_this.requiresNewspaperAnnouncement}, conditionBook: ${_this.conditionBook}, awardDocument: ${_this.awardDocument}, participationReceipt: ${_this.participationReceipt}, resultDocument: ${_this.resultDocument}, session: ${_this.session}, sector: ${_this.sector}, minBid: ${_this.minBid}, publicationPriority: ${_this.publicationPriority})';
}


}

/// @nodoc
abstract mixin class $AuctionModelCopyWith<$Res>  {
  factory $AuctionModelCopyWith(AuctionModel value, $Res Function(AuctionModel) _then) = _$AuctionModelCopyWithImpl;
@useResult
$Res call({
 String id, String? title, String? description, String? status,@JsonKey(name: 'auction_type') String? auctionType,@JsonKey(name: 'asset_class') String? assetClass, String? condition,@JsonKey(name: 'unit_count') int? unitCount,@JsonKey(name: 'condition_terms') String? conditionTerms,@JsonKey(name: 'award_terms') String? awardTerms, List<AuctionSpecModel> specifications,@JsonKey(name: 'cover_photo_url') String? coverPhotoUrl, List<String> photos,@JsonKey(name: 'video_url') String? videoUrl, NamedRefModel? category, NamedRefModel? entity, WilayaRefModel? wilaya, NamedRefModel? commune,@JsonKey(name: 'asset_location') String? assetLocation, dynamic latitude, dynamic longitude,@JsonKey(name: 'mayor_name') String? mayorName,@JsonKey(name: 'opening_price') MoneyModel? openingPrice,@JsonKey(name: 'current_price') MoneyModel? currentPrice,@JsonKey(name: 'deposit_amount') MoneyModel? depositAmount,@JsonKey(name: 'deposit_percent') dynamic depositPercent,@JsonKey(name: 'book_price') MoneyModel? bookPrice,@JsonKey(name: 'has_book_access') bool hasBookAccess,@JsonKey(name: 'bid_count') int bidCount,@JsonKey(name: 'start_time') String? startTime,@JsonKey(name: 'end_time') String? endTime,@JsonKey(name: 'seconds_remaining') int secondsRemaining,@JsonKey(name: 'is_live') bool isLive,@JsonKey(name: 'is_biddable') bool isBiddable,@JsonKey(name: 'has_ended') bool hasEnded,@JsonKey(name: 'extension_count') int extensionCount,@JsonKey(name: 'max_extensions') int? maxExtensions, InspectionModel? inspection,@JsonKey(name: 'appeal_window') AppealWindowModel? appealWindow, LeaseModel? lease,@JsonKey(name: 'winner_alias') String? winnerAlias,@JsonKey(name: 'final_price') MoneyModel? finalPrice,@JsonKey(name: 'requires_commerce_register') bool requiresCommerceRegister,@JsonKey(name: 'requires_newspaper_announcement') bool requiresNewspaperAnnouncement,@JsonKey(name: 'condition_book') ConditionBookModel? conditionBook,@JsonKey(name: 'award_document') ConditionBookModel? awardDocument,@JsonKey(name: 'participation_receipt') ConditionBookModel? participationReceipt,@JsonKey(name: 'result_document') ConditionBookModel? resultDocument, AuctionSessionInfoModel? session, AuctionSectorModel? sector,@JsonKey(name: 'min_bid') MoneyModel? minBid,@JsonKey(name: 'publication_priority') String? publicationPriority
});


$NamedRefModelCopyWith<$Res>? get category;$NamedRefModelCopyWith<$Res>? get entity;$WilayaRefModelCopyWith<$Res>? get wilaya;$NamedRefModelCopyWith<$Res>? get commune;$MoneyModelCopyWith<$Res>? get openingPrice;$MoneyModelCopyWith<$Res>? get currentPrice;$MoneyModelCopyWith<$Res>? get depositAmount;$MoneyModelCopyWith<$Res>? get bookPrice;$InspectionModelCopyWith<$Res>? get inspection;$AppealWindowModelCopyWith<$Res>? get appealWindow;$LeaseModelCopyWith<$Res>? get lease;$MoneyModelCopyWith<$Res>? get finalPrice;$ConditionBookModelCopyWith<$Res>? get conditionBook;$ConditionBookModelCopyWith<$Res>? get awardDocument;$ConditionBookModelCopyWith<$Res>? get participationReceipt;$ConditionBookModelCopyWith<$Res>? get resultDocument;$AuctionSessionInfoModelCopyWith<$Res>? get session;$AuctionSectorModelCopyWith<$Res>? get sector;$MoneyModelCopyWith<$Res>? get minBid;

}
/// @nodoc
class _$AuctionModelCopyWithImpl<$Res>
    implements $AuctionModelCopyWith<$Res> {
  _$AuctionModelCopyWithImpl(this._self, this._then);

  final AuctionModel _self;
  final $Res Function(AuctionModel) _then;

/// Create a copy of AuctionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = freezed,Object? description = freezed,Object? status = freezed,Object? auctionType = freezed,Object? assetClass = freezed,Object? condition = freezed,Object? unitCount = freezed,Object? conditionTerms = freezed,Object? awardTerms = freezed,Object? specifications = null,Object? coverPhotoUrl = freezed,Object? photos = null,Object? videoUrl = freezed,Object? category = freezed,Object? entity = freezed,Object? wilaya = freezed,Object? commune = freezed,Object? assetLocation = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? mayorName = freezed,Object? openingPrice = freezed,Object? currentPrice = freezed,Object? depositAmount = freezed,Object? depositPercent = freezed,Object? bookPrice = freezed,Object? hasBookAccess = null,Object? bidCount = null,Object? startTime = freezed,Object? endTime = freezed,Object? secondsRemaining = null,Object? isLive = null,Object? isBiddable = null,Object? hasEnded = null,Object? extensionCount = null,Object? maxExtensions = freezed,Object? inspection = freezed,Object? appealWindow = freezed,Object? lease = freezed,Object? winnerAlias = freezed,Object? finalPrice = freezed,Object? requiresCommerceRegister = null,Object? requiresNewspaperAnnouncement = null,Object? conditionBook = freezed,Object? awardDocument = freezed,Object? participationReceipt = freezed,Object? resultDocument = freezed,Object? session = freezed,Object? sector = freezed,Object? minBid = freezed,Object? publicationPriority = freezed,}) {
  return _then(AuctionModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,auctionType: freezed == auctionType ? _self.auctionType : auctionType // ignore: cast_nullable_to_non_nullable
as String?,assetClass: freezed == assetClass ? _self.assetClass : assetClass // ignore: cast_nullable_to_non_nullable
as String?,condition: freezed == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as String?,unitCount: freezed == unitCount ? _self.unitCount : unitCount // ignore: cast_nullable_to_non_nullable
as int?,conditionTerms: freezed == conditionTerms ? _self.conditionTerms : conditionTerms // ignore: cast_nullable_to_non_nullable
as String?,awardTerms: freezed == awardTerms ? _self.awardTerms : awardTerms // ignore: cast_nullable_to_non_nullable
as String?,specifications: null == specifications ? _self.specifications : specifications // ignore: cast_nullable_to_non_nullable
as List<AuctionSpecModel>,coverPhotoUrl: freezed == coverPhotoUrl ? _self.coverPhotoUrl : coverPhotoUrl // ignore: cast_nullable_to_non_nullable
as String?,photos: null == photos ? _self.photos : photos // ignore: cast_nullable_to_non_nullable
as List<String>,videoUrl: freezed == videoUrl ? _self.videoUrl : videoUrl // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as NamedRefModel?,entity: freezed == entity ? _self.entity : entity // ignore: cast_nullable_to_non_nullable
as NamedRefModel?,wilaya: freezed == wilaya ? _self.wilaya : wilaya // ignore: cast_nullable_to_non_nullable
as WilayaRefModel?,commune: freezed == commune ? _self.commune : commune // ignore: cast_nullable_to_non_nullable
as NamedRefModel?,assetLocation: freezed == assetLocation ? _self.assetLocation : assetLocation // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as dynamic,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as dynamic,mayorName: freezed == mayorName ? _self.mayorName : mayorName // ignore: cast_nullable_to_non_nullable
as String?,openingPrice: freezed == openingPrice ? _self.openingPrice : openingPrice // ignore: cast_nullable_to_non_nullable
as MoneyModel?,currentPrice: freezed == currentPrice ? _self.currentPrice : currentPrice // ignore: cast_nullable_to_non_nullable
as MoneyModel?,depositAmount: freezed == depositAmount ? _self.depositAmount : depositAmount // ignore: cast_nullable_to_non_nullable
as MoneyModel?,depositPercent: freezed == depositPercent ? _self.depositPercent : depositPercent // ignore: cast_nullable_to_non_nullable
as dynamic,bookPrice: freezed == bookPrice ? _self.bookPrice : bookPrice // ignore: cast_nullable_to_non_nullable
as MoneyModel?,hasBookAccess: null == hasBookAccess ? _self.hasBookAccess : hasBookAccess // ignore: cast_nullable_to_non_nullable
as bool,bidCount: null == bidCount ? _self.bidCount : bidCount // ignore: cast_nullable_to_non_nullable
as int,startTime: freezed == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String?,endTime: freezed == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as String?,secondsRemaining: null == secondsRemaining ? _self.secondsRemaining : secondsRemaining // ignore: cast_nullable_to_non_nullable
as int,isLive: null == isLive ? _self.isLive : isLive // ignore: cast_nullable_to_non_nullable
as bool,isBiddable: null == isBiddable ? _self.isBiddable : isBiddable // ignore: cast_nullable_to_non_nullable
as bool,hasEnded: null == hasEnded ? _self.hasEnded : hasEnded // ignore: cast_nullable_to_non_nullable
as bool,extensionCount: null == extensionCount ? _self.extensionCount : extensionCount // ignore: cast_nullable_to_non_nullable
as int,maxExtensions: freezed == maxExtensions ? _self.maxExtensions : maxExtensions // ignore: cast_nullable_to_non_nullable
as int?,inspection: freezed == inspection ? _self.inspection : inspection // ignore: cast_nullable_to_non_nullable
as InspectionModel?,appealWindow: freezed == appealWindow ? _self.appealWindow : appealWindow // ignore: cast_nullable_to_non_nullable
as AppealWindowModel?,lease: freezed == lease ? _self.lease : lease // ignore: cast_nullable_to_non_nullable
as LeaseModel?,winnerAlias: freezed == winnerAlias ? _self.winnerAlias : winnerAlias // ignore: cast_nullable_to_non_nullable
as String?,finalPrice: freezed == finalPrice ? _self.finalPrice : finalPrice // ignore: cast_nullable_to_non_nullable
as MoneyModel?,requiresCommerceRegister: null == requiresCommerceRegister ? _self.requiresCommerceRegister : requiresCommerceRegister // ignore: cast_nullable_to_non_nullable
as bool,requiresNewspaperAnnouncement: null == requiresNewspaperAnnouncement ? _self.requiresNewspaperAnnouncement : requiresNewspaperAnnouncement // ignore: cast_nullable_to_non_nullable
as bool,conditionBook: freezed == conditionBook ? _self.conditionBook : conditionBook // ignore: cast_nullable_to_non_nullable
as ConditionBookModel?,awardDocument: freezed == awardDocument ? _self.awardDocument : awardDocument // ignore: cast_nullable_to_non_nullable
as ConditionBookModel?,participationReceipt: freezed == participationReceipt ? _self.participationReceipt : participationReceipt // ignore: cast_nullable_to_non_nullable
as ConditionBookModel?,resultDocument: freezed == resultDocument ? _self.resultDocument : resultDocument // ignore: cast_nullable_to_non_nullable
as ConditionBookModel?,session: freezed == session ? _self.session : session // ignore: cast_nullable_to_non_nullable
as AuctionSessionInfoModel?,sector: freezed == sector ? _self.sector : sector // ignore: cast_nullable_to_non_nullable
as AuctionSectorModel?,minBid: freezed == minBid ? _self.minBid : minBid // ignore: cast_nullable_to_non_nullable
as MoneyModel?,publicationPriority: freezed == publicationPriority ? _self.publicationPriority : publicationPriority // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of AuctionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NamedRefModelCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $NamedRefModelCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}/// Create a copy of AuctionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NamedRefModelCopyWith<$Res>? get entity {
    if (_self.entity == null) {
    return null;
  }

  return $NamedRefModelCopyWith<$Res>(_self.entity!, (value) {
    return _then(_self.copyWith(entity: value));
  });
}/// Create a copy of AuctionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WilayaRefModelCopyWith<$Res>? get wilaya {
    if (_self.wilaya == null) {
    return null;
  }

  return $WilayaRefModelCopyWith<$Res>(_self.wilaya!, (value) {
    return _then(_self.copyWith(wilaya: value));
  });
}/// Create a copy of AuctionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NamedRefModelCopyWith<$Res>? get commune {
    if (_self.commune == null) {
    return null;
  }

  return $NamedRefModelCopyWith<$Res>(_self.commune!, (value) {
    return _then(_self.copyWith(commune: value));
  });
}/// Create a copy of AuctionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyModelCopyWith<$Res>? get openingPrice {
    if (_self.openingPrice == null) {
    return null;
  }

  return $MoneyModelCopyWith<$Res>(_self.openingPrice!, (value) {
    return _then(_self.copyWith(openingPrice: value));
  });
}/// Create a copy of AuctionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyModelCopyWith<$Res>? get currentPrice {
    if (_self.currentPrice == null) {
    return null;
  }

  return $MoneyModelCopyWith<$Res>(_self.currentPrice!, (value) {
    return _then(_self.copyWith(currentPrice: value));
  });
}/// Create a copy of AuctionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyModelCopyWith<$Res>? get depositAmount {
    if (_self.depositAmount == null) {
    return null;
  }

  return $MoneyModelCopyWith<$Res>(_self.depositAmount!, (value) {
    return _then(_self.copyWith(depositAmount: value));
  });
}/// Create a copy of AuctionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyModelCopyWith<$Res>? get bookPrice {
    if (_self.bookPrice == null) {
    return null;
  }

  return $MoneyModelCopyWith<$Res>(_self.bookPrice!, (value) {
    return _then(_self.copyWith(bookPrice: value));
  });
}/// Create a copy of AuctionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InspectionModelCopyWith<$Res>? get inspection {
    if (_self.inspection == null) {
    return null;
  }

  return $InspectionModelCopyWith<$Res>(_self.inspection!, (value) {
    return _then(_self.copyWith(inspection: value));
  });
}/// Create a copy of AuctionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppealWindowModelCopyWith<$Res>? get appealWindow {
    if (_self.appealWindow == null) {
    return null;
  }

  return $AppealWindowModelCopyWith<$Res>(_self.appealWindow!, (value) {
    return _then(_self.copyWith(appealWindow: value));
  });
}/// Create a copy of AuctionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LeaseModelCopyWith<$Res>? get lease {
    if (_self.lease == null) {
    return null;
  }

  return $LeaseModelCopyWith<$Res>(_self.lease!, (value) {
    return _then(_self.copyWith(lease: value));
  });
}/// Create a copy of AuctionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyModelCopyWith<$Res>? get finalPrice {
    if (_self.finalPrice == null) {
    return null;
  }

  return $MoneyModelCopyWith<$Res>(_self.finalPrice!, (value) {
    return _then(_self.copyWith(finalPrice: value));
  });
}/// Create a copy of AuctionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ConditionBookModelCopyWith<$Res>? get conditionBook {
    if (_self.conditionBook == null) {
    return null;
  }

  return $ConditionBookModelCopyWith<$Res>(_self.conditionBook!, (value) {
    return _then(_self.copyWith(conditionBook: value));
  });
}/// Create a copy of AuctionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ConditionBookModelCopyWith<$Res>? get awardDocument {
    if (_self.awardDocument == null) {
    return null;
  }

  return $ConditionBookModelCopyWith<$Res>(_self.awardDocument!, (value) {
    return _then(_self.copyWith(awardDocument: value));
  });
}/// Create a copy of AuctionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ConditionBookModelCopyWith<$Res>? get participationReceipt {
    if (_self.participationReceipt == null) {
    return null;
  }

  return $ConditionBookModelCopyWith<$Res>(_self.participationReceipt!, (value) {
    return _then(_self.copyWith(participationReceipt: value));
  });
}/// Create a copy of AuctionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ConditionBookModelCopyWith<$Res>? get resultDocument {
    if (_self.resultDocument == null) {
    return null;
  }

  return $ConditionBookModelCopyWith<$Res>(_self.resultDocument!, (value) {
    return _then(_self.copyWith(resultDocument: value));
  });
}/// Create a copy of AuctionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuctionSessionInfoModelCopyWith<$Res>? get session {
    if (_self.session == null) {
    return null;
  }

  return $AuctionSessionInfoModelCopyWith<$Res>(_self.session!, (value) {
    return _then(_self.copyWith(session: value));
  });
}/// Create a copy of AuctionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuctionSectorModelCopyWith<$Res>? get sector {
    if (_self.sector == null) {
    return null;
  }

  return $AuctionSectorModelCopyWith<$Res>(_self.sector!, (value) {
    return _then(_self.copyWith(sector: value));
  });
}/// Create a copy of AuctionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyModelCopyWith<$Res>? get minBid {
    if (_self.minBid == null) {
    return null;
  }

  return $MoneyModelCopyWith<$Res>(_self.minBid!, (value) {
    return _then(_self.copyWith(minBid: value));
  });
}
}


/// Adds pattern-matching-related methods to [AuctionModel].
extension AuctionModelPatterns on AuctionModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuctionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuctionModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuctionModel value)  $default,){
final _that = this;
switch (_that) {
case _AuctionModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuctionModel value)?  $default,){
final _that = this;
switch (_that) {
case _AuctionModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String? title,  String? description,  String? status, @JsonKey(name: 'auction_type')  String? auctionType, @JsonKey(name: 'asset_class')  String? assetClass,  String? condition, @JsonKey(name: 'unit_count')  int? unitCount, @JsonKey(name: 'condition_terms')  String? conditionTerms, @JsonKey(name: 'award_terms')  String? awardTerms,  List<AuctionSpecModel> specifications, @JsonKey(name: 'cover_photo_url')  String? coverPhotoUrl,  List<String> photos, @JsonKey(name: 'video_url')  String? videoUrl,  NamedRefModel? category,  NamedRefModel? entity,  WilayaRefModel? wilaya,  NamedRefModel? commune, @JsonKey(name: 'asset_location')  String? assetLocation,  dynamic latitude,  dynamic longitude, @JsonKey(name: 'mayor_name')  String? mayorName, @JsonKey(name: 'opening_price')  MoneyModel? openingPrice, @JsonKey(name: 'current_price')  MoneyModel? currentPrice, @JsonKey(name: 'deposit_amount')  MoneyModel? depositAmount, @JsonKey(name: 'deposit_percent')  dynamic depositPercent, @JsonKey(name: 'book_price')  MoneyModel? bookPrice, @JsonKey(name: 'has_book_access')  bool hasBookAccess, @JsonKey(name: 'bid_count')  int bidCount, @JsonKey(name: 'start_time')  String? startTime, @JsonKey(name: 'end_time')  String? endTime, @JsonKey(name: 'seconds_remaining')  int secondsRemaining, @JsonKey(name: 'is_live')  bool isLive, @JsonKey(name: 'is_biddable')  bool isBiddable, @JsonKey(name: 'has_ended')  bool hasEnded, @JsonKey(name: 'extension_count')  int extensionCount, @JsonKey(name: 'max_extensions')  int? maxExtensions,  InspectionModel? inspection, @JsonKey(name: 'appeal_window')  AppealWindowModel? appealWindow,  LeaseModel? lease, @JsonKey(name: 'winner_alias')  String? winnerAlias, @JsonKey(name: 'final_price')  MoneyModel? finalPrice, @JsonKey(name: 'requires_commerce_register')  bool requiresCommerceRegister, @JsonKey(name: 'requires_newspaper_announcement')  bool requiresNewspaperAnnouncement, @JsonKey(name: 'condition_book')  ConditionBookModel? conditionBook, @JsonKey(name: 'award_document')  ConditionBookModel? awardDocument, @JsonKey(name: 'participation_receipt')  ConditionBookModel? participationReceipt, @JsonKey(name: 'result_document')  ConditionBookModel? resultDocument,  AuctionSessionInfoModel? session,  AuctionSectorModel? sector, @JsonKey(name: 'min_bid')  MoneyModel? minBid, @JsonKey(name: 'publication_priority')  String? publicationPriority)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuctionModel() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.status,_that.auctionType,_that.assetClass,_that.condition,_that.unitCount,_that.conditionTerms,_that.awardTerms,_that.specifications,_that.coverPhotoUrl,_that.photos,_that.videoUrl,_that.category,_that.entity,_that.wilaya,_that.commune,_that.assetLocation,_that.latitude,_that.longitude,_that.mayorName,_that.openingPrice,_that.currentPrice,_that.depositAmount,_that.depositPercent,_that.bookPrice,_that.hasBookAccess,_that.bidCount,_that.startTime,_that.endTime,_that.secondsRemaining,_that.isLive,_that.isBiddable,_that.hasEnded,_that.extensionCount,_that.maxExtensions,_that.inspection,_that.appealWindow,_that.lease,_that.winnerAlias,_that.finalPrice,_that.requiresCommerceRegister,_that.requiresNewspaperAnnouncement,_that.conditionBook,_that.awardDocument,_that.participationReceipt,_that.resultDocument,_that.session,_that.sector,_that.minBid,_that.publicationPriority);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String? title,  String? description,  String? status, @JsonKey(name: 'auction_type')  String? auctionType, @JsonKey(name: 'asset_class')  String? assetClass,  String? condition, @JsonKey(name: 'unit_count')  int? unitCount, @JsonKey(name: 'condition_terms')  String? conditionTerms, @JsonKey(name: 'award_terms')  String? awardTerms,  List<AuctionSpecModel> specifications, @JsonKey(name: 'cover_photo_url')  String? coverPhotoUrl,  List<String> photos, @JsonKey(name: 'video_url')  String? videoUrl,  NamedRefModel? category,  NamedRefModel? entity,  WilayaRefModel? wilaya,  NamedRefModel? commune, @JsonKey(name: 'asset_location')  String? assetLocation,  dynamic latitude,  dynamic longitude, @JsonKey(name: 'mayor_name')  String? mayorName, @JsonKey(name: 'opening_price')  MoneyModel? openingPrice, @JsonKey(name: 'current_price')  MoneyModel? currentPrice, @JsonKey(name: 'deposit_amount')  MoneyModel? depositAmount, @JsonKey(name: 'deposit_percent')  dynamic depositPercent, @JsonKey(name: 'book_price')  MoneyModel? bookPrice, @JsonKey(name: 'has_book_access')  bool hasBookAccess, @JsonKey(name: 'bid_count')  int bidCount, @JsonKey(name: 'start_time')  String? startTime, @JsonKey(name: 'end_time')  String? endTime, @JsonKey(name: 'seconds_remaining')  int secondsRemaining, @JsonKey(name: 'is_live')  bool isLive, @JsonKey(name: 'is_biddable')  bool isBiddable, @JsonKey(name: 'has_ended')  bool hasEnded, @JsonKey(name: 'extension_count')  int extensionCount, @JsonKey(name: 'max_extensions')  int? maxExtensions,  InspectionModel? inspection, @JsonKey(name: 'appeal_window')  AppealWindowModel? appealWindow,  LeaseModel? lease, @JsonKey(name: 'winner_alias')  String? winnerAlias, @JsonKey(name: 'final_price')  MoneyModel? finalPrice, @JsonKey(name: 'requires_commerce_register')  bool requiresCommerceRegister, @JsonKey(name: 'requires_newspaper_announcement')  bool requiresNewspaperAnnouncement, @JsonKey(name: 'condition_book')  ConditionBookModel? conditionBook, @JsonKey(name: 'award_document')  ConditionBookModel? awardDocument, @JsonKey(name: 'participation_receipt')  ConditionBookModel? participationReceipt, @JsonKey(name: 'result_document')  ConditionBookModel? resultDocument,  AuctionSessionInfoModel? session,  AuctionSectorModel? sector, @JsonKey(name: 'min_bid')  MoneyModel? minBid, @JsonKey(name: 'publication_priority')  String? publicationPriority)  $default,) {final _that = this;
switch (_that) {
case _AuctionModel():
return $default(_that.id,_that.title,_that.description,_that.status,_that.auctionType,_that.assetClass,_that.condition,_that.unitCount,_that.conditionTerms,_that.awardTerms,_that.specifications,_that.coverPhotoUrl,_that.photos,_that.videoUrl,_that.category,_that.entity,_that.wilaya,_that.commune,_that.assetLocation,_that.latitude,_that.longitude,_that.mayorName,_that.openingPrice,_that.currentPrice,_that.depositAmount,_that.depositPercent,_that.bookPrice,_that.hasBookAccess,_that.bidCount,_that.startTime,_that.endTime,_that.secondsRemaining,_that.isLive,_that.isBiddable,_that.hasEnded,_that.extensionCount,_that.maxExtensions,_that.inspection,_that.appealWindow,_that.lease,_that.winnerAlias,_that.finalPrice,_that.requiresCommerceRegister,_that.requiresNewspaperAnnouncement,_that.conditionBook,_that.awardDocument,_that.participationReceipt,_that.resultDocument,_that.session,_that.sector,_that.minBid,_that.publicationPriority);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String? title,  String? description,  String? status, @JsonKey(name: 'auction_type')  String? auctionType, @JsonKey(name: 'asset_class')  String? assetClass,  String? condition, @JsonKey(name: 'unit_count')  int? unitCount, @JsonKey(name: 'condition_terms')  String? conditionTerms, @JsonKey(name: 'award_terms')  String? awardTerms,  List<AuctionSpecModel> specifications, @JsonKey(name: 'cover_photo_url')  String? coverPhotoUrl,  List<String> photos, @JsonKey(name: 'video_url')  String? videoUrl,  NamedRefModel? category,  NamedRefModel? entity,  WilayaRefModel? wilaya,  NamedRefModel? commune, @JsonKey(name: 'asset_location')  String? assetLocation,  dynamic latitude,  dynamic longitude, @JsonKey(name: 'mayor_name')  String? mayorName, @JsonKey(name: 'opening_price')  MoneyModel? openingPrice, @JsonKey(name: 'current_price')  MoneyModel? currentPrice, @JsonKey(name: 'deposit_amount')  MoneyModel? depositAmount, @JsonKey(name: 'deposit_percent')  dynamic depositPercent, @JsonKey(name: 'book_price')  MoneyModel? bookPrice, @JsonKey(name: 'has_book_access')  bool hasBookAccess, @JsonKey(name: 'bid_count')  int bidCount, @JsonKey(name: 'start_time')  String? startTime, @JsonKey(name: 'end_time')  String? endTime, @JsonKey(name: 'seconds_remaining')  int secondsRemaining, @JsonKey(name: 'is_live')  bool isLive, @JsonKey(name: 'is_biddable')  bool isBiddable, @JsonKey(name: 'has_ended')  bool hasEnded, @JsonKey(name: 'extension_count')  int extensionCount, @JsonKey(name: 'max_extensions')  int? maxExtensions,  InspectionModel? inspection, @JsonKey(name: 'appeal_window')  AppealWindowModel? appealWindow,  LeaseModel? lease, @JsonKey(name: 'winner_alias')  String? winnerAlias, @JsonKey(name: 'final_price')  MoneyModel? finalPrice, @JsonKey(name: 'requires_commerce_register')  bool requiresCommerceRegister, @JsonKey(name: 'requires_newspaper_announcement')  bool requiresNewspaperAnnouncement, @JsonKey(name: 'condition_book')  ConditionBookModel? conditionBook, @JsonKey(name: 'award_document')  ConditionBookModel? awardDocument, @JsonKey(name: 'participation_receipt')  ConditionBookModel? participationReceipt, @JsonKey(name: 'result_document')  ConditionBookModel? resultDocument,  AuctionSessionInfoModel? session,  AuctionSectorModel? sector, @JsonKey(name: 'min_bid')  MoneyModel? minBid, @JsonKey(name: 'publication_priority')  String? publicationPriority)?  $default,) {final _that = this;
switch (_that) {
case _AuctionModel() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.status,_that.auctionType,_that.assetClass,_that.condition,_that.unitCount,_that.conditionTerms,_that.awardTerms,_that.specifications,_that.coverPhotoUrl,_that.photos,_that.videoUrl,_that.category,_that.entity,_that.wilaya,_that.commune,_that.assetLocation,_that.latitude,_that.longitude,_that.mayorName,_that.openingPrice,_that.currentPrice,_that.depositAmount,_that.depositPercent,_that.bookPrice,_that.hasBookAccess,_that.bidCount,_that.startTime,_that.endTime,_that.secondsRemaining,_that.isLive,_that.isBiddable,_that.hasEnded,_that.extensionCount,_that.maxExtensions,_that.inspection,_that.appealWindow,_that.lease,_that.winnerAlias,_that.finalPrice,_that.requiresCommerceRegister,_that.requiresNewspaperAnnouncement,_that.conditionBook,_that.awardDocument,_that.participationReceipt,_that.resultDocument,_that.session,_that.sector,_that.minBid,_that.publicationPriority);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AuctionModel extends AuctionModel {
  const _AuctionModel({required this.id, this.title, this.description, this.status, @JsonKey(name: 'auction_type') this.auctionType, @JsonKey(name: 'asset_class') this.assetClass, this.condition, @JsonKey(name: 'unit_count') this.unitCount, @JsonKey(name: 'condition_terms') this.conditionTerms, @JsonKey(name: 'award_terms') this.awardTerms,  List<AuctionSpecModel> specifications = const <AuctionSpecModel>[], @JsonKey(name: 'cover_photo_url') this.coverPhotoUrl,  List<String> photos = const <String>[], @JsonKey(name: 'video_url') this.videoUrl, this.category, this.entity, this.wilaya, this.commune, @JsonKey(name: 'asset_location') this.assetLocation, this.latitude, this.longitude, @JsonKey(name: 'mayor_name') this.mayorName, @JsonKey(name: 'opening_price') this.openingPrice, @JsonKey(name: 'current_price') this.currentPrice, @JsonKey(name: 'deposit_amount') this.depositAmount, @JsonKey(name: 'deposit_percent') this.depositPercent, @JsonKey(name: 'book_price') this.bookPrice, @JsonKey(name: 'has_book_access') this.hasBookAccess = false, @JsonKey(name: 'bid_count') this.bidCount = 0, @JsonKey(name: 'start_time') this.startTime, @JsonKey(name: 'end_time') this.endTime, @JsonKey(name: 'seconds_remaining') this.secondsRemaining = 0, @JsonKey(name: 'is_live') this.isLive = false, @JsonKey(name: 'is_biddable') this.isBiddable = false, @JsonKey(name: 'has_ended') this.hasEnded = false, @JsonKey(name: 'extension_count') this.extensionCount = 0, @JsonKey(name: 'max_extensions') this.maxExtensions, this.inspection, @JsonKey(name: 'appeal_window') this.appealWindow, this.lease, @JsonKey(name: 'winner_alias') this.winnerAlias, @JsonKey(name: 'final_price') this.finalPrice, @JsonKey(name: 'requires_commerce_register') this.requiresCommerceRegister = false, @JsonKey(name: 'requires_newspaper_announcement') this.requiresNewspaperAnnouncement = false, @JsonKey(name: 'condition_book') this.conditionBook, @JsonKey(name: 'award_document') this.awardDocument, @JsonKey(name: 'participation_receipt') this.participationReceipt, @JsonKey(name: 'result_document') this.resultDocument, this.session, this.sector, @JsonKey(name: 'min_bid') this.minBid, @JsonKey(name: 'publication_priority') this.publicationPriority}): _specifications = specifications,_photos = photos,super._();
  factory _AuctionModel.fromJson(Map<String, dynamic> json) => _$AuctionModelFromJson(json);

@override final  String id;
@override final  String? title;
@override final  String? description;
@override final  String? status;
@override@JsonKey(name: 'auction_type') final  String? auctionType;
@override@JsonKey(name: 'asset_class') final  String? assetClass;
@override final  String? condition;
@override@JsonKey(name: 'unit_count') final  int? unitCount;
@override@JsonKey(name: 'condition_terms') final  String? conditionTerms;
@override@JsonKey(name: 'award_terms') final  String? awardTerms;
 final  List<AuctionSpecModel> _specifications;
@override@JsonKey() List<AuctionSpecModel> get specifications {
  if (_specifications is EqualUnmodifiableListView) return _specifications;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_specifications);
}

@override@JsonKey(name: 'cover_photo_url') final  String? coverPhotoUrl;
 final  List<String> _photos;
@override@JsonKey() List<String> get photos {
  if (_photos is EqualUnmodifiableListView) return _photos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_photos);
}

@override@JsonKey(name: 'video_url') final  String? videoUrl;
@override final  NamedRefModel? category;
@override final  NamedRefModel? entity;
@override final  WilayaRefModel? wilaya;
@override final  NamedRefModel? commune;
@override@JsonKey(name: 'asset_location') final  String? assetLocation;
@override final  dynamic latitude;
@override final  dynamic longitude;
@override@JsonKey(name: 'mayor_name') final  String? mayorName;
@override@JsonKey(name: 'opening_price') final  MoneyModel? openingPrice;
@override@JsonKey(name: 'current_price') final  MoneyModel? currentPrice;
@override@JsonKey(name: 'deposit_amount') final  MoneyModel? depositAmount;
@override@JsonKey(name: 'deposit_percent') final  dynamic depositPercent;
@override@JsonKey(name: 'book_price') final  MoneyModel? bookPrice;
@override@JsonKey(name: 'has_book_access') final  bool hasBookAccess;
@override@JsonKey(name: 'bid_count') final  int bidCount;
@override@JsonKey(name: 'start_time') final  String? startTime;
@override@JsonKey(name: 'end_time') final  String? endTime;
@override@JsonKey(name: 'seconds_remaining') final  int secondsRemaining;
@override@JsonKey(name: 'is_live') final  bool isLive;
@override@JsonKey(name: 'is_biddable') final  bool isBiddable;
@override@JsonKey(name: 'has_ended') final  bool hasEnded;
@override@JsonKey(name: 'extension_count') final  int extensionCount;
@override@JsonKey(name: 'max_extensions') final  int? maxExtensions;
@override final  InspectionModel? inspection;
@override@JsonKey(name: 'appeal_window') final  AppealWindowModel? appealWindow;
@override final  LeaseModel? lease;
@override@JsonKey(name: 'winner_alias') final  String? winnerAlias;
@override@JsonKey(name: 'final_price') final  MoneyModel? finalPrice;
@override@JsonKey(name: 'requires_commerce_register') final  bool requiresCommerceRegister;
@override@JsonKey(name: 'requires_newspaper_announcement') final  bool requiresNewspaperAnnouncement;
@override@JsonKey(name: 'condition_book') final  ConditionBookModel? conditionBook;
@override@JsonKey(name: 'award_document') final  ConditionBookModel? awardDocument;
@override@JsonKey(name: 'participation_receipt') final  ConditionBookModel? participationReceipt;
@override@JsonKey(name: 'result_document') final  ConditionBookModel? resultDocument;
@override final  AuctionSessionInfoModel? session;
@override final  AuctionSectorModel? sector;
@override@JsonKey(name: 'min_bid') final  MoneyModel? minBid;
@override@JsonKey(name: 'publication_priority') final  String? publicationPriority;

/// Create a copy of AuctionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuctionModelCopyWith<_AuctionModel> get copyWith => __$AuctionModelCopyWithImpl<_AuctionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuctionModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuctionModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.status, status) || other.status == status)&&(identical(other.auctionType, auctionType) || other.auctionType == auctionType)&&(identical(other.assetClass, assetClass) || other.assetClass == assetClass)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.unitCount, unitCount) || other.unitCount == unitCount)&&(identical(other.conditionTerms, conditionTerms) || other.conditionTerms == conditionTerms)&&(identical(other.awardTerms, awardTerms) || other.awardTerms == awardTerms)&&const DeepCollectionEquality().equals(other.specifications, _specifications)&&(identical(other.coverPhotoUrl, coverPhotoUrl) || other.coverPhotoUrl == coverPhotoUrl)&&const DeepCollectionEquality().equals(other.photos, _photos)&&(identical(other.videoUrl, videoUrl) || other.videoUrl == videoUrl)&&(identical(other.category, category) || other.category == category)&&(identical(other.entity, entity) || other.entity == entity)&&(identical(other.wilaya, wilaya) || other.wilaya == wilaya)&&(identical(other.commune, commune) || other.commune == commune)&&(identical(other.assetLocation, assetLocation) || other.assetLocation == assetLocation)&&const DeepCollectionEquality().equals(other.latitude, latitude)&&const DeepCollectionEquality().equals(other.longitude, longitude)&&(identical(other.mayorName, mayorName) || other.mayorName == mayorName)&&(identical(other.openingPrice, openingPrice) || other.openingPrice == openingPrice)&&(identical(other.currentPrice, currentPrice) || other.currentPrice == currentPrice)&&(identical(other.depositAmount, depositAmount) || other.depositAmount == depositAmount)&&const DeepCollectionEquality().equals(other.depositPercent, depositPercent)&&(identical(other.bookPrice, bookPrice) || other.bookPrice == bookPrice)&&(identical(other.hasBookAccess, hasBookAccess) || other.hasBookAccess == hasBookAccess)&&(identical(other.bidCount, bidCount) || other.bidCount == bidCount)&&(identical(other.startTime, startTime) || other.startTime == startTime)&&(identical(other.endTime, endTime) || other.endTime == endTime)&&(identical(other.secondsRemaining, secondsRemaining) || other.secondsRemaining == secondsRemaining)&&(identical(other.isLive, isLive) || other.isLive == isLive)&&(identical(other.isBiddable, isBiddable) || other.isBiddable == isBiddable)&&(identical(other.hasEnded, hasEnded) || other.hasEnded == hasEnded)&&(identical(other.extensionCount, extensionCount) || other.extensionCount == extensionCount)&&(identical(other.maxExtensions, maxExtensions) || other.maxExtensions == maxExtensions)&&(identical(other.inspection, inspection) || other.inspection == inspection)&&(identical(other.appealWindow, appealWindow) || other.appealWindow == appealWindow)&&(identical(other.lease, lease) || other.lease == lease)&&(identical(other.winnerAlias, winnerAlias) || other.winnerAlias == winnerAlias)&&(identical(other.finalPrice, finalPrice) || other.finalPrice == finalPrice)&&(identical(other.requiresCommerceRegister, requiresCommerceRegister) || other.requiresCommerceRegister == requiresCommerceRegister)&&(identical(other.requiresNewspaperAnnouncement, requiresNewspaperAnnouncement) || other.requiresNewspaperAnnouncement == requiresNewspaperAnnouncement)&&(identical(other.conditionBook, conditionBook) || other.conditionBook == conditionBook)&&(identical(other.awardDocument, awardDocument) || other.awardDocument == awardDocument)&&(identical(other.participationReceipt, participationReceipt) || other.participationReceipt == participationReceipt)&&(identical(other.resultDocument, resultDocument) || other.resultDocument == resultDocument)&&(identical(other.session, session) || other.session == session)&&(identical(other.sector, sector) || other.sector == sector)&&(identical(other.minBid, minBid) || other.minBid == minBid)&&(identical(other.publicationPriority, publicationPriority) || other.publicationPriority == publicationPriority));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hashAll([runtimeType,id,title,description,status,auctionType,assetClass,condition,unitCount,conditionTerms,awardTerms,const DeepCollectionEquality().hash(_specifications),coverPhotoUrl,const DeepCollectionEquality().hash(_photos),videoUrl,category,entity,wilaya,commune,assetLocation,const DeepCollectionEquality().hash(latitude),const DeepCollectionEquality().hash(longitude),mayorName,openingPrice,currentPrice,depositAmount,const DeepCollectionEquality().hash(depositPercent),bookPrice,hasBookAccess,bidCount,startTime,endTime,secondsRemaining,isLive,isBiddable,hasEnded,extensionCount,maxExtensions,inspection,appealWindow,lease,winnerAlias,finalPrice,requiresCommerceRegister,requiresNewspaperAnnouncement,conditionBook,awardDocument,participationReceipt,resultDocument,session,sector,minBid,publicationPriority]);
}

@override
String toString() {
    return 'AuctionModel(id: $id, title: $title, description: $description, status: $status, auctionType: $auctionType, assetClass: $assetClass, condition: $condition, unitCount: $unitCount, conditionTerms: $conditionTerms, awardTerms: $awardTerms, specifications: $specifications, coverPhotoUrl: $coverPhotoUrl, photos: $photos, videoUrl: $videoUrl, category: $category, entity: $entity, wilaya: $wilaya, commune: $commune, assetLocation: $assetLocation, latitude: $latitude, longitude: $longitude, mayorName: $mayorName, openingPrice: $openingPrice, currentPrice: $currentPrice, depositAmount: $depositAmount, depositPercent: $depositPercent, bookPrice: $bookPrice, hasBookAccess: $hasBookAccess, bidCount: $bidCount, startTime: $startTime, endTime: $endTime, secondsRemaining: $secondsRemaining, isLive: $isLive, isBiddable: $isBiddable, hasEnded: $hasEnded, extensionCount: $extensionCount, maxExtensions: $maxExtensions, inspection: $inspection, appealWindow: $appealWindow, lease: $lease, winnerAlias: $winnerAlias, finalPrice: $finalPrice, requiresCommerceRegister: $requiresCommerceRegister, requiresNewspaperAnnouncement: $requiresNewspaperAnnouncement, conditionBook: $conditionBook, awardDocument: $awardDocument, participationReceipt: $participationReceipt, resultDocument: $resultDocument, session: $session, sector: $sector, minBid: $minBid, publicationPriority: $publicationPriority)';
}


}

/// @nodoc
abstract mixin class _$AuctionModelCopyWith<$Res> implements $AuctionModelCopyWith<$Res> {
  factory _$AuctionModelCopyWith(_AuctionModel value, $Res Function(_AuctionModel) _then) = __$AuctionModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String? title, String? description, String? status,@JsonKey(name: 'auction_type') String? auctionType,@JsonKey(name: 'asset_class') String? assetClass, String? condition,@JsonKey(name: 'unit_count') int? unitCount,@JsonKey(name: 'condition_terms') String? conditionTerms,@JsonKey(name: 'award_terms') String? awardTerms, List<AuctionSpecModel> specifications,@JsonKey(name: 'cover_photo_url') String? coverPhotoUrl, List<String> photos,@JsonKey(name: 'video_url') String? videoUrl, NamedRefModel? category, NamedRefModel? entity, WilayaRefModel? wilaya, NamedRefModel? commune,@JsonKey(name: 'asset_location') String? assetLocation, dynamic latitude, dynamic longitude,@JsonKey(name: 'mayor_name') String? mayorName,@JsonKey(name: 'opening_price') MoneyModel? openingPrice,@JsonKey(name: 'current_price') MoneyModel? currentPrice,@JsonKey(name: 'deposit_amount') MoneyModel? depositAmount,@JsonKey(name: 'deposit_percent') dynamic depositPercent,@JsonKey(name: 'book_price') MoneyModel? bookPrice,@JsonKey(name: 'has_book_access') bool hasBookAccess,@JsonKey(name: 'bid_count') int bidCount,@JsonKey(name: 'start_time') String? startTime,@JsonKey(name: 'end_time') String? endTime,@JsonKey(name: 'seconds_remaining') int secondsRemaining,@JsonKey(name: 'is_live') bool isLive,@JsonKey(name: 'is_biddable') bool isBiddable,@JsonKey(name: 'has_ended') bool hasEnded,@JsonKey(name: 'extension_count') int extensionCount,@JsonKey(name: 'max_extensions') int? maxExtensions, InspectionModel? inspection,@JsonKey(name: 'appeal_window') AppealWindowModel? appealWindow, LeaseModel? lease,@JsonKey(name: 'winner_alias') String? winnerAlias,@JsonKey(name: 'final_price') MoneyModel? finalPrice,@JsonKey(name: 'requires_commerce_register') bool requiresCommerceRegister,@JsonKey(name: 'requires_newspaper_announcement') bool requiresNewspaperAnnouncement,@JsonKey(name: 'condition_book') ConditionBookModel? conditionBook,@JsonKey(name: 'award_document') ConditionBookModel? awardDocument,@JsonKey(name: 'participation_receipt') ConditionBookModel? participationReceipt,@JsonKey(name: 'result_document') ConditionBookModel? resultDocument, AuctionSessionInfoModel? session, AuctionSectorModel? sector,@JsonKey(name: 'min_bid') MoneyModel? minBid,@JsonKey(name: 'publication_priority') String? publicationPriority
});


@override $NamedRefModelCopyWith<$Res>? get category;@override $NamedRefModelCopyWith<$Res>? get entity;@override $WilayaRefModelCopyWith<$Res>? get wilaya;@override $NamedRefModelCopyWith<$Res>? get commune;@override $MoneyModelCopyWith<$Res>? get openingPrice;@override $MoneyModelCopyWith<$Res>? get currentPrice;@override $MoneyModelCopyWith<$Res>? get depositAmount;@override $MoneyModelCopyWith<$Res>? get bookPrice;@override $InspectionModelCopyWith<$Res>? get inspection;@override $AppealWindowModelCopyWith<$Res>? get appealWindow;@override $LeaseModelCopyWith<$Res>? get lease;@override $MoneyModelCopyWith<$Res>? get finalPrice;@override $ConditionBookModelCopyWith<$Res>? get conditionBook;@override $ConditionBookModelCopyWith<$Res>? get awardDocument;@override $ConditionBookModelCopyWith<$Res>? get participationReceipt;@override $ConditionBookModelCopyWith<$Res>? get resultDocument;@override $AuctionSessionInfoModelCopyWith<$Res>? get session;@override $AuctionSectorModelCopyWith<$Res>? get sector;@override $MoneyModelCopyWith<$Res>? get minBid;

}
/// @nodoc
class __$AuctionModelCopyWithImpl<$Res>
    implements _$AuctionModelCopyWith<$Res> {
  __$AuctionModelCopyWithImpl(this._self, this._then);

  final _AuctionModel _self;
  final $Res Function(_AuctionModel) _then;

/// Create a copy of AuctionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = freezed,Object? description = freezed,Object? status = freezed,Object? auctionType = freezed,Object? assetClass = freezed,Object? condition = freezed,Object? unitCount = freezed,Object? conditionTerms = freezed,Object? awardTerms = freezed,Object? specifications = null,Object? coverPhotoUrl = freezed,Object? photos = null,Object? videoUrl = freezed,Object? category = freezed,Object? entity = freezed,Object? wilaya = freezed,Object? commune = freezed,Object? assetLocation = freezed,Object? latitude = freezed,Object? longitude = freezed,Object? mayorName = freezed,Object? openingPrice = freezed,Object? currentPrice = freezed,Object? depositAmount = freezed,Object? depositPercent = freezed,Object? bookPrice = freezed,Object? hasBookAccess = null,Object? bidCount = null,Object? startTime = freezed,Object? endTime = freezed,Object? secondsRemaining = null,Object? isLive = null,Object? isBiddable = null,Object? hasEnded = null,Object? extensionCount = null,Object? maxExtensions = freezed,Object? inspection = freezed,Object? appealWindow = freezed,Object? lease = freezed,Object? winnerAlias = freezed,Object? finalPrice = freezed,Object? requiresCommerceRegister = null,Object? requiresNewspaperAnnouncement = null,Object? conditionBook = freezed,Object? awardDocument = freezed,Object? participationReceipt = freezed,Object? resultDocument = freezed,Object? session = freezed,Object? sector = freezed,Object? minBid = freezed,Object? publicationPriority = freezed,}) {
  return _then(_AuctionModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,auctionType: freezed == auctionType ? _self.auctionType : auctionType // ignore: cast_nullable_to_non_nullable
as String?,assetClass: freezed == assetClass ? _self.assetClass : assetClass // ignore: cast_nullable_to_non_nullable
as String?,condition: freezed == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as String?,unitCount: freezed == unitCount ? _self.unitCount : unitCount // ignore: cast_nullable_to_non_nullable
as int?,conditionTerms: freezed == conditionTerms ? _self.conditionTerms : conditionTerms // ignore: cast_nullable_to_non_nullable
as String?,awardTerms: freezed == awardTerms ? _self.awardTerms : awardTerms // ignore: cast_nullable_to_non_nullable
as String?,specifications: null == specifications ? _self._specifications : specifications // ignore: cast_nullable_to_non_nullable
as List<AuctionSpecModel>,coverPhotoUrl: freezed == coverPhotoUrl ? _self.coverPhotoUrl : coverPhotoUrl // ignore: cast_nullable_to_non_nullable
as String?,photos: null == photos ? _self._photos : photos // ignore: cast_nullable_to_non_nullable
as List<String>,videoUrl: freezed == videoUrl ? _self.videoUrl : videoUrl // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as NamedRefModel?,entity: freezed == entity ? _self.entity : entity // ignore: cast_nullable_to_non_nullable
as NamedRefModel?,wilaya: freezed == wilaya ? _self.wilaya : wilaya // ignore: cast_nullable_to_non_nullable
as WilayaRefModel?,commune: freezed == commune ? _self.commune : commune // ignore: cast_nullable_to_non_nullable
as NamedRefModel?,assetLocation: freezed == assetLocation ? _self.assetLocation : assetLocation // ignore: cast_nullable_to_non_nullable
as String?,latitude: freezed == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as dynamic,longitude: freezed == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as dynamic,mayorName: freezed == mayorName ? _self.mayorName : mayorName // ignore: cast_nullable_to_non_nullable
as String?,openingPrice: freezed == openingPrice ? _self.openingPrice : openingPrice // ignore: cast_nullable_to_non_nullable
as MoneyModel?,currentPrice: freezed == currentPrice ? _self.currentPrice : currentPrice // ignore: cast_nullable_to_non_nullable
as MoneyModel?,depositAmount: freezed == depositAmount ? _self.depositAmount : depositAmount // ignore: cast_nullable_to_non_nullable
as MoneyModel?,depositPercent: freezed == depositPercent ? _self.depositPercent : depositPercent // ignore: cast_nullable_to_non_nullable
as dynamic,bookPrice: freezed == bookPrice ? _self.bookPrice : bookPrice // ignore: cast_nullable_to_non_nullable
as MoneyModel?,hasBookAccess: null == hasBookAccess ? _self.hasBookAccess : hasBookAccess // ignore: cast_nullable_to_non_nullable
as bool,bidCount: null == bidCount ? _self.bidCount : bidCount // ignore: cast_nullable_to_non_nullable
as int,startTime: freezed == startTime ? _self.startTime : startTime // ignore: cast_nullable_to_non_nullable
as String?,endTime: freezed == endTime ? _self.endTime : endTime // ignore: cast_nullable_to_non_nullable
as String?,secondsRemaining: null == secondsRemaining ? _self.secondsRemaining : secondsRemaining // ignore: cast_nullable_to_non_nullable
as int,isLive: null == isLive ? _self.isLive : isLive // ignore: cast_nullable_to_non_nullable
as bool,isBiddable: null == isBiddable ? _self.isBiddable : isBiddable // ignore: cast_nullable_to_non_nullable
as bool,hasEnded: null == hasEnded ? _self.hasEnded : hasEnded // ignore: cast_nullable_to_non_nullable
as bool,extensionCount: null == extensionCount ? _self.extensionCount : extensionCount // ignore: cast_nullable_to_non_nullable
as int,maxExtensions: freezed == maxExtensions ? _self.maxExtensions : maxExtensions // ignore: cast_nullable_to_non_nullable
as int?,inspection: freezed == inspection ? _self.inspection : inspection // ignore: cast_nullable_to_non_nullable
as InspectionModel?,appealWindow: freezed == appealWindow ? _self.appealWindow : appealWindow // ignore: cast_nullable_to_non_nullable
as AppealWindowModel?,lease: freezed == lease ? _self.lease : lease // ignore: cast_nullable_to_non_nullable
as LeaseModel?,winnerAlias: freezed == winnerAlias ? _self.winnerAlias : winnerAlias // ignore: cast_nullable_to_non_nullable
as String?,finalPrice: freezed == finalPrice ? _self.finalPrice : finalPrice // ignore: cast_nullable_to_non_nullable
as MoneyModel?,requiresCommerceRegister: null == requiresCommerceRegister ? _self.requiresCommerceRegister : requiresCommerceRegister // ignore: cast_nullable_to_non_nullable
as bool,requiresNewspaperAnnouncement: null == requiresNewspaperAnnouncement ? _self.requiresNewspaperAnnouncement : requiresNewspaperAnnouncement // ignore: cast_nullable_to_non_nullable
as bool,conditionBook: freezed == conditionBook ? _self.conditionBook : conditionBook // ignore: cast_nullable_to_non_nullable
as ConditionBookModel?,awardDocument: freezed == awardDocument ? _self.awardDocument : awardDocument // ignore: cast_nullable_to_non_nullable
as ConditionBookModel?,participationReceipt: freezed == participationReceipt ? _self.participationReceipt : participationReceipt // ignore: cast_nullable_to_non_nullable
as ConditionBookModel?,resultDocument: freezed == resultDocument ? _self.resultDocument : resultDocument // ignore: cast_nullable_to_non_nullable
as ConditionBookModel?,session: freezed == session ? _self.session : session // ignore: cast_nullable_to_non_nullable
as AuctionSessionInfoModel?,sector: freezed == sector ? _self.sector : sector // ignore: cast_nullable_to_non_nullable
as AuctionSectorModel?,minBid: freezed == minBid ? _self.minBid : minBid // ignore: cast_nullable_to_non_nullable
as MoneyModel?,publicationPriority: freezed == publicationPriority ? _self.publicationPriority : publicationPriority // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of AuctionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NamedRefModelCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $NamedRefModelCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}/// Create a copy of AuctionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NamedRefModelCopyWith<$Res>? get entity {
    if (_self.entity == null) {
    return null;
  }

  return $NamedRefModelCopyWith<$Res>(_self.entity!, (value) {
    return _then(_self.copyWith(entity: value));
  });
}/// Create a copy of AuctionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WilayaRefModelCopyWith<$Res>? get wilaya {
    if (_self.wilaya == null) {
    return null;
  }

  return $WilayaRefModelCopyWith<$Res>(_self.wilaya!, (value) {
    return _then(_self.copyWith(wilaya: value));
  });
}/// Create a copy of AuctionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$NamedRefModelCopyWith<$Res>? get commune {
    if (_self.commune == null) {
    return null;
  }

  return $NamedRefModelCopyWith<$Res>(_self.commune!, (value) {
    return _then(_self.copyWith(commune: value));
  });
}/// Create a copy of AuctionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyModelCopyWith<$Res>? get openingPrice {
    if (_self.openingPrice == null) {
    return null;
  }

  return $MoneyModelCopyWith<$Res>(_self.openingPrice!, (value) {
    return _then(_self.copyWith(openingPrice: value));
  });
}/// Create a copy of AuctionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyModelCopyWith<$Res>? get currentPrice {
    if (_self.currentPrice == null) {
    return null;
  }

  return $MoneyModelCopyWith<$Res>(_self.currentPrice!, (value) {
    return _then(_self.copyWith(currentPrice: value));
  });
}/// Create a copy of AuctionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyModelCopyWith<$Res>? get depositAmount {
    if (_self.depositAmount == null) {
    return null;
  }

  return $MoneyModelCopyWith<$Res>(_self.depositAmount!, (value) {
    return _then(_self.copyWith(depositAmount: value));
  });
}/// Create a copy of AuctionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyModelCopyWith<$Res>? get bookPrice {
    if (_self.bookPrice == null) {
    return null;
  }

  return $MoneyModelCopyWith<$Res>(_self.bookPrice!, (value) {
    return _then(_self.copyWith(bookPrice: value));
  });
}/// Create a copy of AuctionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InspectionModelCopyWith<$Res>? get inspection {
    if (_self.inspection == null) {
    return null;
  }

  return $InspectionModelCopyWith<$Res>(_self.inspection!, (value) {
    return _then(_self.copyWith(inspection: value));
  });
}/// Create a copy of AuctionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppealWindowModelCopyWith<$Res>? get appealWindow {
    if (_self.appealWindow == null) {
    return null;
  }

  return $AppealWindowModelCopyWith<$Res>(_self.appealWindow!, (value) {
    return _then(_self.copyWith(appealWindow: value));
  });
}/// Create a copy of AuctionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LeaseModelCopyWith<$Res>? get lease {
    if (_self.lease == null) {
    return null;
  }

  return $LeaseModelCopyWith<$Res>(_self.lease!, (value) {
    return _then(_self.copyWith(lease: value));
  });
}/// Create a copy of AuctionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyModelCopyWith<$Res>? get finalPrice {
    if (_self.finalPrice == null) {
    return null;
  }

  return $MoneyModelCopyWith<$Res>(_self.finalPrice!, (value) {
    return _then(_self.copyWith(finalPrice: value));
  });
}/// Create a copy of AuctionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ConditionBookModelCopyWith<$Res>? get conditionBook {
    if (_self.conditionBook == null) {
    return null;
  }

  return $ConditionBookModelCopyWith<$Res>(_self.conditionBook!, (value) {
    return _then(_self.copyWith(conditionBook: value));
  });
}/// Create a copy of AuctionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ConditionBookModelCopyWith<$Res>? get awardDocument {
    if (_self.awardDocument == null) {
    return null;
  }

  return $ConditionBookModelCopyWith<$Res>(_self.awardDocument!, (value) {
    return _then(_self.copyWith(awardDocument: value));
  });
}/// Create a copy of AuctionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ConditionBookModelCopyWith<$Res>? get participationReceipt {
    if (_self.participationReceipt == null) {
    return null;
  }

  return $ConditionBookModelCopyWith<$Res>(_self.participationReceipt!, (value) {
    return _then(_self.copyWith(participationReceipt: value));
  });
}/// Create a copy of AuctionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ConditionBookModelCopyWith<$Res>? get resultDocument {
    if (_self.resultDocument == null) {
    return null;
  }

  return $ConditionBookModelCopyWith<$Res>(_self.resultDocument!, (value) {
    return _then(_self.copyWith(resultDocument: value));
  });
}/// Create a copy of AuctionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuctionSessionInfoModelCopyWith<$Res>? get session {
    if (_self.session == null) {
    return null;
  }

  return $AuctionSessionInfoModelCopyWith<$Res>(_self.session!, (value) {
    return _then(_self.copyWith(session: value));
  });
}/// Create a copy of AuctionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuctionSectorModelCopyWith<$Res>? get sector {
    if (_self.sector == null) {
    return null;
  }

  return $AuctionSectorModelCopyWith<$Res>(_self.sector!, (value) {
    return _then(_self.copyWith(sector: value));
  });
}/// Create a copy of AuctionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoneyModelCopyWith<$Res>? get minBid {
    if (_self.minBid == null) {
    return null;
  }

  return $MoneyModelCopyWith<$Res>(_self.minBid!, (value) {
    return _then(_self.copyWith(minBid: value));
  });
}
}


/// @nodoc
mixin _$WilayaRefModel {

 dynamic get id; String? get code; String? get name;
/// Create a copy of WilayaRefModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WilayaRefModelCopyWith<WilayaRefModel> get copyWith => _$WilayaRefModelCopyWithImpl<WilayaRefModel>(this as WilayaRefModel, _$identity);

  /// Serializes this WilayaRefModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as WilayaRefModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WilayaRefModel&&const DeepCollectionEquality().equals(other.id, _this.id)&&(identical(other.code, _this.code) || other.code == _this.code)&&(identical(other.name, _this.name) || other.name == _this.name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as WilayaRefModel;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.id),_this.code,_this.name);
}

@override
String toString() {
  final _this = this as WilayaRefModel;
  return 'WilayaRefModel(id: ${_this.id}, code: ${_this.code}, name: ${_this.name})';
}


}

/// @nodoc
abstract mixin class $WilayaRefModelCopyWith<$Res>  {
  factory $WilayaRefModelCopyWith(WilayaRefModel value, $Res Function(WilayaRefModel) _then) = _$WilayaRefModelCopyWithImpl;
@useResult
$Res call({
 dynamic id, String? code, String? name
});




}
/// @nodoc
class _$WilayaRefModelCopyWithImpl<$Res>
    implements $WilayaRefModelCopyWith<$Res> {
  _$WilayaRefModelCopyWithImpl(this._self, this._then);

  final WilayaRefModel _self;
  final $Res Function(WilayaRefModel) _then;

/// Create a copy of WilayaRefModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? code = freezed,Object? name = freezed,}) {
  return _then(WilayaRefModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as dynamic,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [WilayaRefModel].
extension WilayaRefModelPatterns on WilayaRefModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WilayaRefModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WilayaRefModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WilayaRefModel value)  $default,){
final _that = this;
switch (_that) {
case _WilayaRefModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WilayaRefModel value)?  $default,){
final _that = this;
switch (_that) {
case _WilayaRefModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( dynamic id,  String? code,  String? name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WilayaRefModel() when $default != null:
return $default(_that.id,_that.code,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( dynamic id,  String? code,  String? name)  $default,) {final _that = this;
switch (_that) {
case _WilayaRefModel():
return $default(_that.id,_that.code,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( dynamic id,  String? code,  String? name)?  $default,) {final _that = this;
switch (_that) {
case _WilayaRefModel() when $default != null:
return $default(_that.id,_that.code,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WilayaRefModel implements WilayaRefModel {
  const _WilayaRefModel({this.id, this.code, this.name});
  factory _WilayaRefModel.fromJson(Map<String, dynamic> json) => _$WilayaRefModelFromJson(json);

@override final  dynamic id;
@override final  String? code;
@override final  String? name;

/// Create a copy of WilayaRefModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WilayaRefModelCopyWith<_WilayaRefModel> get copyWith => __$WilayaRefModelCopyWithImpl<_WilayaRefModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WilayaRefModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _WilayaRefModel&&const DeepCollectionEquality().equals(other.id, id)&&(identical(other.code, code) || other.code == code)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(id),code,name);
}

@override
String toString() {
    return 'WilayaRefModel(id: $id, code: $code, name: $name)';
}


}

/// @nodoc
abstract mixin class _$WilayaRefModelCopyWith<$Res> implements $WilayaRefModelCopyWith<$Res> {
  factory _$WilayaRefModelCopyWith(_WilayaRefModel value, $Res Function(_WilayaRefModel) _then) = __$WilayaRefModelCopyWithImpl;
@override @useResult
$Res call({
 dynamic id, String? code, String? name
});




}
/// @nodoc
class __$WilayaRefModelCopyWithImpl<$Res>
    implements _$WilayaRefModelCopyWith<$Res> {
  __$WilayaRefModelCopyWithImpl(this._self, this._then);

  final _WilayaRefModel _self;
  final $Res Function(_WilayaRefModel) _then;

/// Create a copy of WilayaRefModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? code = freezed,Object? name = freezed,}) {
  return _then(_WilayaRefModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as dynamic,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ConditionBookModel {

 String? get id; String? get title;@JsonKey(name: 'download_url') String? get downloadUrl;
/// Create a copy of ConditionBookModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ConditionBookModelCopyWith<ConditionBookModel> get copyWith => _$ConditionBookModelCopyWithImpl<ConditionBookModel>(this as ConditionBookModel, _$identity);

  /// Serializes this ConditionBookModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ConditionBookModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConditionBookModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.title, _this.title) || other.title == _this.title)&&(identical(other.downloadUrl, _this.downloadUrl) || other.downloadUrl == _this.downloadUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ConditionBookModel;
  return Object.hash(runtimeType,_this.id,_this.title,_this.downloadUrl);
}

@override
String toString() {
  final _this = this as ConditionBookModel;
  return 'ConditionBookModel(id: ${_this.id}, title: ${_this.title}, downloadUrl: ${_this.downloadUrl})';
}


}

/// @nodoc
abstract mixin class $ConditionBookModelCopyWith<$Res>  {
  factory $ConditionBookModelCopyWith(ConditionBookModel value, $Res Function(ConditionBookModel) _then) = _$ConditionBookModelCopyWithImpl;
@useResult
$Res call({
 String? id, String? title,@JsonKey(name: 'download_url') String? downloadUrl
});




}
/// @nodoc
class _$ConditionBookModelCopyWithImpl<$Res>
    implements $ConditionBookModelCopyWith<$Res> {
  _$ConditionBookModelCopyWithImpl(this._self, this._then);

  final ConditionBookModel _self;
  final $Res Function(ConditionBookModel) _then;

/// Create a copy of ConditionBookModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? title = freezed,Object? downloadUrl = freezed,}) {
  return _then(ConditionBookModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,downloadUrl: freezed == downloadUrl ? _self.downloadUrl : downloadUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ConditionBookModel].
extension ConditionBookModelPatterns on ConditionBookModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ConditionBookModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ConditionBookModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ConditionBookModel value)  $default,){
final _that = this;
switch (_that) {
case _ConditionBookModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ConditionBookModel value)?  $default,){
final _that = this;
switch (_that) {
case _ConditionBookModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? title, @JsonKey(name: 'download_url')  String? downloadUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ConditionBookModel() when $default != null:
return $default(_that.id,_that.title,_that.downloadUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? title, @JsonKey(name: 'download_url')  String? downloadUrl)  $default,) {final _that = this;
switch (_that) {
case _ConditionBookModel():
return $default(_that.id,_that.title,_that.downloadUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? title, @JsonKey(name: 'download_url')  String? downloadUrl)?  $default,) {final _that = this;
switch (_that) {
case _ConditionBookModel() when $default != null:
return $default(_that.id,_that.title,_that.downloadUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ConditionBookModel extends ConditionBookModel {
  const _ConditionBookModel({this.id, this.title, @JsonKey(name: 'download_url') this.downloadUrl}): super._();
  factory _ConditionBookModel.fromJson(Map<String, dynamic> json) => _$ConditionBookModelFromJson(json);

@override final  String? id;
@override final  String? title;
@override@JsonKey(name: 'download_url') final  String? downloadUrl;

/// Create a copy of ConditionBookModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConditionBookModelCopyWith<_ConditionBookModel> get copyWith => __$ConditionBookModelCopyWithImpl<_ConditionBookModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ConditionBookModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConditionBookModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.downloadUrl, downloadUrl) || other.downloadUrl == downloadUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,title,downloadUrl);
}

@override
String toString() {
    return 'ConditionBookModel(id: $id, title: $title, downloadUrl: $downloadUrl)';
}


}

/// @nodoc
abstract mixin class _$ConditionBookModelCopyWith<$Res> implements $ConditionBookModelCopyWith<$Res> {
  factory _$ConditionBookModelCopyWith(_ConditionBookModel value, $Res Function(_ConditionBookModel) _then) = __$ConditionBookModelCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? title,@JsonKey(name: 'download_url') String? downloadUrl
});




}
/// @nodoc
class __$ConditionBookModelCopyWithImpl<$Res>
    implements _$ConditionBookModelCopyWith<$Res> {
  __$ConditionBookModelCopyWithImpl(this._self, this._then);

  final _ConditionBookModel _self;
  final $Res Function(_ConditionBookModel) _then;

/// Create a copy of ConditionBookModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? title = freezed,Object? downloadUrl = freezed,}) {
  return _then(_ConditionBookModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,downloadUrl: freezed == downloadUrl ? _self.downloadUrl : downloadUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
