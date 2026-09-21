// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthTokensModel {

@JsonKey(name: 'access_token') String get accessToken;@JsonKey(name: 'refresh_token') String get refreshToken;
/// Create a copy of AuthTokensModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthTokensModelCopyWith<AuthTokensModel> get copyWith => _$AuthTokensModelCopyWithImpl<AuthTokensModel>(this as AuthTokensModel, _$identity);

  /// Serializes this AuthTokensModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AuthTokensModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthTokensModel&&(identical(other.accessToken, _this.accessToken) || other.accessToken == _this.accessToken)&&(identical(other.refreshToken, _this.refreshToken) || other.refreshToken == _this.refreshToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AuthTokensModel;
  return Object.hash(runtimeType,_this.accessToken,_this.refreshToken);
}

@override
String toString() {
  final _this = this as AuthTokensModel;
  return 'AuthTokensModel(accessToken: ${_this.accessToken}, refreshToken: ${_this.refreshToken})';
}


}

/// @nodoc
abstract mixin class $AuthTokensModelCopyWith<$Res>  {
  factory $AuthTokensModelCopyWith(AuthTokensModel value, $Res Function(AuthTokensModel) _then) = _$AuthTokensModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'access_token') String accessToken,@JsonKey(name: 'refresh_token') String refreshToken
});




}
/// @nodoc
class _$AuthTokensModelCopyWithImpl<$Res>
    implements $AuthTokensModelCopyWith<$Res> {
  _$AuthTokensModelCopyWithImpl(this._self, this._then);

  final AuthTokensModel _self;
  final $Res Function(AuthTokensModel) _then;

/// Create a copy of AuthTokensModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? accessToken = null,Object? refreshToken = null,}) {
  return _then(AuthTokensModel(
accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,refreshToken: null == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AuthTokensModel].
extension AuthTokensModelPatterns on AuthTokensModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthTokensModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthTokensModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthTokensModel value)  $default,){
final _that = this;
switch (_that) {
case _AuthTokensModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthTokensModel value)?  $default,){
final _that = this;
switch (_that) {
case _AuthTokensModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'access_token')  String accessToken, @JsonKey(name: 'refresh_token')  String refreshToken)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthTokensModel() when $default != null:
return $default(_that.accessToken,_that.refreshToken);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'access_token')  String accessToken, @JsonKey(name: 'refresh_token')  String refreshToken)  $default,) {final _that = this;
switch (_that) {
case _AuthTokensModel():
return $default(_that.accessToken,_that.refreshToken);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'access_token')  String accessToken, @JsonKey(name: 'refresh_token')  String refreshToken)?  $default,) {final _that = this;
switch (_that) {
case _AuthTokensModel() when $default != null:
return $default(_that.accessToken,_that.refreshToken);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AuthTokensModel extends AuthTokensModel {
  const _AuthTokensModel({@JsonKey(name: 'access_token') required this.accessToken, @JsonKey(name: 'refresh_token') required this.refreshToken}): super._();
  factory _AuthTokensModel.fromJson(Map<String, dynamic> json) => _$AuthTokensModelFromJson(json);

@override@JsonKey(name: 'access_token') final  String accessToken;
@override@JsonKey(name: 'refresh_token') final  String refreshToken;

/// Create a copy of AuthTokensModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthTokensModelCopyWith<_AuthTokensModel> get copyWith => __$AuthTokensModelCopyWithImpl<_AuthTokensModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuthTokensModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthTokensModel&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,accessToken,refreshToken);
}

@override
String toString() {
    return 'AuthTokensModel(accessToken: $accessToken, refreshToken: $refreshToken)';
}


}

/// @nodoc
abstract mixin class _$AuthTokensModelCopyWith<$Res> implements $AuthTokensModelCopyWith<$Res> {
  factory _$AuthTokensModelCopyWith(_AuthTokensModel value, $Res Function(_AuthTokensModel) _then) = __$AuthTokensModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'access_token') String accessToken,@JsonKey(name: 'refresh_token') String refreshToken
});




}
/// @nodoc
class __$AuthTokensModelCopyWithImpl<$Res>
    implements _$AuthTokensModelCopyWith<$Res> {
  __$AuthTokensModelCopyWithImpl(this._self, this._then);

  final _AuthTokensModel _self;
  final $Res Function(_AuthTokensModel) _then;

/// Create a copy of AuthTokensModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? accessToken = null,Object? refreshToken = null,}) {
  return _then(_AuthTokensModel(
accessToken: null == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String,refreshToken: null == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$AuthUserModel {

 String get id;@JsonKey(name: 'first_name_ar') String? get firstNameAr;@JsonKey(name: 'last_name_ar') String? get lastNameAr; String? get email; String? get phone;@JsonKey(name: 'kyc_status') String get kycStatus;
/// Create a copy of AuthUserModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthUserModelCopyWith<AuthUserModel> get copyWith => _$AuthUserModelCopyWithImpl<AuthUserModel>(this as AuthUserModel, _$identity);

  /// Serializes this AuthUserModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AuthUserModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthUserModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.firstNameAr, _this.firstNameAr) || other.firstNameAr == _this.firstNameAr)&&(identical(other.lastNameAr, _this.lastNameAr) || other.lastNameAr == _this.lastNameAr)&&(identical(other.email, _this.email) || other.email == _this.email)&&(identical(other.phone, _this.phone) || other.phone == _this.phone)&&(identical(other.kycStatus, _this.kycStatus) || other.kycStatus == _this.kycStatus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AuthUserModel;
  return Object.hash(runtimeType,_this.id,_this.firstNameAr,_this.lastNameAr,_this.email,_this.phone,_this.kycStatus);
}

@override
String toString() {
  final _this = this as AuthUserModel;
  return 'AuthUserModel(id: ${_this.id}, firstNameAr: ${_this.firstNameAr}, lastNameAr: ${_this.lastNameAr}, email: ${_this.email}, phone: ${_this.phone}, kycStatus: ${_this.kycStatus})';
}


}

/// @nodoc
abstract mixin class $AuthUserModelCopyWith<$Res>  {
  factory $AuthUserModelCopyWith(AuthUserModel value, $Res Function(AuthUserModel) _then) = _$AuthUserModelCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'first_name_ar') String? firstNameAr,@JsonKey(name: 'last_name_ar') String? lastNameAr, String? email, String? phone,@JsonKey(name: 'kyc_status') String kycStatus
});




}
/// @nodoc
class _$AuthUserModelCopyWithImpl<$Res>
    implements $AuthUserModelCopyWith<$Res> {
  _$AuthUserModelCopyWithImpl(this._self, this._then);

  final AuthUserModel _self;
  final $Res Function(AuthUserModel) _then;

/// Create a copy of AuthUserModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? firstNameAr = freezed,Object? lastNameAr = freezed,Object? email = freezed,Object? phone = freezed,Object? kycStatus = null,}) {
  return _then(AuthUserModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,firstNameAr: freezed == firstNameAr ? _self.firstNameAr : firstNameAr // ignore: cast_nullable_to_non_nullable
as String?,lastNameAr: freezed == lastNameAr ? _self.lastNameAr : lastNameAr // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,kycStatus: null == kycStatus ? _self.kycStatus : kycStatus // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AuthUserModel].
extension AuthUserModelPatterns on AuthUserModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthUserModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthUserModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthUserModel value)  $default,){
final _that = this;
switch (_that) {
case _AuthUserModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthUserModel value)?  $default,){
final _that = this;
switch (_that) {
case _AuthUserModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'first_name_ar')  String? firstNameAr, @JsonKey(name: 'last_name_ar')  String? lastNameAr,  String? email,  String? phone, @JsonKey(name: 'kyc_status')  String kycStatus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthUserModel() when $default != null:
return $default(_that.id,_that.firstNameAr,_that.lastNameAr,_that.email,_that.phone,_that.kycStatus);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'first_name_ar')  String? firstNameAr, @JsonKey(name: 'last_name_ar')  String? lastNameAr,  String? email,  String? phone, @JsonKey(name: 'kyc_status')  String kycStatus)  $default,) {final _that = this;
switch (_that) {
case _AuthUserModel():
return $default(_that.id,_that.firstNameAr,_that.lastNameAr,_that.email,_that.phone,_that.kycStatus);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'first_name_ar')  String? firstNameAr, @JsonKey(name: 'last_name_ar')  String? lastNameAr,  String? email,  String? phone, @JsonKey(name: 'kyc_status')  String kycStatus)?  $default,) {final _that = this;
switch (_that) {
case _AuthUserModel() when $default != null:
return $default(_that.id,_that.firstNameAr,_that.lastNameAr,_that.email,_that.phone,_that.kycStatus);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AuthUserModel extends AuthUserModel {
  const _AuthUserModel({required this.id, @JsonKey(name: 'first_name_ar') this.firstNameAr, @JsonKey(name: 'last_name_ar') this.lastNameAr, this.email, this.phone, @JsonKey(name: 'kyc_status') this.kycStatus = 'PENDING'}): super._();
  factory _AuthUserModel.fromJson(Map<String, dynamic> json) => _$AuthUserModelFromJson(json);

@override final  String id;
@override@JsonKey(name: 'first_name_ar') final  String? firstNameAr;
@override@JsonKey(name: 'last_name_ar') final  String? lastNameAr;
@override final  String? email;
@override final  String? phone;
@override@JsonKey(name: 'kyc_status') final  String kycStatus;

/// Create a copy of AuthUserModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthUserModelCopyWith<_AuthUserModel> get copyWith => __$AuthUserModelCopyWithImpl<_AuthUserModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuthUserModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthUserModel&&(identical(other.id, id) || other.id == id)&&(identical(other.firstNameAr, firstNameAr) || other.firstNameAr == firstNameAr)&&(identical(other.lastNameAr, lastNameAr) || other.lastNameAr == lastNameAr)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.kycStatus, kycStatus) || other.kycStatus == kycStatus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,firstNameAr,lastNameAr,email,phone,kycStatus);
}

@override
String toString() {
    return 'AuthUserModel(id: $id, firstNameAr: $firstNameAr, lastNameAr: $lastNameAr, email: $email, phone: $phone, kycStatus: $kycStatus)';
}


}

/// @nodoc
abstract mixin class _$AuthUserModelCopyWith<$Res> implements $AuthUserModelCopyWith<$Res> {
  factory _$AuthUserModelCopyWith(_AuthUserModel value, $Res Function(_AuthUserModel) _then) = __$AuthUserModelCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'first_name_ar') String? firstNameAr,@JsonKey(name: 'last_name_ar') String? lastNameAr, String? email, String? phone,@JsonKey(name: 'kyc_status') String kycStatus
});




}
/// @nodoc
class __$AuthUserModelCopyWithImpl<$Res>
    implements _$AuthUserModelCopyWith<$Res> {
  __$AuthUserModelCopyWithImpl(this._self, this._then);

  final _AuthUserModel _self;
  final $Res Function(_AuthUserModel) _then;

/// Create a copy of AuthUserModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? firstNameAr = freezed,Object? lastNameAr = freezed,Object? email = freezed,Object? phone = freezed,Object? kycStatus = null,}) {
  return _then(_AuthUserModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,firstNameAr: freezed == firstNameAr ? _self.firstNameAr : firstNameAr // ignore: cast_nullable_to_non_nullable
as String?,lastNameAr: freezed == lastNameAr ? _self.lastNameAr : lastNameAr // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,kycStatus: null == kycStatus ? _self.kycStatus : kycStatus // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$LoginResultModel {

 AuthTokensModel? get tokens; bool get needsEmailVerification; String? get userId;
/// Create a copy of LoginResultModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginResultModelCopyWith<LoginResultModel> get copyWith => _$LoginResultModelCopyWithImpl<LoginResultModel>(this as LoginResultModel, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as LoginResultModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginResultModel&&(identical(other.tokens, _this.tokens) || other.tokens == _this.tokens)&&(identical(other.needsEmailVerification, _this.needsEmailVerification) || other.needsEmailVerification == _this.needsEmailVerification)&&(identical(other.userId, _this.userId) || other.userId == _this.userId));
}


@override
int get hashCode {
  final _this = this as LoginResultModel;
  return Object.hash(runtimeType,_this.tokens,_this.needsEmailVerification,_this.userId);
}

@override
String toString() {
  final _this = this as LoginResultModel;
  return 'LoginResultModel(tokens: ${_this.tokens}, needsEmailVerification: ${_this.needsEmailVerification}, userId: ${_this.userId})';
}


}

/// @nodoc
abstract mixin class $LoginResultModelCopyWith<$Res>  {
  factory $LoginResultModelCopyWith(LoginResultModel value, $Res Function(LoginResultModel) _then) = _$LoginResultModelCopyWithImpl;
@useResult
$Res call({
 AuthTokensModel? tokens, bool needsEmailVerification, String? userId
});


$AuthTokensModelCopyWith<$Res>? get tokens;

}
/// @nodoc
class _$LoginResultModelCopyWithImpl<$Res>
    implements $LoginResultModelCopyWith<$Res> {
  _$LoginResultModelCopyWithImpl(this._self, this._then);

  final LoginResultModel _self;
  final $Res Function(LoginResultModel) _then;

/// Create a copy of LoginResultModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tokens = freezed,Object? needsEmailVerification = null,Object? userId = freezed,}) {
  return _then(LoginResultModel(
tokens: freezed == tokens ? _self.tokens : tokens // ignore: cast_nullable_to_non_nullable
as AuthTokensModel?,needsEmailVerification: null == needsEmailVerification ? _self.needsEmailVerification : needsEmailVerification // ignore: cast_nullable_to_non_nullable
as bool,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of LoginResultModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuthTokensModelCopyWith<$Res>? get tokens {
    if (_self.tokens == null) {
    return null;
  }

  return $AuthTokensModelCopyWith<$Res>(_self.tokens!, (value) {
    return _then(_self.copyWith(tokens: value));
  });
}
}


/// Adds pattern-matching-related methods to [LoginResultModel].
extension LoginResultModelPatterns on LoginResultModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginResultModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginResultModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginResultModel value)  $default,){
final _that = this;
switch (_that) {
case _LoginResultModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginResultModel value)?  $default,){
final _that = this;
switch (_that) {
case _LoginResultModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AuthTokensModel? tokens,  bool needsEmailVerification,  String? userId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginResultModel() when $default != null:
return $default(_that.tokens,_that.needsEmailVerification,_that.userId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AuthTokensModel? tokens,  bool needsEmailVerification,  String? userId)  $default,) {final _that = this;
switch (_that) {
case _LoginResultModel():
return $default(_that.tokens,_that.needsEmailVerification,_that.userId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AuthTokensModel? tokens,  bool needsEmailVerification,  String? userId)?  $default,) {final _that = this;
switch (_that) {
case _LoginResultModel() when $default != null:
return $default(_that.tokens,_that.needsEmailVerification,_that.userId);case _:
  return null;

}
}

}

/// @nodoc


class _LoginResultModel extends LoginResultModel {
  const _LoginResultModel({this.tokens, this.needsEmailVerification = false, this.userId}): super._();
  

@override final  AuthTokensModel? tokens;
@override@JsonKey() final  bool needsEmailVerification;
@override final  String? userId;

/// Create a copy of LoginResultModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginResultModelCopyWith<_LoginResultModel> get copyWith => __$LoginResultModelCopyWithImpl<_LoginResultModel>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginResultModel&&(identical(other.tokens, tokens) || other.tokens == tokens)&&(identical(other.needsEmailVerification, needsEmailVerification) || other.needsEmailVerification == needsEmailVerification)&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode {
    return Object.hash(runtimeType,tokens,needsEmailVerification,userId);
}

@override
String toString() {
    return 'LoginResultModel(tokens: $tokens, needsEmailVerification: $needsEmailVerification, userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$LoginResultModelCopyWith<$Res> implements $LoginResultModelCopyWith<$Res> {
  factory _$LoginResultModelCopyWith(_LoginResultModel value, $Res Function(_LoginResultModel) _then) = __$LoginResultModelCopyWithImpl;
@override @useResult
$Res call({
 AuthTokensModel? tokens, bool needsEmailVerification, String? userId
});


@override $AuthTokensModelCopyWith<$Res>? get tokens;

}
/// @nodoc
class __$LoginResultModelCopyWithImpl<$Res>
    implements _$LoginResultModelCopyWith<$Res> {
  __$LoginResultModelCopyWithImpl(this._self, this._then);

  final _LoginResultModel _self;
  final $Res Function(_LoginResultModel) _then;

/// Create a copy of LoginResultModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tokens = freezed,Object? needsEmailVerification = null,Object? userId = freezed,}) {
  return _then(_LoginResultModel(
tokens: freezed == tokens ? _self.tokens : tokens // ignore: cast_nullable_to_non_nullable
as AuthTokensModel?,needsEmailVerification: null == needsEmailVerification ? _self.needsEmailVerification : needsEmailVerification // ignore: cast_nullable_to_non_nullable
as bool,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of LoginResultModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuthTokensModelCopyWith<$Res>? get tokens {
    if (_self.tokens == null) {
    return null;
  }

  return $AuthTokensModelCopyWith<$Res>(_self.tokens!, (value) {
    return _then(_self.copyWith(tokens: value));
  });
}
}

// dart format on
