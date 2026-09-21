// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kyc_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$KycState {

 KycViewStatus get status; KycStatus? get kyc;/// بيانات المستخدم للتعبئة المسبقة (BE-8) — `null` لو النداء فشل،
/// وساعتها الفورم يفتح فاضي زي الأول.
 Profile? get prefill; List<Wilaya> get wilayas; List<Commune> get communes; Set<KycDocType> get uploading; Set<KycDocType> get uploaded; bool get submitting; bool get submitted; String? get error; Map<String, List<String>>? get fieldErrors;
/// Create a copy of KycState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KycStateCopyWith<KycState> get copyWith => _$KycStateCopyWithImpl<KycState>(this as KycState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as KycState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KycState&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.kyc, _this.kyc) || other.kyc == _this.kyc)&&(identical(other.prefill, _this.prefill) || other.prefill == _this.prefill)&&const DeepCollectionEquality().equals(other.wilayas, _this.wilayas)&&const DeepCollectionEquality().equals(other.communes, _this.communes)&&const DeepCollectionEquality().equals(other.uploading, _this.uploading)&&const DeepCollectionEquality().equals(other.uploaded, _this.uploaded)&&(identical(other.submitting, _this.submitting) || other.submitting == _this.submitting)&&(identical(other.submitted, _this.submitted) || other.submitted == _this.submitted)&&(identical(other.error, _this.error) || other.error == _this.error)&&const DeepCollectionEquality().equals(other.fieldErrors, _this.fieldErrors));
}


@override
int get hashCode {
  final _this = this as KycState;
  return Object.hash(runtimeType,_this.status,_this.kyc,_this.prefill,const DeepCollectionEquality().hash(_this.wilayas),const DeepCollectionEquality().hash(_this.communes),const DeepCollectionEquality().hash(_this.uploading),const DeepCollectionEquality().hash(_this.uploaded),_this.submitting,_this.submitted,_this.error,const DeepCollectionEquality().hash(_this.fieldErrors));
}

@override
String toString() {
  final _this = this as KycState;
  return 'KycState(status: ${_this.status}, kyc: ${_this.kyc}, prefill: ${_this.prefill}, wilayas: ${_this.wilayas}, communes: ${_this.communes}, uploading: ${_this.uploading}, uploaded: ${_this.uploaded}, submitting: ${_this.submitting}, submitted: ${_this.submitted}, error: ${_this.error}, fieldErrors: ${_this.fieldErrors})';
}


}

/// @nodoc
abstract mixin class $KycStateCopyWith<$Res>  {
  factory $KycStateCopyWith(KycState value, $Res Function(KycState) _then) = _$KycStateCopyWithImpl;
@useResult
$Res call({
 KycViewStatus status, KycStatus? kyc, Profile? prefill, List<Wilaya> wilayas, List<Commune> communes, Set<KycDocType> uploading, Set<KycDocType> uploaded, bool submitting, bool submitted, String? error, Map<String, List<String>>? fieldErrors
});




}
/// @nodoc
class _$KycStateCopyWithImpl<$Res>
    implements $KycStateCopyWith<$Res> {
  _$KycStateCopyWithImpl(this._self, this._then);

  final KycState _self;
  final $Res Function(KycState) _then;

/// Create a copy of KycState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? kyc = freezed,Object? prefill = freezed,Object? wilayas = null,Object? communes = null,Object? uploading = null,Object? uploaded = null,Object? submitting = null,Object? submitted = null,Object? error = freezed,Object? fieldErrors = freezed,}) {
  return _then(KycState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as KycViewStatus,kyc: freezed == kyc ? _self.kyc : kyc // ignore: cast_nullable_to_non_nullable
as KycStatus?,prefill: freezed == prefill ? _self.prefill : prefill // ignore: cast_nullable_to_non_nullable
as Profile?,wilayas: null == wilayas ? _self.wilayas : wilayas // ignore: cast_nullable_to_non_nullable
as List<Wilaya>,communes: null == communes ? _self.communes : communes // ignore: cast_nullable_to_non_nullable
as List<Commune>,uploading: null == uploading ? _self.uploading : uploading // ignore: cast_nullable_to_non_nullable
as Set<KycDocType>,uploaded: null == uploaded ? _self.uploaded : uploaded // ignore: cast_nullable_to_non_nullable
as Set<KycDocType>,submitting: null == submitting ? _self.submitting : submitting // ignore: cast_nullable_to_non_nullable
as bool,submitted: null == submitted ? _self.submitted : submitted // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,fieldErrors: freezed == fieldErrors ? _self.fieldErrors : fieldErrors // ignore: cast_nullable_to_non_nullable
as Map<String, List<String>>?,
  ));
}

}


/// Adds pattern-matching-related methods to [KycState].
extension KycStatePatterns on KycState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _KycState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _KycState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _KycState value)  $default,){
final _that = this;
switch (_that) {
case _KycState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _KycState value)?  $default,){
final _that = this;
switch (_that) {
case _KycState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( KycViewStatus status,  KycStatus? kyc,  Profile? prefill,  List<Wilaya> wilayas,  List<Commune> communes,  Set<KycDocType> uploading,  Set<KycDocType> uploaded,  bool submitting,  bool submitted,  String? error,  Map<String, List<String>>? fieldErrors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _KycState() when $default != null:
return $default(_that.status,_that.kyc,_that.prefill,_that.wilayas,_that.communes,_that.uploading,_that.uploaded,_that.submitting,_that.submitted,_that.error,_that.fieldErrors);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( KycViewStatus status,  KycStatus? kyc,  Profile? prefill,  List<Wilaya> wilayas,  List<Commune> communes,  Set<KycDocType> uploading,  Set<KycDocType> uploaded,  bool submitting,  bool submitted,  String? error,  Map<String, List<String>>? fieldErrors)  $default,) {final _that = this;
switch (_that) {
case _KycState():
return $default(_that.status,_that.kyc,_that.prefill,_that.wilayas,_that.communes,_that.uploading,_that.uploaded,_that.submitting,_that.submitted,_that.error,_that.fieldErrors);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( KycViewStatus status,  KycStatus? kyc,  Profile? prefill,  List<Wilaya> wilayas,  List<Commune> communes,  Set<KycDocType> uploading,  Set<KycDocType> uploaded,  bool submitting,  bool submitted,  String? error,  Map<String, List<String>>? fieldErrors)?  $default,) {final _that = this;
switch (_that) {
case _KycState() when $default != null:
return $default(_that.status,_that.kyc,_that.prefill,_that.wilayas,_that.communes,_that.uploading,_that.uploaded,_that.submitting,_that.submitted,_that.error,_that.fieldErrors);case _:
  return null;

}
}

}

/// @nodoc


class _KycState implements KycState {
  const _KycState({this.status = KycViewStatus.initial, this.kyc, this.prefill,  List<Wilaya> wilayas = const <Wilaya>[],  List<Commune> communes = const <Commune>[],  Set<KycDocType> uploading = const <KycDocType>{},  Set<KycDocType> uploaded = const <KycDocType>{}, this.submitting = false, this.submitted = false, this.error,  Map<String, List<String>>? fieldErrors}): _wilayas = wilayas,_communes = communes,_uploading = uploading,_uploaded = uploaded,_fieldErrors = fieldErrors;
  

@override@JsonKey() final  KycViewStatus status;
@override final  KycStatus? kyc;
/// بيانات المستخدم للتعبئة المسبقة (BE-8) — `null` لو النداء فشل،
/// وساعتها الفورم يفتح فاضي زي الأول.
@override final  Profile? prefill;
 final  List<Wilaya> _wilayas;
@override@JsonKey() List<Wilaya> get wilayas {
  if (_wilayas is EqualUnmodifiableListView) return _wilayas;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_wilayas);
}

 final  List<Commune> _communes;
@override@JsonKey() List<Commune> get communes {
  if (_communes is EqualUnmodifiableListView) return _communes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_communes);
}

 final  Set<KycDocType> _uploading;
@override@JsonKey() Set<KycDocType> get uploading {
  if (_uploading is EqualUnmodifiableSetView) return _uploading;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_uploading);
}

 final  Set<KycDocType> _uploaded;
@override@JsonKey() Set<KycDocType> get uploaded {
  if (_uploaded is EqualUnmodifiableSetView) return _uploaded;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_uploaded);
}

@override@JsonKey() final  bool submitting;
@override@JsonKey() final  bool submitted;
@override final  String? error;
 final  Map<String, List<String>>? _fieldErrors;
@override Map<String, List<String>>? get fieldErrors {
  final value = _fieldErrors;
  if (value == null) return null;
  if (_fieldErrors is EqualUnmodifiableMapView) return _fieldErrors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of KycState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KycStateCopyWith<_KycState> get copyWith => __$KycStateCopyWithImpl<_KycState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _KycState&&(identical(other.status, status) || other.status == status)&&(identical(other.kyc, kyc) || other.kyc == kyc)&&(identical(other.prefill, prefill) || other.prefill == prefill)&&const DeepCollectionEquality().equals(other.wilayas, _wilayas)&&const DeepCollectionEquality().equals(other.communes, _communes)&&const DeepCollectionEquality().equals(other.uploading, _uploading)&&const DeepCollectionEquality().equals(other.uploaded, _uploaded)&&(identical(other.submitting, submitting) || other.submitting == submitting)&&(identical(other.submitted, submitted) || other.submitted == submitted)&&(identical(other.error, error) || other.error == error)&&const DeepCollectionEquality().equals(other.fieldErrors, _fieldErrors));
}


@override
int get hashCode {
    return Object.hash(runtimeType,status,kyc,prefill,const DeepCollectionEquality().hash(_wilayas),const DeepCollectionEquality().hash(_communes),const DeepCollectionEquality().hash(_uploading),const DeepCollectionEquality().hash(_uploaded),submitting,submitted,error,const DeepCollectionEquality().hash(_fieldErrors));
}

@override
String toString() {
    return 'KycState(status: $status, kyc: $kyc, prefill: $prefill, wilayas: $wilayas, communes: $communes, uploading: $uploading, uploaded: $uploaded, submitting: $submitting, submitted: $submitted, error: $error, fieldErrors: $fieldErrors)';
}


}

/// @nodoc
abstract mixin class _$KycStateCopyWith<$Res> implements $KycStateCopyWith<$Res> {
  factory _$KycStateCopyWith(_KycState value, $Res Function(_KycState) _then) = __$KycStateCopyWithImpl;
@override @useResult
$Res call({
 KycViewStatus status, KycStatus? kyc, Profile? prefill, List<Wilaya> wilayas, List<Commune> communes, Set<KycDocType> uploading, Set<KycDocType> uploaded, bool submitting, bool submitted, String? error, Map<String, List<String>>? fieldErrors
});




}
/// @nodoc
class __$KycStateCopyWithImpl<$Res>
    implements _$KycStateCopyWith<$Res> {
  __$KycStateCopyWithImpl(this._self, this._then);

  final _KycState _self;
  final $Res Function(_KycState) _then;

/// Create a copy of KycState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? kyc = freezed,Object? prefill = freezed,Object? wilayas = null,Object? communes = null,Object? uploading = null,Object? uploaded = null,Object? submitting = null,Object? submitted = null,Object? error = freezed,Object? fieldErrors = freezed,}) {
  return _then(_KycState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as KycViewStatus,kyc: freezed == kyc ? _self.kyc : kyc // ignore: cast_nullable_to_non_nullable
as KycStatus?,prefill: freezed == prefill ? _self.prefill : prefill // ignore: cast_nullable_to_non_nullable
as Profile?,wilayas: null == wilayas ? _self._wilayas : wilayas // ignore: cast_nullable_to_non_nullable
as List<Wilaya>,communes: null == communes ? _self._communes : communes // ignore: cast_nullable_to_non_nullable
as List<Commune>,uploading: null == uploading ? _self._uploading : uploading // ignore: cast_nullable_to_non_nullable
as Set<KycDocType>,uploaded: null == uploaded ? _self._uploaded : uploaded // ignore: cast_nullable_to_non_nullable
as Set<KycDocType>,submitting: null == submitting ? _self.submitting : submitting // ignore: cast_nullable_to_non_nullable
as bool,submitted: null == submitted ? _self.submitted : submitted // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,fieldErrors: freezed == fieldErrors ? _self._fieldErrors : fieldErrors // ignore: cast_nullable_to_non_nullable
as Map<String, List<String>>?,
  ));
}


}

// dart format on
