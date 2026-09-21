// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_preferences_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$NotificationPreferencesState {

 bool get loading; bool get saving;/// آخر نسخة محفوظة على السيرفر — مرجع المقارنة.
 NotificationPreferences? get saved;/// النسخة اللي المستخدم بيعدّل فيها دلوقتي.
 NotificationPreferences? get draft; String? get error;/// اتحفظ بنجاح — الواجهة بتعرض تأكيد ثم تصفّره.
 bool get justSaved;
/// Create a copy of NotificationPreferencesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NotificationPreferencesStateCopyWith<NotificationPreferencesState> get copyWith => _$NotificationPreferencesStateCopyWithImpl<NotificationPreferencesState>(this as NotificationPreferencesState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as NotificationPreferencesState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotificationPreferencesState&&(identical(other.loading, _this.loading) || other.loading == _this.loading)&&(identical(other.saving, _this.saving) || other.saving == _this.saving)&&(identical(other.saved, _this.saved) || other.saved == _this.saved)&&(identical(other.draft, _this.draft) || other.draft == _this.draft)&&(identical(other.error, _this.error) || other.error == _this.error)&&(identical(other.justSaved, _this.justSaved) || other.justSaved == _this.justSaved));
}


@override
int get hashCode {
  final _this = this as NotificationPreferencesState;
  return Object.hash(runtimeType,_this.loading,_this.saving,_this.saved,_this.draft,_this.error,_this.justSaved);
}

@override
String toString() {
  final _this = this as NotificationPreferencesState;
  return 'NotificationPreferencesState(loading: ${_this.loading}, saving: ${_this.saving}, saved: ${_this.saved}, draft: ${_this.draft}, error: ${_this.error}, justSaved: ${_this.justSaved})';
}


}

/// @nodoc
abstract mixin class $NotificationPreferencesStateCopyWith<$Res>  {
  factory $NotificationPreferencesStateCopyWith(NotificationPreferencesState value, $Res Function(NotificationPreferencesState) _then) = _$NotificationPreferencesStateCopyWithImpl;
@useResult
$Res call({
 bool loading, bool saving, NotificationPreferences? saved, NotificationPreferences? draft, String? error, bool justSaved
});




}
/// @nodoc
class _$NotificationPreferencesStateCopyWithImpl<$Res>
    implements $NotificationPreferencesStateCopyWith<$Res> {
  _$NotificationPreferencesStateCopyWithImpl(this._self, this._then);

  final NotificationPreferencesState _self;
  final $Res Function(NotificationPreferencesState) _then;

/// Create a copy of NotificationPreferencesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? loading = null,Object? saving = null,Object? saved = freezed,Object? draft = freezed,Object? error = freezed,Object? justSaved = null,}) {
  return _then(NotificationPreferencesState(
loading: null == loading ? _self.loading : loading // ignore: cast_nullable_to_non_nullable
as bool,saving: null == saving ? _self.saving : saving // ignore: cast_nullable_to_non_nullable
as bool,saved: freezed == saved ? _self.saved : saved // ignore: cast_nullable_to_non_nullable
as NotificationPreferences?,draft: freezed == draft ? _self.draft : draft // ignore: cast_nullable_to_non_nullable
as NotificationPreferences?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,justSaved: null == justSaved ? _self.justSaved : justSaved // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [NotificationPreferencesState].
extension NotificationPreferencesStatePatterns on NotificationPreferencesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NotificationPreferencesState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NotificationPreferencesState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NotificationPreferencesState value)  $default,){
final _that = this;
switch (_that) {
case _NotificationPreferencesState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NotificationPreferencesState value)?  $default,){
final _that = this;
switch (_that) {
case _NotificationPreferencesState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool loading,  bool saving,  NotificationPreferences? saved,  NotificationPreferences? draft,  String? error,  bool justSaved)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NotificationPreferencesState() when $default != null:
return $default(_that.loading,_that.saving,_that.saved,_that.draft,_that.error,_that.justSaved);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool loading,  bool saving,  NotificationPreferences? saved,  NotificationPreferences? draft,  String? error,  bool justSaved)  $default,) {final _that = this;
switch (_that) {
case _NotificationPreferencesState():
return $default(_that.loading,_that.saving,_that.saved,_that.draft,_that.error,_that.justSaved);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool loading,  bool saving,  NotificationPreferences? saved,  NotificationPreferences? draft,  String? error,  bool justSaved)?  $default,) {final _that = this;
switch (_that) {
case _NotificationPreferencesState() when $default != null:
return $default(_that.loading,_that.saving,_that.saved,_that.draft,_that.error,_that.justSaved);case _:
  return null;

}
}

}

/// @nodoc


class _NotificationPreferencesState extends NotificationPreferencesState {
  const _NotificationPreferencesState({this.loading = true, this.saving = false, this.saved, this.draft, this.error, this.justSaved = false}): super._();
  

@override@JsonKey() final  bool loading;
@override@JsonKey() final  bool saving;
/// آخر نسخة محفوظة على السيرفر — مرجع المقارنة.
@override final  NotificationPreferences? saved;
/// النسخة اللي المستخدم بيعدّل فيها دلوقتي.
@override final  NotificationPreferences? draft;
@override final  String? error;
/// اتحفظ بنجاح — الواجهة بتعرض تأكيد ثم تصفّره.
@override@JsonKey() final  bool justSaved;

/// Create a copy of NotificationPreferencesState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NotificationPreferencesStateCopyWith<_NotificationPreferencesState> get copyWith => __$NotificationPreferencesStateCopyWithImpl<_NotificationPreferencesState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _NotificationPreferencesState&&(identical(other.loading, loading) || other.loading == loading)&&(identical(other.saving, saving) || other.saving == saving)&&(identical(other.saved, saved) || other.saved == saved)&&(identical(other.draft, draft) || other.draft == draft)&&(identical(other.error, error) || other.error == error)&&(identical(other.justSaved, justSaved) || other.justSaved == justSaved));
}


@override
int get hashCode {
    return Object.hash(runtimeType,loading,saving,saved,draft,error,justSaved);
}

@override
String toString() {
    return 'NotificationPreferencesState(loading: $loading, saving: $saving, saved: $saved, draft: $draft, error: $error, justSaved: $justSaved)';
}


}

/// @nodoc
abstract mixin class _$NotificationPreferencesStateCopyWith<$Res> implements $NotificationPreferencesStateCopyWith<$Res> {
  factory _$NotificationPreferencesStateCopyWith(_NotificationPreferencesState value, $Res Function(_NotificationPreferencesState) _then) = __$NotificationPreferencesStateCopyWithImpl;
@override @useResult
$Res call({
 bool loading, bool saving, NotificationPreferences? saved, NotificationPreferences? draft, String? error, bool justSaved
});




}
/// @nodoc
class __$NotificationPreferencesStateCopyWithImpl<$Res>
    implements _$NotificationPreferencesStateCopyWith<$Res> {
  __$NotificationPreferencesStateCopyWithImpl(this._self, this._then);

  final _NotificationPreferencesState _self;
  final $Res Function(_NotificationPreferencesState) _then;

/// Create a copy of NotificationPreferencesState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? loading = null,Object? saving = null,Object? saved = freezed,Object? draft = freezed,Object? error = freezed,Object? justSaved = null,}) {
  return _then(_NotificationPreferencesState(
loading: null == loading ? _self.loading : loading // ignore: cast_nullable_to_non_nullable
as bool,saving: null == saving ? _self.saving : saving // ignore: cast_nullable_to_non_nullable
as bool,saved: freezed == saved ? _self.saved : saved // ignore: cast_nullable_to_non_nullable
as NotificationPreferences?,draft: freezed == draft ? _self.draft : draft // ignore: cast_nullable_to_non_nullable
as NotificationPreferences?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,justSaved: null == justSaved ? _self.justSaved : justSaved // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
