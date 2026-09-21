// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'commercial_register_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CrDocumentsModel {

 bool get register;@JsonKey(name: 'tax-card') bool get taxCard;
/// Create a copy of CrDocumentsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CrDocumentsModelCopyWith<CrDocumentsModel> get copyWith => _$CrDocumentsModelCopyWithImpl<CrDocumentsModel>(this as CrDocumentsModel, _$identity);

  /// Serializes this CrDocumentsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CrDocumentsModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CrDocumentsModel&&(identical(other.register, _this.register) || other.register == _this.register)&&(identical(other.taxCard, _this.taxCard) || other.taxCard == _this.taxCard));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CrDocumentsModel;
  return Object.hash(runtimeType,_this.register,_this.taxCard);
}

@override
String toString() {
  final _this = this as CrDocumentsModel;
  return 'CrDocumentsModel(register: ${_this.register}, taxCard: ${_this.taxCard})';
}


}

/// @nodoc
abstract mixin class $CrDocumentsModelCopyWith<$Res>  {
  factory $CrDocumentsModelCopyWith(CrDocumentsModel value, $Res Function(CrDocumentsModel) _then) = _$CrDocumentsModelCopyWithImpl;
@useResult
$Res call({
 bool register,@JsonKey(name: 'tax-card') bool taxCard
});




}
/// @nodoc
class _$CrDocumentsModelCopyWithImpl<$Res>
    implements $CrDocumentsModelCopyWith<$Res> {
  _$CrDocumentsModelCopyWithImpl(this._self, this._then);

  final CrDocumentsModel _self;
  final $Res Function(CrDocumentsModel) _then;

/// Create a copy of CrDocumentsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? register = null,Object? taxCard = null,}) {
  return _then(CrDocumentsModel(
register: null == register ? _self.register : register // ignore: cast_nullable_to_non_nullable
as bool,taxCard: null == taxCard ? _self.taxCard : taxCard // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [CrDocumentsModel].
extension CrDocumentsModelPatterns on CrDocumentsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CrDocumentsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CrDocumentsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CrDocumentsModel value)  $default,){
final _that = this;
switch (_that) {
case _CrDocumentsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CrDocumentsModel value)?  $default,){
final _that = this;
switch (_that) {
case _CrDocumentsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool register, @JsonKey(name: 'tax-card')  bool taxCard)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CrDocumentsModel() when $default != null:
return $default(_that.register,_that.taxCard);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool register, @JsonKey(name: 'tax-card')  bool taxCard)  $default,) {final _that = this;
switch (_that) {
case _CrDocumentsModel():
return $default(_that.register,_that.taxCard);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool register, @JsonKey(name: 'tax-card')  bool taxCard)?  $default,) {final _that = this;
switch (_that) {
case _CrDocumentsModel() when $default != null:
return $default(_that.register,_that.taxCard);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CrDocumentsModel implements CrDocumentsModel {
  const _CrDocumentsModel({this.register = false, @JsonKey(name: 'tax-card') this.taxCard = false});
  factory _CrDocumentsModel.fromJson(Map<String, dynamic> json) => _$CrDocumentsModelFromJson(json);

@override@JsonKey() final  bool register;
@override@JsonKey(name: 'tax-card') final  bool taxCard;

/// Create a copy of CrDocumentsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CrDocumentsModelCopyWith<_CrDocumentsModel> get copyWith => __$CrDocumentsModelCopyWithImpl<_CrDocumentsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CrDocumentsModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CrDocumentsModel&&(identical(other.register, register) || other.register == register)&&(identical(other.taxCard, taxCard) || other.taxCard == taxCard));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,register,taxCard);
}

@override
String toString() {
    return 'CrDocumentsModel(register: $register, taxCard: $taxCard)';
}


}

/// @nodoc
abstract mixin class _$CrDocumentsModelCopyWith<$Res> implements $CrDocumentsModelCopyWith<$Res> {
  factory _$CrDocumentsModelCopyWith(_CrDocumentsModel value, $Res Function(_CrDocumentsModel) _then) = __$CrDocumentsModelCopyWithImpl;
@override @useResult
$Res call({
 bool register,@JsonKey(name: 'tax-card') bool taxCard
});




}
/// @nodoc
class __$CrDocumentsModelCopyWithImpl<$Res>
    implements _$CrDocumentsModelCopyWith<$Res> {
  __$CrDocumentsModelCopyWithImpl(this._self, this._then);

  final _CrDocumentsModel _self;
  final $Res Function(_CrDocumentsModel) _then;

/// Create a copy of CrDocumentsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? register = null,Object? taxCard = null,}) {
  return _then(_CrDocumentsModel(
register: null == register ? _self.register : register // ignore: cast_nullable_to_non_nullable
as bool,taxCard: null == taxCard ? _self.taxCard : taxCard // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$CommercialRegisterModel {

 String? get status;@JsonKey(name: 'company_name') String? get companyName;@JsonKey(name: 'register_number') String? get registerNumber;@JsonKey(name: 'tax_number') String? get taxNumber;@JsonKey(name: 'activity_type') String? get activityType;@JsonKey(name: 'start_date') String? get startDate;@JsonKey(name: 'rejection_reason') String? get rejectionReason;@JsonKey(name: 'submitted_at') String? get submittedAt;@JsonKey(name: 'reviewed_at') String? get reviewedAt;@JsonKey(name: 'can_submit') bool get canSubmit;@JsonKey(name: 'is_valid') bool get isValid; CrDocumentsModel? get documents;
/// Create a copy of CommercialRegisterModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommercialRegisterModelCopyWith<CommercialRegisterModel> get copyWith => _$CommercialRegisterModelCopyWithImpl<CommercialRegisterModel>(this as CommercialRegisterModel, _$identity);

  /// Serializes this CommercialRegisterModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CommercialRegisterModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommercialRegisterModel&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.companyName, _this.companyName) || other.companyName == _this.companyName)&&(identical(other.registerNumber, _this.registerNumber) || other.registerNumber == _this.registerNumber)&&(identical(other.taxNumber, _this.taxNumber) || other.taxNumber == _this.taxNumber)&&(identical(other.activityType, _this.activityType) || other.activityType == _this.activityType)&&(identical(other.startDate, _this.startDate) || other.startDate == _this.startDate)&&(identical(other.rejectionReason, _this.rejectionReason) || other.rejectionReason == _this.rejectionReason)&&(identical(other.submittedAt, _this.submittedAt) || other.submittedAt == _this.submittedAt)&&(identical(other.reviewedAt, _this.reviewedAt) || other.reviewedAt == _this.reviewedAt)&&(identical(other.canSubmit, _this.canSubmit) || other.canSubmit == _this.canSubmit)&&(identical(other.isValid, _this.isValid) || other.isValid == _this.isValid)&&(identical(other.documents, _this.documents) || other.documents == _this.documents));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CommercialRegisterModel;
  return Object.hash(runtimeType,_this.status,_this.companyName,_this.registerNumber,_this.taxNumber,_this.activityType,_this.startDate,_this.rejectionReason,_this.submittedAt,_this.reviewedAt,_this.canSubmit,_this.isValid,_this.documents);
}

@override
String toString() {
  final _this = this as CommercialRegisterModel;
  return 'CommercialRegisterModel(status: ${_this.status}, companyName: ${_this.companyName}, registerNumber: ${_this.registerNumber}, taxNumber: ${_this.taxNumber}, activityType: ${_this.activityType}, startDate: ${_this.startDate}, rejectionReason: ${_this.rejectionReason}, submittedAt: ${_this.submittedAt}, reviewedAt: ${_this.reviewedAt}, canSubmit: ${_this.canSubmit}, isValid: ${_this.isValid}, documents: ${_this.documents})';
}


}

/// @nodoc
abstract mixin class $CommercialRegisterModelCopyWith<$Res>  {
  factory $CommercialRegisterModelCopyWith(CommercialRegisterModel value, $Res Function(CommercialRegisterModel) _then) = _$CommercialRegisterModelCopyWithImpl;
@useResult
$Res call({
 String? status,@JsonKey(name: 'company_name') String? companyName,@JsonKey(name: 'register_number') String? registerNumber,@JsonKey(name: 'tax_number') String? taxNumber,@JsonKey(name: 'activity_type') String? activityType,@JsonKey(name: 'start_date') String? startDate,@JsonKey(name: 'rejection_reason') String? rejectionReason,@JsonKey(name: 'submitted_at') String? submittedAt,@JsonKey(name: 'reviewed_at') String? reviewedAt,@JsonKey(name: 'can_submit') bool canSubmit,@JsonKey(name: 'is_valid') bool isValid, CrDocumentsModel? documents
});


$CrDocumentsModelCopyWith<$Res>? get documents;

}
/// @nodoc
class _$CommercialRegisterModelCopyWithImpl<$Res>
    implements $CommercialRegisterModelCopyWith<$Res> {
  _$CommercialRegisterModelCopyWithImpl(this._self, this._then);

  final CommercialRegisterModel _self;
  final $Res Function(CommercialRegisterModel) _then;

/// Create a copy of CommercialRegisterModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = freezed,Object? companyName = freezed,Object? registerNumber = freezed,Object? taxNumber = freezed,Object? activityType = freezed,Object? startDate = freezed,Object? rejectionReason = freezed,Object? submittedAt = freezed,Object? reviewedAt = freezed,Object? canSubmit = null,Object? isValid = null,Object? documents = freezed,}) {
  return _then(CommercialRegisterModel(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,companyName: freezed == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String?,registerNumber: freezed == registerNumber ? _self.registerNumber : registerNumber // ignore: cast_nullable_to_non_nullable
as String?,taxNumber: freezed == taxNumber ? _self.taxNumber : taxNumber // ignore: cast_nullable_to_non_nullable
as String?,activityType: freezed == activityType ? _self.activityType : activityType // ignore: cast_nullable_to_non_nullable
as String?,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String?,rejectionReason: freezed == rejectionReason ? _self.rejectionReason : rejectionReason // ignore: cast_nullable_to_non_nullable
as String?,submittedAt: freezed == submittedAt ? _self.submittedAt : submittedAt // ignore: cast_nullable_to_non_nullable
as String?,reviewedAt: freezed == reviewedAt ? _self.reviewedAt : reviewedAt // ignore: cast_nullable_to_non_nullable
as String?,canSubmit: null == canSubmit ? _self.canSubmit : canSubmit // ignore: cast_nullable_to_non_nullable
as bool,isValid: null == isValid ? _self.isValid : isValid // ignore: cast_nullable_to_non_nullable
as bool,documents: freezed == documents ? _self.documents : documents // ignore: cast_nullable_to_non_nullable
as CrDocumentsModel?,
  ));
}
/// Create a copy of CommercialRegisterModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CrDocumentsModelCopyWith<$Res>? get documents {
    if (_self.documents == null) {
    return null;
  }

  return $CrDocumentsModelCopyWith<$Res>(_self.documents!, (value) {
    return _then(_self.copyWith(documents: value));
  });
}
}


/// Adds pattern-matching-related methods to [CommercialRegisterModel].
extension CommercialRegisterModelPatterns on CommercialRegisterModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CommercialRegisterModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CommercialRegisterModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CommercialRegisterModel value)  $default,){
final _that = this;
switch (_that) {
case _CommercialRegisterModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CommercialRegisterModel value)?  $default,){
final _that = this;
switch (_that) {
case _CommercialRegisterModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? status, @JsonKey(name: 'company_name')  String? companyName, @JsonKey(name: 'register_number')  String? registerNumber, @JsonKey(name: 'tax_number')  String? taxNumber, @JsonKey(name: 'activity_type')  String? activityType, @JsonKey(name: 'start_date')  String? startDate, @JsonKey(name: 'rejection_reason')  String? rejectionReason, @JsonKey(name: 'submitted_at')  String? submittedAt, @JsonKey(name: 'reviewed_at')  String? reviewedAt, @JsonKey(name: 'can_submit')  bool canSubmit, @JsonKey(name: 'is_valid')  bool isValid,  CrDocumentsModel? documents)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CommercialRegisterModel() when $default != null:
return $default(_that.status,_that.companyName,_that.registerNumber,_that.taxNumber,_that.activityType,_that.startDate,_that.rejectionReason,_that.submittedAt,_that.reviewedAt,_that.canSubmit,_that.isValid,_that.documents);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? status, @JsonKey(name: 'company_name')  String? companyName, @JsonKey(name: 'register_number')  String? registerNumber, @JsonKey(name: 'tax_number')  String? taxNumber, @JsonKey(name: 'activity_type')  String? activityType, @JsonKey(name: 'start_date')  String? startDate, @JsonKey(name: 'rejection_reason')  String? rejectionReason, @JsonKey(name: 'submitted_at')  String? submittedAt, @JsonKey(name: 'reviewed_at')  String? reviewedAt, @JsonKey(name: 'can_submit')  bool canSubmit, @JsonKey(name: 'is_valid')  bool isValid,  CrDocumentsModel? documents)  $default,) {final _that = this;
switch (_that) {
case _CommercialRegisterModel():
return $default(_that.status,_that.companyName,_that.registerNumber,_that.taxNumber,_that.activityType,_that.startDate,_that.rejectionReason,_that.submittedAt,_that.reviewedAt,_that.canSubmit,_that.isValid,_that.documents);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? status, @JsonKey(name: 'company_name')  String? companyName, @JsonKey(name: 'register_number')  String? registerNumber, @JsonKey(name: 'tax_number')  String? taxNumber, @JsonKey(name: 'activity_type')  String? activityType, @JsonKey(name: 'start_date')  String? startDate, @JsonKey(name: 'rejection_reason')  String? rejectionReason, @JsonKey(name: 'submitted_at')  String? submittedAt, @JsonKey(name: 'reviewed_at')  String? reviewedAt, @JsonKey(name: 'can_submit')  bool canSubmit, @JsonKey(name: 'is_valid')  bool isValid,  CrDocumentsModel? documents)?  $default,) {final _that = this;
switch (_that) {
case _CommercialRegisterModel() when $default != null:
return $default(_that.status,_that.companyName,_that.registerNumber,_that.taxNumber,_that.activityType,_that.startDate,_that.rejectionReason,_that.submittedAt,_that.reviewedAt,_that.canSubmit,_that.isValid,_that.documents);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CommercialRegisterModel extends CommercialRegisterModel {
  const _CommercialRegisterModel({this.status, @JsonKey(name: 'company_name') this.companyName, @JsonKey(name: 'register_number') this.registerNumber, @JsonKey(name: 'tax_number') this.taxNumber, @JsonKey(name: 'activity_type') this.activityType, @JsonKey(name: 'start_date') this.startDate, @JsonKey(name: 'rejection_reason') this.rejectionReason, @JsonKey(name: 'submitted_at') this.submittedAt, @JsonKey(name: 'reviewed_at') this.reviewedAt, @JsonKey(name: 'can_submit') this.canSubmit = true, @JsonKey(name: 'is_valid') this.isValid = false, this.documents}): super._();
  factory _CommercialRegisterModel.fromJson(Map<String, dynamic> json) => _$CommercialRegisterModelFromJson(json);

@override final  String? status;
@override@JsonKey(name: 'company_name') final  String? companyName;
@override@JsonKey(name: 'register_number') final  String? registerNumber;
@override@JsonKey(name: 'tax_number') final  String? taxNumber;
@override@JsonKey(name: 'activity_type') final  String? activityType;
@override@JsonKey(name: 'start_date') final  String? startDate;
@override@JsonKey(name: 'rejection_reason') final  String? rejectionReason;
@override@JsonKey(name: 'submitted_at') final  String? submittedAt;
@override@JsonKey(name: 'reviewed_at') final  String? reviewedAt;
@override@JsonKey(name: 'can_submit') final  bool canSubmit;
@override@JsonKey(name: 'is_valid') final  bool isValid;
@override final  CrDocumentsModel? documents;

/// Create a copy of CommercialRegisterModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CommercialRegisterModelCopyWith<_CommercialRegisterModel> get copyWith => __$CommercialRegisterModelCopyWithImpl<_CommercialRegisterModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CommercialRegisterModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CommercialRegisterModel&&(identical(other.status, status) || other.status == status)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.registerNumber, registerNumber) || other.registerNumber == registerNumber)&&(identical(other.taxNumber, taxNumber) || other.taxNumber == taxNumber)&&(identical(other.activityType, activityType) || other.activityType == activityType)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.rejectionReason, rejectionReason) || other.rejectionReason == rejectionReason)&&(identical(other.submittedAt, submittedAt) || other.submittedAt == submittedAt)&&(identical(other.reviewedAt, reviewedAt) || other.reviewedAt == reviewedAt)&&(identical(other.canSubmit, canSubmit) || other.canSubmit == canSubmit)&&(identical(other.isValid, isValid) || other.isValid == isValid)&&(identical(other.documents, documents) || other.documents == documents));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,status,companyName,registerNumber,taxNumber,activityType,startDate,rejectionReason,submittedAt,reviewedAt,canSubmit,isValid,documents);
}

@override
String toString() {
    return 'CommercialRegisterModel(status: $status, companyName: $companyName, registerNumber: $registerNumber, taxNumber: $taxNumber, activityType: $activityType, startDate: $startDate, rejectionReason: $rejectionReason, submittedAt: $submittedAt, reviewedAt: $reviewedAt, canSubmit: $canSubmit, isValid: $isValid, documents: $documents)';
}


}

/// @nodoc
abstract mixin class _$CommercialRegisterModelCopyWith<$Res> implements $CommercialRegisterModelCopyWith<$Res> {
  factory _$CommercialRegisterModelCopyWith(_CommercialRegisterModel value, $Res Function(_CommercialRegisterModel) _then) = __$CommercialRegisterModelCopyWithImpl;
@override @useResult
$Res call({
 String? status,@JsonKey(name: 'company_name') String? companyName,@JsonKey(name: 'register_number') String? registerNumber,@JsonKey(name: 'tax_number') String? taxNumber,@JsonKey(name: 'activity_type') String? activityType,@JsonKey(name: 'start_date') String? startDate,@JsonKey(name: 'rejection_reason') String? rejectionReason,@JsonKey(name: 'submitted_at') String? submittedAt,@JsonKey(name: 'reviewed_at') String? reviewedAt,@JsonKey(name: 'can_submit') bool canSubmit,@JsonKey(name: 'is_valid') bool isValid, CrDocumentsModel? documents
});


@override $CrDocumentsModelCopyWith<$Res>? get documents;

}
/// @nodoc
class __$CommercialRegisterModelCopyWithImpl<$Res>
    implements _$CommercialRegisterModelCopyWith<$Res> {
  __$CommercialRegisterModelCopyWithImpl(this._self, this._then);

  final _CommercialRegisterModel _self;
  final $Res Function(_CommercialRegisterModel) _then;

/// Create a copy of CommercialRegisterModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = freezed,Object? companyName = freezed,Object? registerNumber = freezed,Object? taxNumber = freezed,Object? activityType = freezed,Object? startDate = freezed,Object? rejectionReason = freezed,Object? submittedAt = freezed,Object? reviewedAt = freezed,Object? canSubmit = null,Object? isValid = null,Object? documents = freezed,}) {
  return _then(_CommercialRegisterModel(
status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,companyName: freezed == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String?,registerNumber: freezed == registerNumber ? _self.registerNumber : registerNumber // ignore: cast_nullable_to_non_nullable
as String?,taxNumber: freezed == taxNumber ? _self.taxNumber : taxNumber // ignore: cast_nullable_to_non_nullable
as String?,activityType: freezed == activityType ? _self.activityType : activityType // ignore: cast_nullable_to_non_nullable
as String?,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String?,rejectionReason: freezed == rejectionReason ? _self.rejectionReason : rejectionReason // ignore: cast_nullable_to_non_nullable
as String?,submittedAt: freezed == submittedAt ? _self.submittedAt : submittedAt // ignore: cast_nullable_to_non_nullable
as String?,reviewedAt: freezed == reviewedAt ? _self.reviewedAt : reviewedAt // ignore: cast_nullable_to_non_nullable
as String?,canSubmit: null == canSubmit ? _self.canSubmit : canSubmit // ignore: cast_nullable_to_non_nullable
as bool,isValid: null == isValid ? _self.isValid : isValid // ignore: cast_nullable_to_non_nullable
as bool,documents: freezed == documents ? _self.documents : documents // ignore: cast_nullable_to_non_nullable
as CrDocumentsModel?,
  ));
}

/// Create a copy of CommercialRegisterModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CrDocumentsModelCopyWith<$Res>? get documents {
    if (_self.documents == null) {
    return null;
  }

  return $CrDocumentsModelCopyWith<$Res>(_self.documents!, (value) {
    return _then(_self.copyWith(documents: value));
  });
}
}

// dart format on
