// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'email_recovery_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EmailRecoveryFormState {

 EmailRecoveryStep get step; NinInput get nin; BirthDateInput get birthDate; PhoneInput get phone; EmailInput get newEmail;/// مسار صورة السيلفي مع بطاقة الهوية على الجهاز.
 String? get selfiePath; bool get isSubmitting;/// نتيجة الطلب (بعد الإرسال أو من متابعة الحالة).
 EmailRecoveryRequest? get request; String? get errorMessage; Map<String, List<String>>? get serverErrors;
/// Create a copy of EmailRecoveryFormState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmailRecoveryFormStateCopyWith<EmailRecoveryFormState> get copyWith => _$EmailRecoveryFormStateCopyWithImpl<EmailRecoveryFormState>(this as EmailRecoveryFormState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as EmailRecoveryFormState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmailRecoveryFormState&&(identical(other.step, _this.step) || other.step == _this.step)&&(identical(other.nin, _this.nin) || other.nin == _this.nin)&&(identical(other.birthDate, _this.birthDate) || other.birthDate == _this.birthDate)&&(identical(other.phone, _this.phone) || other.phone == _this.phone)&&(identical(other.newEmail, _this.newEmail) || other.newEmail == _this.newEmail)&&(identical(other.selfiePath, _this.selfiePath) || other.selfiePath == _this.selfiePath)&&(identical(other.isSubmitting, _this.isSubmitting) || other.isSubmitting == _this.isSubmitting)&&(identical(other.request, _this.request) || other.request == _this.request)&&(identical(other.errorMessage, _this.errorMessage) || other.errorMessage == _this.errorMessage)&&const DeepCollectionEquality().equals(other.serverErrors, _this.serverErrors));
}


@override
int get hashCode {
  final _this = this as EmailRecoveryFormState;
  return Object.hash(runtimeType,_this.step,_this.nin,_this.birthDate,_this.phone,_this.newEmail,_this.selfiePath,_this.isSubmitting,_this.request,_this.errorMessage,const DeepCollectionEquality().hash(_this.serverErrors));
}

@override
String toString() {
  final _this = this as EmailRecoveryFormState;
  return 'EmailRecoveryFormState(step: ${_this.step}, nin: ${_this.nin}, birthDate: ${_this.birthDate}, phone: ${_this.phone}, newEmail: ${_this.newEmail}, selfiePath: ${_this.selfiePath}, isSubmitting: ${_this.isSubmitting}, request: ${_this.request}, errorMessage: ${_this.errorMessage}, serverErrors: ${_this.serverErrors})';
}


}

/// @nodoc
abstract mixin class $EmailRecoveryFormStateCopyWith<$Res>  {
  factory $EmailRecoveryFormStateCopyWith(EmailRecoveryFormState value, $Res Function(EmailRecoveryFormState) _then) = _$EmailRecoveryFormStateCopyWithImpl;
@useResult
$Res call({
 EmailRecoveryStep step, NinInput nin, BirthDateInput birthDate, PhoneInput phone, EmailInput newEmail, String? selfiePath, bool isSubmitting, EmailRecoveryRequest? request, String? errorMessage, Map<String, List<String>>? serverErrors
});




}
/// @nodoc
class _$EmailRecoveryFormStateCopyWithImpl<$Res>
    implements $EmailRecoveryFormStateCopyWith<$Res> {
  _$EmailRecoveryFormStateCopyWithImpl(this._self, this._then);

  final EmailRecoveryFormState _self;
  final $Res Function(EmailRecoveryFormState) _then;

/// Create a copy of EmailRecoveryFormState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? step = null,Object? nin = null,Object? birthDate = null,Object? phone = null,Object? newEmail = null,Object? selfiePath = freezed,Object? isSubmitting = null,Object? request = freezed,Object? errorMessage = freezed,Object? serverErrors = freezed,}) {
  return _then(EmailRecoveryFormState(
step: null == step ? _self.step : step // ignore: cast_nullable_to_non_nullable
as EmailRecoveryStep,nin: null == nin ? _self.nin : nin // ignore: cast_nullable_to_non_nullable
as NinInput,birthDate: null == birthDate ? _self.birthDate : birthDate // ignore: cast_nullable_to_non_nullable
as BirthDateInput,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as PhoneInput,newEmail: null == newEmail ? _self.newEmail : newEmail // ignore: cast_nullable_to_non_nullable
as EmailInput,selfiePath: freezed == selfiePath ? _self.selfiePath : selfiePath // ignore: cast_nullable_to_non_nullable
as String?,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,request: freezed == request ? _self.request : request // ignore: cast_nullable_to_non_nullable
as EmailRecoveryRequest?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,serverErrors: freezed == serverErrors ? _self.serverErrors : serverErrors // ignore: cast_nullable_to_non_nullable
as Map<String, List<String>>?,
  ));
}

}


/// Adds pattern-matching-related methods to [EmailRecoveryFormState].
extension EmailRecoveryFormStatePatterns on EmailRecoveryFormState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EmailRecoveryFormState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EmailRecoveryFormState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EmailRecoveryFormState value)  $default,){
final _that = this;
switch (_that) {
case _EmailRecoveryFormState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EmailRecoveryFormState value)?  $default,){
final _that = this;
switch (_that) {
case _EmailRecoveryFormState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( EmailRecoveryStep step,  NinInput nin,  BirthDateInput birthDate,  PhoneInput phone,  EmailInput newEmail,  String? selfiePath,  bool isSubmitting,  EmailRecoveryRequest? request,  String? errorMessage,  Map<String, List<String>>? serverErrors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EmailRecoveryFormState() when $default != null:
return $default(_that.step,_that.nin,_that.birthDate,_that.phone,_that.newEmail,_that.selfiePath,_that.isSubmitting,_that.request,_that.errorMessage,_that.serverErrors);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( EmailRecoveryStep step,  NinInput nin,  BirthDateInput birthDate,  PhoneInput phone,  EmailInput newEmail,  String? selfiePath,  bool isSubmitting,  EmailRecoveryRequest? request,  String? errorMessage,  Map<String, List<String>>? serverErrors)  $default,) {final _that = this;
switch (_that) {
case _EmailRecoveryFormState():
return $default(_that.step,_that.nin,_that.birthDate,_that.phone,_that.newEmail,_that.selfiePath,_that.isSubmitting,_that.request,_that.errorMessage,_that.serverErrors);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( EmailRecoveryStep step,  NinInput nin,  BirthDateInput birthDate,  PhoneInput phone,  EmailInput newEmail,  String? selfiePath,  bool isSubmitting,  EmailRecoveryRequest? request,  String? errorMessage,  Map<String, List<String>>? serverErrors)?  $default,) {final _that = this;
switch (_that) {
case _EmailRecoveryFormState() when $default != null:
return $default(_that.step,_that.nin,_that.birthDate,_that.phone,_that.newEmail,_that.selfiePath,_that.isSubmitting,_that.request,_that.errorMessage,_that.serverErrors);case _:
  return null;

}
}

}

/// @nodoc


class _EmailRecoveryFormState extends EmailRecoveryFormState {
  const _EmailRecoveryFormState({this.step = EmailRecoveryStep.form, this.nin = const NinInput.pure(), this.birthDate = const BirthDateInput.pure(), this.phone = const PhoneInput.pure(), this.newEmail = const EmailInput.pure(), this.selfiePath, this.isSubmitting = false, this.request, this.errorMessage,  Map<String, List<String>>? serverErrors}): _serverErrors = serverErrors,super._();
  

@override@JsonKey() final  EmailRecoveryStep step;
@override@JsonKey() final  NinInput nin;
@override@JsonKey() final  BirthDateInput birthDate;
@override@JsonKey() final  PhoneInput phone;
@override@JsonKey() final  EmailInput newEmail;
/// مسار صورة السيلفي مع بطاقة الهوية على الجهاز.
@override final  String? selfiePath;
@override@JsonKey() final  bool isSubmitting;
/// نتيجة الطلب (بعد الإرسال أو من متابعة الحالة).
@override final  EmailRecoveryRequest? request;
@override final  String? errorMessage;
 final  Map<String, List<String>>? _serverErrors;
@override Map<String, List<String>>? get serverErrors {
  final value = _serverErrors;
  if (value == null) return null;
  if (_serverErrors is EqualUnmodifiableMapView) return _serverErrors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of EmailRecoveryFormState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmailRecoveryFormStateCopyWith<_EmailRecoveryFormState> get copyWith => __$EmailRecoveryFormStateCopyWithImpl<_EmailRecoveryFormState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmailRecoveryFormState&&(identical(other.step, step) || other.step == step)&&(identical(other.nin, nin) || other.nin == nin)&&(identical(other.birthDate, birthDate) || other.birthDate == birthDate)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.newEmail, newEmail) || other.newEmail == newEmail)&&(identical(other.selfiePath, selfiePath) || other.selfiePath == selfiePath)&&(identical(other.isSubmitting, isSubmitting) || other.isSubmitting == isSubmitting)&&(identical(other.request, request) || other.request == request)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&const DeepCollectionEquality().equals(other.serverErrors, _serverErrors));
}


@override
int get hashCode {
    return Object.hash(runtimeType,step,nin,birthDate,phone,newEmail,selfiePath,isSubmitting,request,errorMessage,const DeepCollectionEquality().hash(_serverErrors));
}

@override
String toString() {
    return 'EmailRecoveryFormState(step: $step, nin: $nin, birthDate: $birthDate, phone: $phone, newEmail: $newEmail, selfiePath: $selfiePath, isSubmitting: $isSubmitting, request: $request, errorMessage: $errorMessage, serverErrors: $serverErrors)';
}


}

/// @nodoc
abstract mixin class _$EmailRecoveryFormStateCopyWith<$Res> implements $EmailRecoveryFormStateCopyWith<$Res> {
  factory _$EmailRecoveryFormStateCopyWith(_EmailRecoveryFormState value, $Res Function(_EmailRecoveryFormState) _then) = __$EmailRecoveryFormStateCopyWithImpl;
@override @useResult
$Res call({
 EmailRecoveryStep step, NinInput nin, BirthDateInput birthDate, PhoneInput phone, EmailInput newEmail, String? selfiePath, bool isSubmitting, EmailRecoveryRequest? request, String? errorMessage, Map<String, List<String>>? serverErrors
});




}
/// @nodoc
class __$EmailRecoveryFormStateCopyWithImpl<$Res>
    implements _$EmailRecoveryFormStateCopyWith<$Res> {
  __$EmailRecoveryFormStateCopyWithImpl(this._self, this._then);

  final _EmailRecoveryFormState _self;
  final $Res Function(_EmailRecoveryFormState) _then;

/// Create a copy of EmailRecoveryFormState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? step = null,Object? nin = null,Object? birthDate = null,Object? phone = null,Object? newEmail = null,Object? selfiePath = freezed,Object? isSubmitting = null,Object? request = freezed,Object? errorMessage = freezed,Object? serverErrors = freezed,}) {
  return _then(_EmailRecoveryFormState(
step: null == step ? _self.step : step // ignore: cast_nullable_to_non_nullable
as EmailRecoveryStep,nin: null == nin ? _self.nin : nin // ignore: cast_nullable_to_non_nullable
as NinInput,birthDate: null == birthDate ? _self.birthDate : birthDate // ignore: cast_nullable_to_non_nullable
as BirthDateInput,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as PhoneInput,newEmail: null == newEmail ? _self.newEmail : newEmail // ignore: cast_nullable_to_non_nullable
as EmailInput,selfiePath: freezed == selfiePath ? _self.selfiePath : selfiePath // ignore: cast_nullable_to_non_nullable
as String?,isSubmitting: null == isSubmitting ? _self.isSubmitting : isSubmitting // ignore: cast_nullable_to_non_nullable
as bool,request: freezed == request ? _self.request : request // ignore: cast_nullable_to_non_nullable
as EmailRecoveryRequest?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,serverErrors: freezed == serverErrors ? _self._serverErrors : serverErrors // ignore: cast_nullable_to_non_nullable
as Map<String, List<String>>?,
  ));
}


}

// dart format on
