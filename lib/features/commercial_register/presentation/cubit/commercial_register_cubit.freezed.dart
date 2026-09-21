// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'commercial_register_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CommercialRegisterState {

 bool get loading; bool get submitting; bool get submitted; CommercialRegister? get register; String? get error; Map<String, List<String>>? get serverErrors; String get companyName; String get registerNumber; String get taxNumber; String get activityType; String? get startDate; String? get registerDocumentPath; String? get taxCardDocumentPath;/// حجم كل مرفق (بايت) — بنقيسه مرة واحدة وقت الاختيار بدل ما نقرا من
/// الديسك في كل rebuild (يعني مع كل حرف بيتكتب في النموذج).
 int? get registerDocumentBytes; int? get taxCardDocumentBytes;/// بعد أول محاولة إرسال بنعرض أخطاء كل الحقول.
 bool get showErrors;/// الحقول اللي المستخدم دخلها وخرج منها — بنعرض خطأها لوحدها قبل الإرسال.
 Set<CrFormField> get touched;
/// Create a copy of CommercialRegisterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommercialRegisterStateCopyWith<CommercialRegisterState> get copyWith => _$CommercialRegisterStateCopyWithImpl<CommercialRegisterState>(this as CommercialRegisterState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as CommercialRegisterState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommercialRegisterState&&(identical(other.loading, _this.loading) || other.loading == _this.loading)&&(identical(other.submitting, _this.submitting) || other.submitting == _this.submitting)&&(identical(other.submitted, _this.submitted) || other.submitted == _this.submitted)&&(identical(other.register, _this.register) || other.register == _this.register)&&(identical(other.error, _this.error) || other.error == _this.error)&&const DeepCollectionEquality().equals(other.serverErrors, _this.serverErrors)&&(identical(other.companyName, _this.companyName) || other.companyName == _this.companyName)&&(identical(other.registerNumber, _this.registerNumber) || other.registerNumber == _this.registerNumber)&&(identical(other.taxNumber, _this.taxNumber) || other.taxNumber == _this.taxNumber)&&(identical(other.activityType, _this.activityType) || other.activityType == _this.activityType)&&(identical(other.startDate, _this.startDate) || other.startDate == _this.startDate)&&(identical(other.registerDocumentPath, _this.registerDocumentPath) || other.registerDocumentPath == _this.registerDocumentPath)&&(identical(other.taxCardDocumentPath, _this.taxCardDocumentPath) || other.taxCardDocumentPath == _this.taxCardDocumentPath)&&(identical(other.registerDocumentBytes, _this.registerDocumentBytes) || other.registerDocumentBytes == _this.registerDocumentBytes)&&(identical(other.taxCardDocumentBytes, _this.taxCardDocumentBytes) || other.taxCardDocumentBytes == _this.taxCardDocumentBytes)&&(identical(other.showErrors, _this.showErrors) || other.showErrors == _this.showErrors)&&const DeepCollectionEquality().equals(other.touched, _this.touched));
}


@override
int get hashCode {
  final _this = this as CommercialRegisterState;
  return Object.hash(runtimeType,_this.loading,_this.submitting,_this.submitted,_this.register,_this.error,const DeepCollectionEquality().hash(_this.serverErrors),_this.companyName,_this.registerNumber,_this.taxNumber,_this.activityType,_this.startDate,_this.registerDocumentPath,_this.taxCardDocumentPath,_this.registerDocumentBytes,_this.taxCardDocumentBytes,_this.showErrors,const DeepCollectionEquality().hash(_this.touched));
}

@override
String toString() {
  final _this = this as CommercialRegisterState;
  return 'CommercialRegisterState(loading: ${_this.loading}, submitting: ${_this.submitting}, submitted: ${_this.submitted}, register: ${_this.register}, error: ${_this.error}, serverErrors: ${_this.serverErrors}, companyName: ${_this.companyName}, registerNumber: ${_this.registerNumber}, taxNumber: ${_this.taxNumber}, activityType: ${_this.activityType}, startDate: ${_this.startDate}, registerDocumentPath: ${_this.registerDocumentPath}, taxCardDocumentPath: ${_this.taxCardDocumentPath}, registerDocumentBytes: ${_this.registerDocumentBytes}, taxCardDocumentBytes: ${_this.taxCardDocumentBytes}, showErrors: ${_this.showErrors}, touched: ${_this.touched})';
}


}

/// @nodoc
abstract mixin class $CommercialRegisterStateCopyWith<$Res>  {
  factory $CommercialRegisterStateCopyWith(CommercialRegisterState value, $Res Function(CommercialRegisterState) _then) = _$CommercialRegisterStateCopyWithImpl;
@useResult
$Res call({
 bool loading, bool submitting, bool submitted, CommercialRegister? register, String? error, Map<String, List<String>>? serverErrors, String companyName, String registerNumber, String taxNumber, String activityType, String? startDate, String? registerDocumentPath, String? taxCardDocumentPath, int? registerDocumentBytes, int? taxCardDocumentBytes, bool showErrors, Set<CrFormField> touched
});




}
/// @nodoc
class _$CommercialRegisterStateCopyWithImpl<$Res>
    implements $CommercialRegisterStateCopyWith<$Res> {
  _$CommercialRegisterStateCopyWithImpl(this._self, this._then);

  final CommercialRegisterState _self;
  final $Res Function(CommercialRegisterState) _then;

/// Create a copy of CommercialRegisterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? loading = null,Object? submitting = null,Object? submitted = null,Object? register = freezed,Object? error = freezed,Object? serverErrors = freezed,Object? companyName = null,Object? registerNumber = null,Object? taxNumber = null,Object? activityType = null,Object? startDate = freezed,Object? registerDocumentPath = freezed,Object? taxCardDocumentPath = freezed,Object? registerDocumentBytes = freezed,Object? taxCardDocumentBytes = freezed,Object? showErrors = null,Object? touched = null,}) {
  return _then(CommercialRegisterState(
loading: null == loading ? _self.loading : loading // ignore: cast_nullable_to_non_nullable
as bool,submitting: null == submitting ? _self.submitting : submitting // ignore: cast_nullable_to_non_nullable
as bool,submitted: null == submitted ? _self.submitted : submitted // ignore: cast_nullable_to_non_nullable
as bool,register: freezed == register ? _self.register : register // ignore: cast_nullable_to_non_nullable
as CommercialRegister?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,serverErrors: freezed == serverErrors ? _self.serverErrors : serverErrors // ignore: cast_nullable_to_non_nullable
as Map<String, List<String>>?,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,registerNumber: null == registerNumber ? _self.registerNumber : registerNumber // ignore: cast_nullable_to_non_nullable
as String,taxNumber: null == taxNumber ? _self.taxNumber : taxNumber // ignore: cast_nullable_to_non_nullable
as String,activityType: null == activityType ? _self.activityType : activityType // ignore: cast_nullable_to_non_nullable
as String,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String?,registerDocumentPath: freezed == registerDocumentPath ? _self.registerDocumentPath : registerDocumentPath // ignore: cast_nullable_to_non_nullable
as String?,taxCardDocumentPath: freezed == taxCardDocumentPath ? _self.taxCardDocumentPath : taxCardDocumentPath // ignore: cast_nullable_to_non_nullable
as String?,registerDocumentBytes: freezed == registerDocumentBytes ? _self.registerDocumentBytes : registerDocumentBytes // ignore: cast_nullable_to_non_nullable
as int?,taxCardDocumentBytes: freezed == taxCardDocumentBytes ? _self.taxCardDocumentBytes : taxCardDocumentBytes // ignore: cast_nullable_to_non_nullable
as int?,showErrors: null == showErrors ? _self.showErrors : showErrors // ignore: cast_nullable_to_non_nullable
as bool,touched: null == touched ? _self.touched : touched // ignore: cast_nullable_to_non_nullable
as Set<CrFormField>,
  ));
}

}


/// Adds pattern-matching-related methods to [CommercialRegisterState].
extension CommercialRegisterStatePatterns on CommercialRegisterState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CommercialRegisterState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CommercialRegisterState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CommercialRegisterState value)  $default,){
final _that = this;
switch (_that) {
case _CommercialRegisterState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CommercialRegisterState value)?  $default,){
final _that = this;
switch (_that) {
case _CommercialRegisterState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool loading,  bool submitting,  bool submitted,  CommercialRegister? register,  String? error,  Map<String, List<String>>? serverErrors,  String companyName,  String registerNumber,  String taxNumber,  String activityType,  String? startDate,  String? registerDocumentPath,  String? taxCardDocumentPath,  int? registerDocumentBytes,  int? taxCardDocumentBytes,  bool showErrors,  Set<CrFormField> touched)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CommercialRegisterState() when $default != null:
return $default(_that.loading,_that.submitting,_that.submitted,_that.register,_that.error,_that.serverErrors,_that.companyName,_that.registerNumber,_that.taxNumber,_that.activityType,_that.startDate,_that.registerDocumentPath,_that.taxCardDocumentPath,_that.registerDocumentBytes,_that.taxCardDocumentBytes,_that.showErrors,_that.touched);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool loading,  bool submitting,  bool submitted,  CommercialRegister? register,  String? error,  Map<String, List<String>>? serverErrors,  String companyName,  String registerNumber,  String taxNumber,  String activityType,  String? startDate,  String? registerDocumentPath,  String? taxCardDocumentPath,  int? registerDocumentBytes,  int? taxCardDocumentBytes,  bool showErrors,  Set<CrFormField> touched)  $default,) {final _that = this;
switch (_that) {
case _CommercialRegisterState():
return $default(_that.loading,_that.submitting,_that.submitted,_that.register,_that.error,_that.serverErrors,_that.companyName,_that.registerNumber,_that.taxNumber,_that.activityType,_that.startDate,_that.registerDocumentPath,_that.taxCardDocumentPath,_that.registerDocumentBytes,_that.taxCardDocumentBytes,_that.showErrors,_that.touched);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool loading,  bool submitting,  bool submitted,  CommercialRegister? register,  String? error,  Map<String, List<String>>? serverErrors,  String companyName,  String registerNumber,  String taxNumber,  String activityType,  String? startDate,  String? registerDocumentPath,  String? taxCardDocumentPath,  int? registerDocumentBytes,  int? taxCardDocumentBytes,  bool showErrors,  Set<CrFormField> touched)?  $default,) {final _that = this;
switch (_that) {
case _CommercialRegisterState() when $default != null:
return $default(_that.loading,_that.submitting,_that.submitted,_that.register,_that.error,_that.serverErrors,_that.companyName,_that.registerNumber,_that.taxNumber,_that.activityType,_that.startDate,_that.registerDocumentPath,_that.taxCardDocumentPath,_that.registerDocumentBytes,_that.taxCardDocumentBytes,_that.showErrors,_that.touched);case _:
  return null;

}
}

}

/// @nodoc


class _CommercialRegisterState extends CommercialRegisterState {
  const _CommercialRegisterState({this.loading = true, this.submitting = false, this.submitted = false, this.register, this.error,  Map<String, List<String>>? serverErrors, this.companyName = '', this.registerNumber = '', this.taxNumber = '', this.activityType = '', this.startDate, this.registerDocumentPath, this.taxCardDocumentPath, this.registerDocumentBytes, this.taxCardDocumentBytes, this.showErrors = false,  Set<CrFormField> touched = const <CrFormField>{}}): _serverErrors = serverErrors,_touched = touched,super._();
  

@override@JsonKey() final  bool loading;
@override@JsonKey() final  bool submitting;
@override@JsonKey() final  bool submitted;
@override final  CommercialRegister? register;
@override final  String? error;
 final  Map<String, List<String>>? _serverErrors;
@override Map<String, List<String>>? get serverErrors {
  final value = _serverErrors;
  if (value == null) return null;
  if (_serverErrors is EqualUnmodifiableMapView) return _serverErrors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override@JsonKey() final  String companyName;
@override@JsonKey() final  String registerNumber;
@override@JsonKey() final  String taxNumber;
@override@JsonKey() final  String activityType;
@override final  String? startDate;
@override final  String? registerDocumentPath;
@override final  String? taxCardDocumentPath;
/// حجم كل مرفق (بايت) — بنقيسه مرة واحدة وقت الاختيار بدل ما نقرا من
/// الديسك في كل rebuild (يعني مع كل حرف بيتكتب في النموذج).
@override final  int? registerDocumentBytes;
@override final  int? taxCardDocumentBytes;
/// بعد أول محاولة إرسال بنعرض أخطاء كل الحقول.
@override@JsonKey() final  bool showErrors;
/// الحقول اللي المستخدم دخلها وخرج منها — بنعرض خطأها لوحدها قبل الإرسال.
 final  Set<CrFormField> _touched;
/// الحقول اللي المستخدم دخلها وخرج منها — بنعرض خطأها لوحدها قبل الإرسال.
@override@JsonKey() Set<CrFormField> get touched {
  if (_touched is EqualUnmodifiableSetView) return _touched;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_touched);
}


/// Create a copy of CommercialRegisterState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CommercialRegisterStateCopyWith<_CommercialRegisterState> get copyWith => __$CommercialRegisterStateCopyWithImpl<_CommercialRegisterState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CommercialRegisterState&&(identical(other.loading, loading) || other.loading == loading)&&(identical(other.submitting, submitting) || other.submitting == submitting)&&(identical(other.submitted, submitted) || other.submitted == submitted)&&(identical(other.register, register) || other.register == register)&&(identical(other.error, error) || other.error == error)&&const DeepCollectionEquality().equals(other.serverErrors, _serverErrors)&&(identical(other.companyName, companyName) || other.companyName == companyName)&&(identical(other.registerNumber, registerNumber) || other.registerNumber == registerNumber)&&(identical(other.taxNumber, taxNumber) || other.taxNumber == taxNumber)&&(identical(other.activityType, activityType) || other.activityType == activityType)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.registerDocumentPath, registerDocumentPath) || other.registerDocumentPath == registerDocumentPath)&&(identical(other.taxCardDocumentPath, taxCardDocumentPath) || other.taxCardDocumentPath == taxCardDocumentPath)&&(identical(other.registerDocumentBytes, registerDocumentBytes) || other.registerDocumentBytes == registerDocumentBytes)&&(identical(other.taxCardDocumentBytes, taxCardDocumentBytes) || other.taxCardDocumentBytes == taxCardDocumentBytes)&&(identical(other.showErrors, showErrors) || other.showErrors == showErrors)&&const DeepCollectionEquality().equals(other.touched, _touched));
}


@override
int get hashCode {
    return Object.hash(runtimeType,loading,submitting,submitted,register,error,const DeepCollectionEquality().hash(_serverErrors),companyName,registerNumber,taxNumber,activityType,startDate,registerDocumentPath,taxCardDocumentPath,registerDocumentBytes,taxCardDocumentBytes,showErrors,const DeepCollectionEquality().hash(_touched));
}

@override
String toString() {
    return 'CommercialRegisterState(loading: $loading, submitting: $submitting, submitted: $submitted, register: $register, error: $error, serverErrors: $serverErrors, companyName: $companyName, registerNumber: $registerNumber, taxNumber: $taxNumber, activityType: $activityType, startDate: $startDate, registerDocumentPath: $registerDocumentPath, taxCardDocumentPath: $taxCardDocumentPath, registerDocumentBytes: $registerDocumentBytes, taxCardDocumentBytes: $taxCardDocumentBytes, showErrors: $showErrors, touched: $touched)';
}


}

/// @nodoc
abstract mixin class _$CommercialRegisterStateCopyWith<$Res> implements $CommercialRegisterStateCopyWith<$Res> {
  factory _$CommercialRegisterStateCopyWith(_CommercialRegisterState value, $Res Function(_CommercialRegisterState) _then) = __$CommercialRegisterStateCopyWithImpl;
@override @useResult
$Res call({
 bool loading, bool submitting, bool submitted, CommercialRegister? register, String? error, Map<String, List<String>>? serverErrors, String companyName, String registerNumber, String taxNumber, String activityType, String? startDate, String? registerDocumentPath, String? taxCardDocumentPath, int? registerDocumentBytes, int? taxCardDocumentBytes, bool showErrors, Set<CrFormField> touched
});




}
/// @nodoc
class __$CommercialRegisterStateCopyWithImpl<$Res>
    implements _$CommercialRegisterStateCopyWith<$Res> {
  __$CommercialRegisterStateCopyWithImpl(this._self, this._then);

  final _CommercialRegisterState _self;
  final $Res Function(_CommercialRegisterState) _then;

/// Create a copy of CommercialRegisterState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? loading = null,Object? submitting = null,Object? submitted = null,Object? register = freezed,Object? error = freezed,Object? serverErrors = freezed,Object? companyName = null,Object? registerNumber = null,Object? taxNumber = null,Object? activityType = null,Object? startDate = freezed,Object? registerDocumentPath = freezed,Object? taxCardDocumentPath = freezed,Object? registerDocumentBytes = freezed,Object? taxCardDocumentBytes = freezed,Object? showErrors = null,Object? touched = null,}) {
  return _then(_CommercialRegisterState(
loading: null == loading ? _self.loading : loading // ignore: cast_nullable_to_non_nullable
as bool,submitting: null == submitting ? _self.submitting : submitting // ignore: cast_nullable_to_non_nullable
as bool,submitted: null == submitted ? _self.submitted : submitted // ignore: cast_nullable_to_non_nullable
as bool,register: freezed == register ? _self.register : register // ignore: cast_nullable_to_non_nullable
as CommercialRegister?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,serverErrors: freezed == serverErrors ? _self._serverErrors : serverErrors // ignore: cast_nullable_to_non_nullable
as Map<String, List<String>>?,companyName: null == companyName ? _self.companyName : companyName // ignore: cast_nullable_to_non_nullable
as String,registerNumber: null == registerNumber ? _self.registerNumber : registerNumber // ignore: cast_nullable_to_non_nullable
as String,taxNumber: null == taxNumber ? _self.taxNumber : taxNumber // ignore: cast_nullable_to_non_nullable
as String,activityType: null == activityType ? _self.activityType : activityType // ignore: cast_nullable_to_non_nullable
as String,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as String?,registerDocumentPath: freezed == registerDocumentPath ? _self.registerDocumentPath : registerDocumentPath // ignore: cast_nullable_to_non_nullable
as String?,taxCardDocumentPath: freezed == taxCardDocumentPath ? _self.taxCardDocumentPath : taxCardDocumentPath // ignore: cast_nullable_to_non_nullable
as String?,registerDocumentBytes: freezed == registerDocumentBytes ? _self.registerDocumentBytes : registerDocumentBytes // ignore: cast_nullable_to_non_nullable
as int?,taxCardDocumentBytes: freezed == taxCardDocumentBytes ? _self.taxCardDocumentBytes : taxCardDocumentBytes // ignore: cast_nullable_to_non_nullable
as int?,showErrors: null == showErrors ? _self.showErrors : showErrors // ignore: cast_nullable_to_non_nullable
as bool,touched: null == touched ? _self._touched : touched // ignore: cast_nullable_to_non_nullable
as Set<CrFormField>,
  ));
}


}

// dart format on
