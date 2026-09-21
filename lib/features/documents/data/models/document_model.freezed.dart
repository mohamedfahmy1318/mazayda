// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'document_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DocumentAuctionRefModel {

 String? get id; String? get title;@JsonKey(name: 'entity_name') String? get entityName;@JsonKey(name: 'wilaya_name') String? get wilayaName;@JsonKey(name: 'category_name') String? get categoryName;
/// Create a copy of DocumentAuctionRefModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DocumentAuctionRefModelCopyWith<DocumentAuctionRefModel> get copyWith => _$DocumentAuctionRefModelCopyWithImpl<DocumentAuctionRefModel>(this as DocumentAuctionRefModel, _$identity);

  /// Serializes this DocumentAuctionRefModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as DocumentAuctionRefModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DocumentAuctionRefModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.title, _this.title) || other.title == _this.title)&&(identical(other.entityName, _this.entityName) || other.entityName == _this.entityName)&&(identical(other.wilayaName, _this.wilayaName) || other.wilayaName == _this.wilayaName)&&(identical(other.categoryName, _this.categoryName) || other.categoryName == _this.categoryName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as DocumentAuctionRefModel;
  return Object.hash(runtimeType,_this.id,_this.title,_this.entityName,_this.wilayaName,_this.categoryName);
}

@override
String toString() {
  final _this = this as DocumentAuctionRefModel;
  return 'DocumentAuctionRefModel(id: ${_this.id}, title: ${_this.title}, entityName: ${_this.entityName}, wilayaName: ${_this.wilayaName}, categoryName: ${_this.categoryName})';
}


}

/// @nodoc
abstract mixin class $DocumentAuctionRefModelCopyWith<$Res>  {
  factory $DocumentAuctionRefModelCopyWith(DocumentAuctionRefModel value, $Res Function(DocumentAuctionRefModel) _then) = _$DocumentAuctionRefModelCopyWithImpl;
@useResult
$Res call({
 String? id, String? title,@JsonKey(name: 'entity_name') String? entityName,@JsonKey(name: 'wilaya_name') String? wilayaName,@JsonKey(name: 'category_name') String? categoryName
});




}
/// @nodoc
class _$DocumentAuctionRefModelCopyWithImpl<$Res>
    implements $DocumentAuctionRefModelCopyWith<$Res> {
  _$DocumentAuctionRefModelCopyWithImpl(this._self, this._then);

  final DocumentAuctionRefModel _self;
  final $Res Function(DocumentAuctionRefModel) _then;

/// Create a copy of DocumentAuctionRefModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? title = freezed,Object? entityName = freezed,Object? wilayaName = freezed,Object? categoryName = freezed,}) {
  return _then(DocumentAuctionRefModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,entityName: freezed == entityName ? _self.entityName : entityName // ignore: cast_nullable_to_non_nullable
as String?,wilayaName: freezed == wilayaName ? _self.wilayaName : wilayaName // ignore: cast_nullable_to_non_nullable
as String?,categoryName: freezed == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [DocumentAuctionRefModel].
extension DocumentAuctionRefModelPatterns on DocumentAuctionRefModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DocumentAuctionRefModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DocumentAuctionRefModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DocumentAuctionRefModel value)  $default,){
final _that = this;
switch (_that) {
case _DocumentAuctionRefModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DocumentAuctionRefModel value)?  $default,){
final _that = this;
switch (_that) {
case _DocumentAuctionRefModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? title, @JsonKey(name: 'entity_name')  String? entityName, @JsonKey(name: 'wilaya_name')  String? wilayaName, @JsonKey(name: 'category_name')  String? categoryName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DocumentAuctionRefModel() when $default != null:
return $default(_that.id,_that.title,_that.entityName,_that.wilayaName,_that.categoryName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? title, @JsonKey(name: 'entity_name')  String? entityName, @JsonKey(name: 'wilaya_name')  String? wilayaName, @JsonKey(name: 'category_name')  String? categoryName)  $default,) {final _that = this;
switch (_that) {
case _DocumentAuctionRefModel():
return $default(_that.id,_that.title,_that.entityName,_that.wilayaName,_that.categoryName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? title, @JsonKey(name: 'entity_name')  String? entityName, @JsonKey(name: 'wilaya_name')  String? wilayaName, @JsonKey(name: 'category_name')  String? categoryName)?  $default,) {final _that = this;
switch (_that) {
case _DocumentAuctionRefModel() when $default != null:
return $default(_that.id,_that.title,_that.entityName,_that.wilayaName,_that.categoryName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DocumentAuctionRefModel extends DocumentAuctionRefModel {
  const _DocumentAuctionRefModel({this.id, this.title, @JsonKey(name: 'entity_name') this.entityName, @JsonKey(name: 'wilaya_name') this.wilayaName, @JsonKey(name: 'category_name') this.categoryName}): super._();
  factory _DocumentAuctionRefModel.fromJson(Map<String, dynamic> json) => _$DocumentAuctionRefModelFromJson(json);

@override final  String? id;
@override final  String? title;
@override@JsonKey(name: 'entity_name') final  String? entityName;
@override@JsonKey(name: 'wilaya_name') final  String? wilayaName;
@override@JsonKey(name: 'category_name') final  String? categoryName;

/// Create a copy of DocumentAuctionRefModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DocumentAuctionRefModelCopyWith<_DocumentAuctionRefModel> get copyWith => __$DocumentAuctionRefModelCopyWithImpl<_DocumentAuctionRefModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DocumentAuctionRefModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DocumentAuctionRefModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.entityName, entityName) || other.entityName == entityName)&&(identical(other.wilayaName, wilayaName) || other.wilayaName == wilayaName)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,title,entityName,wilayaName,categoryName);
}

@override
String toString() {
    return 'DocumentAuctionRefModel(id: $id, title: $title, entityName: $entityName, wilayaName: $wilayaName, categoryName: $categoryName)';
}


}

/// @nodoc
abstract mixin class _$DocumentAuctionRefModelCopyWith<$Res> implements $DocumentAuctionRefModelCopyWith<$Res> {
  factory _$DocumentAuctionRefModelCopyWith(_DocumentAuctionRefModel value, $Res Function(_DocumentAuctionRefModel) _then) = __$DocumentAuctionRefModelCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? title,@JsonKey(name: 'entity_name') String? entityName,@JsonKey(name: 'wilaya_name') String? wilayaName,@JsonKey(name: 'category_name') String? categoryName
});




}
/// @nodoc
class __$DocumentAuctionRefModelCopyWithImpl<$Res>
    implements _$DocumentAuctionRefModelCopyWith<$Res> {
  __$DocumentAuctionRefModelCopyWithImpl(this._self, this._then);

  final _DocumentAuctionRefModel _self;
  final $Res Function(_DocumentAuctionRefModel) _then;

/// Create a copy of DocumentAuctionRefModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? title = freezed,Object? entityName = freezed,Object? wilayaName = freezed,Object? categoryName = freezed,}) {
  return _then(_DocumentAuctionRefModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,entityName: freezed == entityName ? _self.entityName : entityName // ignore: cast_nullable_to_non_nullable
as String?,wilayaName: freezed == wilayaName ? _self.wilayaName : wilayaName // ignore: cast_nullable_to_non_nullable
as String?,categoryName: freezed == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$DocumentModel {

 String get id; String? get type;@JsonKey(name: 'type_label') String? get typeLabel; String? get title;@JsonKey(name: 'is_public') bool get isPublic;@JsonKey(name: 'file_size') int get fileSize;@JsonKey(name: 'file_size_human') String? get fileSizeHuman;@JsonKey(name: 'issued_at') String? get issuedAt;@JsonKey(name: 'download_url') String? get downloadUrl;@JsonKey(name: 'verify_url') String? get verifyUrl; DocumentAuctionRefModel? get auction;
/// Create a copy of DocumentModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DocumentModelCopyWith<DocumentModel> get copyWith => _$DocumentModelCopyWithImpl<DocumentModel>(this as DocumentModel, _$identity);

  /// Serializes this DocumentModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as DocumentModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DocumentModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.type, _this.type) || other.type == _this.type)&&(identical(other.typeLabel, _this.typeLabel) || other.typeLabel == _this.typeLabel)&&(identical(other.title, _this.title) || other.title == _this.title)&&(identical(other.isPublic, _this.isPublic) || other.isPublic == _this.isPublic)&&(identical(other.fileSize, _this.fileSize) || other.fileSize == _this.fileSize)&&(identical(other.fileSizeHuman, _this.fileSizeHuman) || other.fileSizeHuman == _this.fileSizeHuman)&&(identical(other.issuedAt, _this.issuedAt) || other.issuedAt == _this.issuedAt)&&(identical(other.downloadUrl, _this.downloadUrl) || other.downloadUrl == _this.downloadUrl)&&(identical(other.verifyUrl, _this.verifyUrl) || other.verifyUrl == _this.verifyUrl)&&(identical(other.auction, _this.auction) || other.auction == _this.auction));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as DocumentModel;
  return Object.hash(runtimeType,_this.id,_this.type,_this.typeLabel,_this.title,_this.isPublic,_this.fileSize,_this.fileSizeHuman,_this.issuedAt,_this.downloadUrl,_this.verifyUrl,_this.auction);
}

@override
String toString() {
  final _this = this as DocumentModel;
  return 'DocumentModel(id: ${_this.id}, type: ${_this.type}, typeLabel: ${_this.typeLabel}, title: ${_this.title}, isPublic: ${_this.isPublic}, fileSize: ${_this.fileSize}, fileSizeHuman: ${_this.fileSizeHuman}, issuedAt: ${_this.issuedAt}, downloadUrl: ${_this.downloadUrl}, verifyUrl: ${_this.verifyUrl}, auction: ${_this.auction})';
}


}

/// @nodoc
abstract mixin class $DocumentModelCopyWith<$Res>  {
  factory $DocumentModelCopyWith(DocumentModel value, $Res Function(DocumentModel) _then) = _$DocumentModelCopyWithImpl;
@useResult
$Res call({
 String id, String? type,@JsonKey(name: 'type_label') String? typeLabel, String? title,@JsonKey(name: 'is_public') bool isPublic,@JsonKey(name: 'file_size') int fileSize,@JsonKey(name: 'file_size_human') String? fileSizeHuman,@JsonKey(name: 'issued_at') String? issuedAt,@JsonKey(name: 'download_url') String? downloadUrl,@JsonKey(name: 'verify_url') String? verifyUrl, DocumentAuctionRefModel? auction
});


$DocumentAuctionRefModelCopyWith<$Res>? get auction;

}
/// @nodoc
class _$DocumentModelCopyWithImpl<$Res>
    implements $DocumentModelCopyWith<$Res> {
  _$DocumentModelCopyWithImpl(this._self, this._then);

  final DocumentModel _self;
  final $Res Function(DocumentModel) _then;

/// Create a copy of DocumentModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? type = freezed,Object? typeLabel = freezed,Object? title = freezed,Object? isPublic = null,Object? fileSize = null,Object? fileSizeHuman = freezed,Object? issuedAt = freezed,Object? downloadUrl = freezed,Object? verifyUrl = freezed,Object? auction = freezed,}) {
  return _then(DocumentModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,typeLabel: freezed == typeLabel ? _self.typeLabel : typeLabel // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,isPublic: null == isPublic ? _self.isPublic : isPublic // ignore: cast_nullable_to_non_nullable
as bool,fileSize: null == fileSize ? _self.fileSize : fileSize // ignore: cast_nullable_to_non_nullable
as int,fileSizeHuman: freezed == fileSizeHuman ? _self.fileSizeHuman : fileSizeHuman // ignore: cast_nullable_to_non_nullable
as String?,issuedAt: freezed == issuedAt ? _self.issuedAt : issuedAt // ignore: cast_nullable_to_non_nullable
as String?,downloadUrl: freezed == downloadUrl ? _self.downloadUrl : downloadUrl // ignore: cast_nullable_to_non_nullable
as String?,verifyUrl: freezed == verifyUrl ? _self.verifyUrl : verifyUrl // ignore: cast_nullable_to_non_nullable
as String?,auction: freezed == auction ? _self.auction : auction // ignore: cast_nullable_to_non_nullable
as DocumentAuctionRefModel?,
  ));
}
/// Create a copy of DocumentModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DocumentAuctionRefModelCopyWith<$Res>? get auction {
    if (_self.auction == null) {
    return null;
  }

  return $DocumentAuctionRefModelCopyWith<$Res>(_self.auction!, (value) {
    return _then(_self.copyWith(auction: value));
  });
}
}


/// Adds pattern-matching-related methods to [DocumentModel].
extension DocumentModelPatterns on DocumentModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DocumentModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DocumentModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DocumentModel value)  $default,){
final _that = this;
switch (_that) {
case _DocumentModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DocumentModel value)?  $default,){
final _that = this;
switch (_that) {
case _DocumentModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String? type, @JsonKey(name: 'type_label')  String? typeLabel,  String? title, @JsonKey(name: 'is_public')  bool isPublic, @JsonKey(name: 'file_size')  int fileSize, @JsonKey(name: 'file_size_human')  String? fileSizeHuman, @JsonKey(name: 'issued_at')  String? issuedAt, @JsonKey(name: 'download_url')  String? downloadUrl, @JsonKey(name: 'verify_url')  String? verifyUrl,  DocumentAuctionRefModel? auction)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DocumentModel() when $default != null:
return $default(_that.id,_that.type,_that.typeLabel,_that.title,_that.isPublic,_that.fileSize,_that.fileSizeHuman,_that.issuedAt,_that.downloadUrl,_that.verifyUrl,_that.auction);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String? type, @JsonKey(name: 'type_label')  String? typeLabel,  String? title, @JsonKey(name: 'is_public')  bool isPublic, @JsonKey(name: 'file_size')  int fileSize, @JsonKey(name: 'file_size_human')  String? fileSizeHuman, @JsonKey(name: 'issued_at')  String? issuedAt, @JsonKey(name: 'download_url')  String? downloadUrl, @JsonKey(name: 'verify_url')  String? verifyUrl,  DocumentAuctionRefModel? auction)  $default,) {final _that = this;
switch (_that) {
case _DocumentModel():
return $default(_that.id,_that.type,_that.typeLabel,_that.title,_that.isPublic,_that.fileSize,_that.fileSizeHuman,_that.issuedAt,_that.downloadUrl,_that.verifyUrl,_that.auction);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String? type, @JsonKey(name: 'type_label')  String? typeLabel,  String? title, @JsonKey(name: 'is_public')  bool isPublic, @JsonKey(name: 'file_size')  int fileSize, @JsonKey(name: 'file_size_human')  String? fileSizeHuman, @JsonKey(name: 'issued_at')  String? issuedAt, @JsonKey(name: 'download_url')  String? downloadUrl, @JsonKey(name: 'verify_url')  String? verifyUrl,  DocumentAuctionRefModel? auction)?  $default,) {final _that = this;
switch (_that) {
case _DocumentModel() when $default != null:
return $default(_that.id,_that.type,_that.typeLabel,_that.title,_that.isPublic,_that.fileSize,_that.fileSizeHuman,_that.issuedAt,_that.downloadUrl,_that.verifyUrl,_that.auction);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DocumentModel extends DocumentModel {
  const _DocumentModel({required this.id, this.type, @JsonKey(name: 'type_label') this.typeLabel, this.title, @JsonKey(name: 'is_public') this.isPublic = false, @JsonKey(name: 'file_size') this.fileSize = 0, @JsonKey(name: 'file_size_human') this.fileSizeHuman, @JsonKey(name: 'issued_at') this.issuedAt, @JsonKey(name: 'download_url') this.downloadUrl, @JsonKey(name: 'verify_url') this.verifyUrl, this.auction}): super._();
  factory _DocumentModel.fromJson(Map<String, dynamic> json) => _$DocumentModelFromJson(json);

@override final  String id;
@override final  String? type;
@override@JsonKey(name: 'type_label') final  String? typeLabel;
@override final  String? title;
@override@JsonKey(name: 'is_public') final  bool isPublic;
@override@JsonKey(name: 'file_size') final  int fileSize;
@override@JsonKey(name: 'file_size_human') final  String? fileSizeHuman;
@override@JsonKey(name: 'issued_at') final  String? issuedAt;
@override@JsonKey(name: 'download_url') final  String? downloadUrl;
@override@JsonKey(name: 'verify_url') final  String? verifyUrl;
@override final  DocumentAuctionRefModel? auction;

/// Create a copy of DocumentModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DocumentModelCopyWith<_DocumentModel> get copyWith => __$DocumentModelCopyWithImpl<_DocumentModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DocumentModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DocumentModel&&(identical(other.id, id) || other.id == id)&&(identical(other.type, type) || other.type == type)&&(identical(other.typeLabel, typeLabel) || other.typeLabel == typeLabel)&&(identical(other.title, title) || other.title == title)&&(identical(other.isPublic, isPublic) || other.isPublic == isPublic)&&(identical(other.fileSize, fileSize) || other.fileSize == fileSize)&&(identical(other.fileSizeHuman, fileSizeHuman) || other.fileSizeHuman == fileSizeHuman)&&(identical(other.issuedAt, issuedAt) || other.issuedAt == issuedAt)&&(identical(other.downloadUrl, downloadUrl) || other.downloadUrl == downloadUrl)&&(identical(other.verifyUrl, verifyUrl) || other.verifyUrl == verifyUrl)&&(identical(other.auction, auction) || other.auction == auction));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,type,typeLabel,title,isPublic,fileSize,fileSizeHuman,issuedAt,downloadUrl,verifyUrl,auction);
}

@override
String toString() {
    return 'DocumentModel(id: $id, type: $type, typeLabel: $typeLabel, title: $title, isPublic: $isPublic, fileSize: $fileSize, fileSizeHuman: $fileSizeHuman, issuedAt: $issuedAt, downloadUrl: $downloadUrl, verifyUrl: $verifyUrl, auction: $auction)';
}


}

/// @nodoc
abstract mixin class _$DocumentModelCopyWith<$Res> implements $DocumentModelCopyWith<$Res> {
  factory _$DocumentModelCopyWith(_DocumentModel value, $Res Function(_DocumentModel) _then) = __$DocumentModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String? type,@JsonKey(name: 'type_label') String? typeLabel, String? title,@JsonKey(name: 'is_public') bool isPublic,@JsonKey(name: 'file_size') int fileSize,@JsonKey(name: 'file_size_human') String? fileSizeHuman,@JsonKey(name: 'issued_at') String? issuedAt,@JsonKey(name: 'download_url') String? downloadUrl,@JsonKey(name: 'verify_url') String? verifyUrl, DocumentAuctionRefModel? auction
});


@override $DocumentAuctionRefModelCopyWith<$Res>? get auction;

}
/// @nodoc
class __$DocumentModelCopyWithImpl<$Res>
    implements _$DocumentModelCopyWith<$Res> {
  __$DocumentModelCopyWithImpl(this._self, this._then);

  final _DocumentModel _self;
  final $Res Function(_DocumentModel) _then;

/// Create a copy of DocumentModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? type = freezed,Object? typeLabel = freezed,Object? title = freezed,Object? isPublic = null,Object? fileSize = null,Object? fileSizeHuman = freezed,Object? issuedAt = freezed,Object? downloadUrl = freezed,Object? verifyUrl = freezed,Object? auction = freezed,}) {
  return _then(_DocumentModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,typeLabel: freezed == typeLabel ? _self.typeLabel : typeLabel // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,isPublic: null == isPublic ? _self.isPublic : isPublic // ignore: cast_nullable_to_non_nullable
as bool,fileSize: null == fileSize ? _self.fileSize : fileSize // ignore: cast_nullable_to_non_nullable
as int,fileSizeHuman: freezed == fileSizeHuman ? _self.fileSizeHuman : fileSizeHuman // ignore: cast_nullable_to_non_nullable
as String?,issuedAt: freezed == issuedAt ? _self.issuedAt : issuedAt // ignore: cast_nullable_to_non_nullable
as String?,downloadUrl: freezed == downloadUrl ? _self.downloadUrl : downloadUrl // ignore: cast_nullable_to_non_nullable
as String?,verifyUrl: freezed == verifyUrl ? _self.verifyUrl : verifyUrl // ignore: cast_nullable_to_non_nullable
as String?,auction: freezed == auction ? _self.auction : auction // ignore: cast_nullable_to_non_nullable
as DocumentAuctionRefModel?,
  ));
}

/// Create a copy of DocumentModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DocumentAuctionRefModelCopyWith<$Res>? get auction {
    if (_self.auction == null) {
    return null;
  }

  return $DocumentAuctionRefModelCopyWith<$Res>(_self.auction!, (value) {
    return _then(_self.copyWith(auction: value));
  });
}
}


/// @nodoc
mixin _$DocumentsSummaryModel {

 int get total; int get books; int get awards; int get receipts;@JsonKey(name: 'total_bytes') int get totalBytes;
/// Create a copy of DocumentsSummaryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DocumentsSummaryModelCopyWith<DocumentsSummaryModel> get copyWith => _$DocumentsSummaryModelCopyWithImpl<DocumentsSummaryModel>(this as DocumentsSummaryModel, _$identity);

  /// Serializes this DocumentsSummaryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as DocumentsSummaryModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DocumentsSummaryModel&&(identical(other.total, _this.total) || other.total == _this.total)&&(identical(other.books, _this.books) || other.books == _this.books)&&(identical(other.awards, _this.awards) || other.awards == _this.awards)&&(identical(other.receipts, _this.receipts) || other.receipts == _this.receipts)&&(identical(other.totalBytes, _this.totalBytes) || other.totalBytes == _this.totalBytes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as DocumentsSummaryModel;
  return Object.hash(runtimeType,_this.total,_this.books,_this.awards,_this.receipts,_this.totalBytes);
}

@override
String toString() {
  final _this = this as DocumentsSummaryModel;
  return 'DocumentsSummaryModel(total: ${_this.total}, books: ${_this.books}, awards: ${_this.awards}, receipts: ${_this.receipts}, totalBytes: ${_this.totalBytes})';
}


}

/// @nodoc
abstract mixin class $DocumentsSummaryModelCopyWith<$Res>  {
  factory $DocumentsSummaryModelCopyWith(DocumentsSummaryModel value, $Res Function(DocumentsSummaryModel) _then) = _$DocumentsSummaryModelCopyWithImpl;
@useResult
$Res call({
 int total, int books, int awards, int receipts,@JsonKey(name: 'total_bytes') int totalBytes
});




}
/// @nodoc
class _$DocumentsSummaryModelCopyWithImpl<$Res>
    implements $DocumentsSummaryModelCopyWith<$Res> {
  _$DocumentsSummaryModelCopyWithImpl(this._self, this._then);

  final DocumentsSummaryModel _self;
  final $Res Function(DocumentsSummaryModel) _then;

/// Create a copy of DocumentsSummaryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? total = null,Object? books = null,Object? awards = null,Object? receipts = null,Object? totalBytes = null,}) {
  return _then(DocumentsSummaryModel(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,books: null == books ? _self.books : books // ignore: cast_nullable_to_non_nullable
as int,awards: null == awards ? _self.awards : awards // ignore: cast_nullable_to_non_nullable
as int,receipts: null == receipts ? _self.receipts : receipts // ignore: cast_nullable_to_non_nullable
as int,totalBytes: null == totalBytes ? _self.totalBytes : totalBytes // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [DocumentsSummaryModel].
extension DocumentsSummaryModelPatterns on DocumentsSummaryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DocumentsSummaryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DocumentsSummaryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DocumentsSummaryModel value)  $default,){
final _that = this;
switch (_that) {
case _DocumentsSummaryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DocumentsSummaryModel value)?  $default,){
final _that = this;
switch (_that) {
case _DocumentsSummaryModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int total,  int books,  int awards,  int receipts, @JsonKey(name: 'total_bytes')  int totalBytes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DocumentsSummaryModel() when $default != null:
return $default(_that.total,_that.books,_that.awards,_that.receipts,_that.totalBytes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int total,  int books,  int awards,  int receipts, @JsonKey(name: 'total_bytes')  int totalBytes)  $default,) {final _that = this;
switch (_that) {
case _DocumentsSummaryModel():
return $default(_that.total,_that.books,_that.awards,_that.receipts,_that.totalBytes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int total,  int books,  int awards,  int receipts, @JsonKey(name: 'total_bytes')  int totalBytes)?  $default,) {final _that = this;
switch (_that) {
case _DocumentsSummaryModel() when $default != null:
return $default(_that.total,_that.books,_that.awards,_that.receipts,_that.totalBytes);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DocumentsSummaryModel extends DocumentsSummaryModel {
  const _DocumentsSummaryModel({this.total = 0, this.books = 0, this.awards = 0, this.receipts = 0, @JsonKey(name: 'total_bytes') this.totalBytes = 0}): super._();
  factory _DocumentsSummaryModel.fromJson(Map<String, dynamic> json) => _$DocumentsSummaryModelFromJson(json);

@override@JsonKey() final  int total;
@override@JsonKey() final  int books;
@override@JsonKey() final  int awards;
@override@JsonKey() final  int receipts;
@override@JsonKey(name: 'total_bytes') final  int totalBytes;

/// Create a copy of DocumentsSummaryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DocumentsSummaryModelCopyWith<_DocumentsSummaryModel> get copyWith => __$DocumentsSummaryModelCopyWithImpl<_DocumentsSummaryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DocumentsSummaryModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _DocumentsSummaryModel&&(identical(other.total, total) || other.total == total)&&(identical(other.books, books) || other.books == books)&&(identical(other.awards, awards) || other.awards == awards)&&(identical(other.receipts, receipts) || other.receipts == receipts)&&(identical(other.totalBytes, totalBytes) || other.totalBytes == totalBytes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,total,books,awards,receipts,totalBytes);
}

@override
String toString() {
    return 'DocumentsSummaryModel(total: $total, books: $books, awards: $awards, receipts: $receipts, totalBytes: $totalBytes)';
}


}

/// @nodoc
abstract mixin class _$DocumentsSummaryModelCopyWith<$Res> implements $DocumentsSummaryModelCopyWith<$Res> {
  factory _$DocumentsSummaryModelCopyWith(_DocumentsSummaryModel value, $Res Function(_DocumentsSummaryModel) _then) = __$DocumentsSummaryModelCopyWithImpl;
@override @useResult
$Res call({
 int total, int books, int awards, int receipts,@JsonKey(name: 'total_bytes') int totalBytes
});




}
/// @nodoc
class __$DocumentsSummaryModelCopyWithImpl<$Res>
    implements _$DocumentsSummaryModelCopyWith<$Res> {
  __$DocumentsSummaryModelCopyWithImpl(this._self, this._then);

  final _DocumentsSummaryModel _self;
  final $Res Function(_DocumentsSummaryModel) _then;

/// Create a copy of DocumentsSummaryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = null,Object? books = null,Object? awards = null,Object? receipts = null,Object? totalBytes = null,}) {
  return _then(_DocumentsSummaryModel(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,books: null == books ? _self.books : books // ignore: cast_nullable_to_non_nullable
as int,awards: null == awards ? _self.awards : awards // ignore: cast_nullable_to_non_nullable
as int,receipts: null == receipts ? _self.receipts : receipts // ignore: cast_nullable_to_non_nullable
as int,totalBytes: null == totalBytes ? _self.totalBytes : totalBytes // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
