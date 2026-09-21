// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'email_recovery_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EmailRecoveryModel {

 String? get id; String? get status;@JsonKey(name: 'status_label') String? get statusLabel;@JsonKey(name: 'new_email_masked') String? get newEmailMasked;@JsonKey(name: 'submitted_at') String? get submittedAt;@JsonKey(name: 'reviewed_at') String? get reviewedAt;@JsonKey(name: 'rejection_reason') String? get rejectionReason;
/// Create a copy of EmailRecoveryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmailRecoveryModelCopyWith<EmailRecoveryModel> get copyWith => _$EmailRecoveryModelCopyWithImpl<EmailRecoveryModel>(this as EmailRecoveryModel, _$identity);

  /// Serializes this EmailRecoveryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as EmailRecoveryModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmailRecoveryModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.statusLabel, _this.statusLabel) || other.statusLabel == _this.statusLabel)&&(identical(other.newEmailMasked, _this.newEmailMasked) || other.newEmailMasked == _this.newEmailMasked)&&(identical(other.submittedAt, _this.submittedAt) || other.submittedAt == _this.submittedAt)&&(identical(other.reviewedAt, _this.reviewedAt) || other.reviewedAt == _this.reviewedAt)&&(identical(other.rejectionReason, _this.rejectionReason) || other.rejectionReason == _this.rejectionReason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as EmailRecoveryModel;
  return Object.hash(runtimeType,_this.id,_this.status,_this.statusLabel,_this.newEmailMasked,_this.submittedAt,_this.reviewedAt,_this.rejectionReason);
}

@override
String toString() {
  final _this = this as EmailRecoveryModel;
  return 'EmailRecoveryModel(id: ${_this.id}, status: ${_this.status}, statusLabel: ${_this.statusLabel}, newEmailMasked: ${_this.newEmailMasked}, submittedAt: ${_this.submittedAt}, reviewedAt: ${_this.reviewedAt}, rejectionReason: ${_this.rejectionReason})';
}


}

/// @nodoc
abstract mixin class $EmailRecoveryModelCopyWith<$Res>  {
  factory $EmailRecoveryModelCopyWith(EmailRecoveryModel value, $Res Function(EmailRecoveryModel) _then) = _$EmailRecoveryModelCopyWithImpl;
@useResult
$Res call({
 String? id, String? status,@JsonKey(name: 'status_label') String? statusLabel,@JsonKey(name: 'new_email_masked') String? newEmailMasked,@JsonKey(name: 'submitted_at') String? submittedAt,@JsonKey(name: 'reviewed_at') String? reviewedAt,@JsonKey(name: 'rejection_reason') String? rejectionReason
});




}
/// @nodoc
class _$EmailRecoveryModelCopyWithImpl<$Res>
    implements $EmailRecoveryModelCopyWith<$Res> {
  _$EmailRecoveryModelCopyWithImpl(this._self, this._then);

  final EmailRecoveryModel _self;
  final $Res Function(EmailRecoveryModel) _then;

/// Create a copy of EmailRecoveryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? status = freezed,Object? statusLabel = freezed,Object? newEmailMasked = freezed,Object? submittedAt = freezed,Object? reviewedAt = freezed,Object? rejectionReason = freezed,}) {
  return _then(EmailRecoveryModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,statusLabel: freezed == statusLabel ? _self.statusLabel : statusLabel // ignore: cast_nullable_to_non_nullable
as String?,newEmailMasked: freezed == newEmailMasked ? _self.newEmailMasked : newEmailMasked // ignore: cast_nullable_to_non_nullable
as String?,submittedAt: freezed == submittedAt ? _self.submittedAt : submittedAt // ignore: cast_nullable_to_non_nullable
as String?,reviewedAt: freezed == reviewedAt ? _self.reviewedAt : reviewedAt // ignore: cast_nullable_to_non_nullable
as String?,rejectionReason: freezed == rejectionReason ? _self.rejectionReason : rejectionReason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [EmailRecoveryModel].
extension EmailRecoveryModelPatterns on EmailRecoveryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EmailRecoveryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EmailRecoveryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EmailRecoveryModel value)  $default,){
final _that = this;
switch (_that) {
case _EmailRecoveryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EmailRecoveryModel value)?  $default,){
final _that = this;
switch (_that) {
case _EmailRecoveryModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? status, @JsonKey(name: 'status_label')  String? statusLabel, @JsonKey(name: 'new_email_masked')  String? newEmailMasked, @JsonKey(name: 'submitted_at')  String? submittedAt, @JsonKey(name: 'reviewed_at')  String? reviewedAt, @JsonKey(name: 'rejection_reason')  String? rejectionReason)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EmailRecoveryModel() when $default != null:
return $default(_that.id,_that.status,_that.statusLabel,_that.newEmailMasked,_that.submittedAt,_that.reviewedAt,_that.rejectionReason);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? status, @JsonKey(name: 'status_label')  String? statusLabel, @JsonKey(name: 'new_email_masked')  String? newEmailMasked, @JsonKey(name: 'submitted_at')  String? submittedAt, @JsonKey(name: 'reviewed_at')  String? reviewedAt, @JsonKey(name: 'rejection_reason')  String? rejectionReason)  $default,) {final _that = this;
switch (_that) {
case _EmailRecoveryModel():
return $default(_that.id,_that.status,_that.statusLabel,_that.newEmailMasked,_that.submittedAt,_that.reviewedAt,_that.rejectionReason);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? status, @JsonKey(name: 'status_label')  String? statusLabel, @JsonKey(name: 'new_email_masked')  String? newEmailMasked, @JsonKey(name: 'submitted_at')  String? submittedAt, @JsonKey(name: 'reviewed_at')  String? reviewedAt, @JsonKey(name: 'rejection_reason')  String? rejectionReason)?  $default,) {final _that = this;
switch (_that) {
case _EmailRecoveryModel() when $default != null:
return $default(_that.id,_that.status,_that.statusLabel,_that.newEmailMasked,_that.submittedAt,_that.reviewedAt,_that.rejectionReason);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EmailRecoveryModel extends EmailRecoveryModel {
  const _EmailRecoveryModel({this.id, this.status, @JsonKey(name: 'status_label') this.statusLabel, @JsonKey(name: 'new_email_masked') this.newEmailMasked, @JsonKey(name: 'submitted_at') this.submittedAt, @JsonKey(name: 'reviewed_at') this.reviewedAt, @JsonKey(name: 'rejection_reason') this.rejectionReason}): super._();
  factory _EmailRecoveryModel.fromJson(Map<String, dynamic> json) => _$EmailRecoveryModelFromJson(json);

@override final  String? id;
@override final  String? status;
@override@JsonKey(name: 'status_label') final  String? statusLabel;
@override@JsonKey(name: 'new_email_masked') final  String? newEmailMasked;
@override@JsonKey(name: 'submitted_at') final  String? submittedAt;
@override@JsonKey(name: 'reviewed_at') final  String? reviewedAt;
@override@JsonKey(name: 'rejection_reason') final  String? rejectionReason;

/// Create a copy of EmailRecoveryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmailRecoveryModelCopyWith<_EmailRecoveryModel> get copyWith => __$EmailRecoveryModelCopyWithImpl<_EmailRecoveryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EmailRecoveryModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmailRecoveryModel&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&(identical(other.statusLabel, statusLabel) || other.statusLabel == statusLabel)&&(identical(other.newEmailMasked, newEmailMasked) || other.newEmailMasked == newEmailMasked)&&(identical(other.submittedAt, submittedAt) || other.submittedAt == submittedAt)&&(identical(other.reviewedAt, reviewedAt) || other.reviewedAt == reviewedAt)&&(identical(other.rejectionReason, rejectionReason) || other.rejectionReason == rejectionReason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,status,statusLabel,newEmailMasked,submittedAt,reviewedAt,rejectionReason);
}

@override
String toString() {
    return 'EmailRecoveryModel(id: $id, status: $status, statusLabel: $statusLabel, newEmailMasked: $newEmailMasked, submittedAt: $submittedAt, reviewedAt: $reviewedAt, rejectionReason: $rejectionReason)';
}


}

/// @nodoc
abstract mixin class _$EmailRecoveryModelCopyWith<$Res> implements $EmailRecoveryModelCopyWith<$Res> {
  factory _$EmailRecoveryModelCopyWith(_EmailRecoveryModel value, $Res Function(_EmailRecoveryModel) _then) = __$EmailRecoveryModelCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? status,@JsonKey(name: 'status_label') String? statusLabel,@JsonKey(name: 'new_email_masked') String? newEmailMasked,@JsonKey(name: 'submitted_at') String? submittedAt,@JsonKey(name: 'reviewed_at') String? reviewedAt,@JsonKey(name: 'rejection_reason') String? rejectionReason
});




}
/// @nodoc
class __$EmailRecoveryModelCopyWithImpl<$Res>
    implements _$EmailRecoveryModelCopyWith<$Res> {
  __$EmailRecoveryModelCopyWithImpl(this._self, this._then);

  final _EmailRecoveryModel _self;
  final $Res Function(_EmailRecoveryModel) _then;

/// Create a copy of EmailRecoveryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? status = freezed,Object? statusLabel = freezed,Object? newEmailMasked = freezed,Object? submittedAt = freezed,Object? reviewedAt = freezed,Object? rejectionReason = freezed,}) {
  return _then(_EmailRecoveryModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,statusLabel: freezed == statusLabel ? _self.statusLabel : statusLabel // ignore: cast_nullable_to_non_nullable
as String?,newEmailMasked: freezed == newEmailMasked ? _self.newEmailMasked : newEmailMasked // ignore: cast_nullable_to_non_nullable
as String?,submittedAt: freezed == submittedAt ? _self.submittedAt : submittedAt // ignore: cast_nullable_to_non_nullable
as String?,reviewedAt: freezed == reviewedAt ? _self.reviewedAt : reviewedAt // ignore: cast_nullable_to_non_nullable
as String?,rejectionReason: freezed == rejectionReason ? _self.rejectionReason : rejectionReason // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
