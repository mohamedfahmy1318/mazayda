// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'final_payment_preview_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FeeLineModel {

 String? get key; String? get label; int get amount; String? get formatted;
/// Create a copy of FeeLineModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FeeLineModelCopyWith<FeeLineModel> get copyWith => _$FeeLineModelCopyWithImpl<FeeLineModel>(this as FeeLineModel, _$identity);

  /// Serializes this FeeLineModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as FeeLineModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FeeLineModel&&(identical(other.key, _this.key) || other.key == _this.key)&&(identical(other.label, _this.label) || other.label == _this.label)&&(identical(other.amount, _this.amount) || other.amount == _this.amount)&&(identical(other.formatted, _this.formatted) || other.formatted == _this.formatted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as FeeLineModel;
  return Object.hash(runtimeType,_this.key,_this.label,_this.amount,_this.formatted);
}

@override
String toString() {
  final _this = this as FeeLineModel;
  return 'FeeLineModel(key: ${_this.key}, label: ${_this.label}, amount: ${_this.amount}, formatted: ${_this.formatted})';
}


}

/// @nodoc
abstract mixin class $FeeLineModelCopyWith<$Res>  {
  factory $FeeLineModelCopyWith(FeeLineModel value, $Res Function(FeeLineModel) _then) = _$FeeLineModelCopyWithImpl;
@useResult
$Res call({
 String? key, String? label, int amount, String? formatted
});




}
/// @nodoc
class _$FeeLineModelCopyWithImpl<$Res>
    implements $FeeLineModelCopyWith<$Res> {
  _$FeeLineModelCopyWithImpl(this._self, this._then);

  final FeeLineModel _self;
  final $Res Function(FeeLineModel) _then;

/// Create a copy of FeeLineModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? key = freezed,Object? label = freezed,Object? amount = null,Object? formatted = freezed,}) {
  return _then(FeeLineModel(
key: freezed == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String?,label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,formatted: freezed == formatted ? _self.formatted : formatted // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [FeeLineModel].
extension FeeLineModelPatterns on FeeLineModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FeeLineModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FeeLineModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FeeLineModel value)  $default,){
final _that = this;
switch (_that) {
case _FeeLineModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FeeLineModel value)?  $default,){
final _that = this;
switch (_that) {
case _FeeLineModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? key,  String? label,  int amount,  String? formatted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FeeLineModel() when $default != null:
return $default(_that.key,_that.label,_that.amount,_that.formatted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? key,  String? label,  int amount,  String? formatted)  $default,) {final _that = this;
switch (_that) {
case _FeeLineModel():
return $default(_that.key,_that.label,_that.amount,_that.formatted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? key,  String? label,  int amount,  String? formatted)?  $default,) {final _that = this;
switch (_that) {
case _FeeLineModel() when $default != null:
return $default(_that.key,_that.label,_that.amount,_that.formatted);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FeeLineModel extends FeeLineModel {
  const _FeeLineModel({this.key, this.label, this.amount = 0, this.formatted}): super._();
  factory _FeeLineModel.fromJson(Map<String, dynamic> json) => _$FeeLineModelFromJson(json);

@override final  String? key;
@override final  String? label;
@override@JsonKey() final  int amount;
@override final  String? formatted;

/// Create a copy of FeeLineModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FeeLineModelCopyWith<_FeeLineModel> get copyWith => __$FeeLineModelCopyWithImpl<_FeeLineModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FeeLineModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _FeeLineModel&&(identical(other.key, key) || other.key == key)&&(identical(other.label, label) || other.label == label)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.formatted, formatted) || other.formatted == formatted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,key,label,amount,formatted);
}

@override
String toString() {
    return 'FeeLineModel(key: $key, label: $label, amount: $amount, formatted: $formatted)';
}


}

/// @nodoc
abstract mixin class _$FeeLineModelCopyWith<$Res> implements $FeeLineModelCopyWith<$Res> {
  factory _$FeeLineModelCopyWith(_FeeLineModel value, $Res Function(_FeeLineModel) _then) = __$FeeLineModelCopyWithImpl;
@override @useResult
$Res call({
 String? key, String? label, int amount, String? formatted
});




}
/// @nodoc
class __$FeeLineModelCopyWithImpl<$Res>
    implements _$FeeLineModelCopyWith<$Res> {
  __$FeeLineModelCopyWithImpl(this._self, this._then);

  final _FeeLineModel _self;
  final $Res Function(_FeeLineModel) _then;

/// Create a copy of FeeLineModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? key = freezed,Object? label = freezed,Object? amount = null,Object? formatted = freezed,}) {
  return _then(_FeeLineModel(
key: freezed == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String?,label: freezed == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String?,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,formatted: freezed == formatted ? _self.formatted : formatted // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$FinalPaymentPreviewModel {

@JsonKey(name: 'already_paid') bool get alreadyPaid; List<FeeLineModel> get lines;@JsonKey(name: 'confirmed_deposit') int get confirmedDeposit;@JsonKey(name: 'amount_due') int get amountDue;@JsonKey(name: 'amount_due_formatted') String? get amountDueFormatted;@JsonKey(name: 'customs_immediate_due') int? get customsImmediateDue;@JsonKey(name: 'due_at') String? get dueAt;@JsonKey(name: 'deadline_days') int get deadlineDays;
/// Create a copy of FinalPaymentPreviewModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FinalPaymentPreviewModelCopyWith<FinalPaymentPreviewModel> get copyWith => _$FinalPaymentPreviewModelCopyWithImpl<FinalPaymentPreviewModel>(this as FinalPaymentPreviewModel, _$identity);

  /// Serializes this FinalPaymentPreviewModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as FinalPaymentPreviewModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FinalPaymentPreviewModel&&(identical(other.alreadyPaid, _this.alreadyPaid) || other.alreadyPaid == _this.alreadyPaid)&&const DeepCollectionEquality().equals(other.lines, _this.lines)&&(identical(other.confirmedDeposit, _this.confirmedDeposit) || other.confirmedDeposit == _this.confirmedDeposit)&&(identical(other.amountDue, _this.amountDue) || other.amountDue == _this.amountDue)&&(identical(other.amountDueFormatted, _this.amountDueFormatted) || other.amountDueFormatted == _this.amountDueFormatted)&&(identical(other.customsImmediateDue, _this.customsImmediateDue) || other.customsImmediateDue == _this.customsImmediateDue)&&(identical(other.dueAt, _this.dueAt) || other.dueAt == _this.dueAt)&&(identical(other.deadlineDays, _this.deadlineDays) || other.deadlineDays == _this.deadlineDays));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as FinalPaymentPreviewModel;
  return Object.hash(runtimeType,_this.alreadyPaid,const DeepCollectionEquality().hash(_this.lines),_this.confirmedDeposit,_this.amountDue,_this.amountDueFormatted,_this.customsImmediateDue,_this.dueAt,_this.deadlineDays);
}

@override
String toString() {
  final _this = this as FinalPaymentPreviewModel;
  return 'FinalPaymentPreviewModel(alreadyPaid: ${_this.alreadyPaid}, lines: ${_this.lines}, confirmedDeposit: ${_this.confirmedDeposit}, amountDue: ${_this.amountDue}, amountDueFormatted: ${_this.amountDueFormatted}, customsImmediateDue: ${_this.customsImmediateDue}, dueAt: ${_this.dueAt}, deadlineDays: ${_this.deadlineDays})';
}


}

/// @nodoc
abstract mixin class $FinalPaymentPreviewModelCopyWith<$Res>  {
  factory $FinalPaymentPreviewModelCopyWith(FinalPaymentPreviewModel value, $Res Function(FinalPaymentPreviewModel) _then) = _$FinalPaymentPreviewModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'already_paid') bool alreadyPaid, List<FeeLineModel> lines,@JsonKey(name: 'confirmed_deposit') int confirmedDeposit,@JsonKey(name: 'amount_due') int amountDue,@JsonKey(name: 'amount_due_formatted') String? amountDueFormatted,@JsonKey(name: 'customs_immediate_due') int? customsImmediateDue,@JsonKey(name: 'due_at') String? dueAt,@JsonKey(name: 'deadline_days') int deadlineDays
});




}
/// @nodoc
class _$FinalPaymentPreviewModelCopyWithImpl<$Res>
    implements $FinalPaymentPreviewModelCopyWith<$Res> {
  _$FinalPaymentPreviewModelCopyWithImpl(this._self, this._then);

  final FinalPaymentPreviewModel _self;
  final $Res Function(FinalPaymentPreviewModel) _then;

/// Create a copy of FinalPaymentPreviewModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? alreadyPaid = null,Object? lines = null,Object? confirmedDeposit = null,Object? amountDue = null,Object? amountDueFormatted = freezed,Object? customsImmediateDue = freezed,Object? dueAt = freezed,Object? deadlineDays = null,}) {
  return _then(FinalPaymentPreviewModel(
alreadyPaid: null == alreadyPaid ? _self.alreadyPaid : alreadyPaid // ignore: cast_nullable_to_non_nullable
as bool,lines: null == lines ? _self.lines : lines // ignore: cast_nullable_to_non_nullable
as List<FeeLineModel>,confirmedDeposit: null == confirmedDeposit ? _self.confirmedDeposit : confirmedDeposit // ignore: cast_nullable_to_non_nullable
as int,amountDue: null == amountDue ? _self.amountDue : amountDue // ignore: cast_nullable_to_non_nullable
as int,amountDueFormatted: freezed == amountDueFormatted ? _self.amountDueFormatted : amountDueFormatted // ignore: cast_nullable_to_non_nullable
as String?,customsImmediateDue: freezed == customsImmediateDue ? _self.customsImmediateDue : customsImmediateDue // ignore: cast_nullable_to_non_nullable
as int?,dueAt: freezed == dueAt ? _self.dueAt : dueAt // ignore: cast_nullable_to_non_nullable
as String?,deadlineDays: null == deadlineDays ? _self.deadlineDays : deadlineDays // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [FinalPaymentPreviewModel].
extension FinalPaymentPreviewModelPatterns on FinalPaymentPreviewModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FinalPaymentPreviewModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FinalPaymentPreviewModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FinalPaymentPreviewModel value)  $default,){
final _that = this;
switch (_that) {
case _FinalPaymentPreviewModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FinalPaymentPreviewModel value)?  $default,){
final _that = this;
switch (_that) {
case _FinalPaymentPreviewModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'already_paid')  bool alreadyPaid,  List<FeeLineModel> lines, @JsonKey(name: 'confirmed_deposit')  int confirmedDeposit, @JsonKey(name: 'amount_due')  int amountDue, @JsonKey(name: 'amount_due_formatted')  String? amountDueFormatted, @JsonKey(name: 'customs_immediate_due')  int? customsImmediateDue, @JsonKey(name: 'due_at')  String? dueAt, @JsonKey(name: 'deadline_days')  int deadlineDays)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FinalPaymentPreviewModel() when $default != null:
return $default(_that.alreadyPaid,_that.lines,_that.confirmedDeposit,_that.amountDue,_that.amountDueFormatted,_that.customsImmediateDue,_that.dueAt,_that.deadlineDays);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'already_paid')  bool alreadyPaid,  List<FeeLineModel> lines, @JsonKey(name: 'confirmed_deposit')  int confirmedDeposit, @JsonKey(name: 'amount_due')  int amountDue, @JsonKey(name: 'amount_due_formatted')  String? amountDueFormatted, @JsonKey(name: 'customs_immediate_due')  int? customsImmediateDue, @JsonKey(name: 'due_at')  String? dueAt, @JsonKey(name: 'deadline_days')  int deadlineDays)  $default,) {final _that = this;
switch (_that) {
case _FinalPaymentPreviewModel():
return $default(_that.alreadyPaid,_that.lines,_that.confirmedDeposit,_that.amountDue,_that.amountDueFormatted,_that.customsImmediateDue,_that.dueAt,_that.deadlineDays);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'already_paid')  bool alreadyPaid,  List<FeeLineModel> lines, @JsonKey(name: 'confirmed_deposit')  int confirmedDeposit, @JsonKey(name: 'amount_due')  int amountDue, @JsonKey(name: 'amount_due_formatted')  String? amountDueFormatted, @JsonKey(name: 'customs_immediate_due')  int? customsImmediateDue, @JsonKey(name: 'due_at')  String? dueAt, @JsonKey(name: 'deadline_days')  int deadlineDays)?  $default,) {final _that = this;
switch (_that) {
case _FinalPaymentPreviewModel() when $default != null:
return $default(_that.alreadyPaid,_that.lines,_that.confirmedDeposit,_that.amountDue,_that.amountDueFormatted,_that.customsImmediateDue,_that.dueAt,_that.deadlineDays);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FinalPaymentPreviewModel extends FinalPaymentPreviewModel {
  const _FinalPaymentPreviewModel({@JsonKey(name: 'already_paid') this.alreadyPaid = false,  List<FeeLineModel> lines = const <FeeLineModel>[], @JsonKey(name: 'confirmed_deposit') this.confirmedDeposit = 0, @JsonKey(name: 'amount_due') this.amountDue = 0, @JsonKey(name: 'amount_due_formatted') this.amountDueFormatted, @JsonKey(name: 'customs_immediate_due') this.customsImmediateDue, @JsonKey(name: 'due_at') this.dueAt, @JsonKey(name: 'deadline_days') this.deadlineDays = 0}): _lines = lines,super._();
  factory _FinalPaymentPreviewModel.fromJson(Map<String, dynamic> json) => _$FinalPaymentPreviewModelFromJson(json);

@override@JsonKey(name: 'already_paid') final  bool alreadyPaid;
 final  List<FeeLineModel> _lines;
@override@JsonKey() List<FeeLineModel> get lines {
  if (_lines is EqualUnmodifiableListView) return _lines;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_lines);
}

@override@JsonKey(name: 'confirmed_deposit') final  int confirmedDeposit;
@override@JsonKey(name: 'amount_due') final  int amountDue;
@override@JsonKey(name: 'amount_due_formatted') final  String? amountDueFormatted;
@override@JsonKey(name: 'customs_immediate_due') final  int? customsImmediateDue;
@override@JsonKey(name: 'due_at') final  String? dueAt;
@override@JsonKey(name: 'deadline_days') final  int deadlineDays;

/// Create a copy of FinalPaymentPreviewModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FinalPaymentPreviewModelCopyWith<_FinalPaymentPreviewModel> get copyWith => __$FinalPaymentPreviewModelCopyWithImpl<_FinalPaymentPreviewModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FinalPaymentPreviewModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _FinalPaymentPreviewModel&&(identical(other.alreadyPaid, alreadyPaid) || other.alreadyPaid == alreadyPaid)&&const DeepCollectionEquality().equals(other.lines, _lines)&&(identical(other.confirmedDeposit, confirmedDeposit) || other.confirmedDeposit == confirmedDeposit)&&(identical(other.amountDue, amountDue) || other.amountDue == amountDue)&&(identical(other.amountDueFormatted, amountDueFormatted) || other.amountDueFormatted == amountDueFormatted)&&(identical(other.customsImmediateDue, customsImmediateDue) || other.customsImmediateDue == customsImmediateDue)&&(identical(other.dueAt, dueAt) || other.dueAt == dueAt)&&(identical(other.deadlineDays, deadlineDays) || other.deadlineDays == deadlineDays));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,alreadyPaid,const DeepCollectionEquality().hash(_lines),confirmedDeposit,amountDue,amountDueFormatted,customsImmediateDue,dueAt,deadlineDays);
}

@override
String toString() {
    return 'FinalPaymentPreviewModel(alreadyPaid: $alreadyPaid, lines: $lines, confirmedDeposit: $confirmedDeposit, amountDue: $amountDue, amountDueFormatted: $amountDueFormatted, customsImmediateDue: $customsImmediateDue, dueAt: $dueAt, deadlineDays: $deadlineDays)';
}


}

/// @nodoc
abstract mixin class _$FinalPaymentPreviewModelCopyWith<$Res> implements $FinalPaymentPreviewModelCopyWith<$Res> {
  factory _$FinalPaymentPreviewModelCopyWith(_FinalPaymentPreviewModel value, $Res Function(_FinalPaymentPreviewModel) _then) = __$FinalPaymentPreviewModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'already_paid') bool alreadyPaid, List<FeeLineModel> lines,@JsonKey(name: 'confirmed_deposit') int confirmedDeposit,@JsonKey(name: 'amount_due') int amountDue,@JsonKey(name: 'amount_due_formatted') String? amountDueFormatted,@JsonKey(name: 'customs_immediate_due') int? customsImmediateDue,@JsonKey(name: 'due_at') String? dueAt,@JsonKey(name: 'deadline_days') int deadlineDays
});




}
/// @nodoc
class __$FinalPaymentPreviewModelCopyWithImpl<$Res>
    implements _$FinalPaymentPreviewModelCopyWith<$Res> {
  __$FinalPaymentPreviewModelCopyWithImpl(this._self, this._then);

  final _FinalPaymentPreviewModel _self;
  final $Res Function(_FinalPaymentPreviewModel) _then;

/// Create a copy of FinalPaymentPreviewModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? alreadyPaid = null,Object? lines = null,Object? confirmedDeposit = null,Object? amountDue = null,Object? amountDueFormatted = freezed,Object? customsImmediateDue = freezed,Object? dueAt = freezed,Object? deadlineDays = null,}) {
  return _then(_FinalPaymentPreviewModel(
alreadyPaid: null == alreadyPaid ? _self.alreadyPaid : alreadyPaid // ignore: cast_nullable_to_non_nullable
as bool,lines: null == lines ? _self._lines : lines // ignore: cast_nullable_to_non_nullable
as List<FeeLineModel>,confirmedDeposit: null == confirmedDeposit ? _self.confirmedDeposit : confirmedDeposit // ignore: cast_nullable_to_non_nullable
as int,amountDue: null == amountDue ? _self.amountDue : amountDue // ignore: cast_nullable_to_non_nullable
as int,amountDueFormatted: freezed == amountDueFormatted ? _self.amountDueFormatted : amountDueFormatted // ignore: cast_nullable_to_non_nullable
as String?,customsImmediateDue: freezed == customsImmediateDue ? _self.customsImmediateDue : customsImmediateDue // ignore: cast_nullable_to_non_nullable
as int?,dueAt: freezed == dueAt ? _self.dueAt : dueAt // ignore: cast_nullable_to_non_nullable
as String?,deadlineDays: null == deadlineDays ? _self.deadlineDays : deadlineDays // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
