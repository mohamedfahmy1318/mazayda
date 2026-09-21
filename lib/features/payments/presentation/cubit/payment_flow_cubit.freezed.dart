// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_flow_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PaymentFlowState {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentFlowState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'PaymentFlowState()';
}


}

/// @nodoc
class $PaymentFlowStateCopyWith<$Res>  {
$PaymentFlowStateCopyWith(PaymentFlowState _, $Res Function(PaymentFlowState) __);
}


/// Adds pattern-matching-related methods to [PaymentFlowState].
extension PaymentFlowStatePatterns on PaymentFlowState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( PaymentIdle value)?  idle,TResult Function( PaymentPreparing value)?  preparing,TResult Function( PaymentOpenGateway value)?  openGateway,TResult Function( PaymentPolling value)?  polling,TResult Function( PaymentConfirmed value)?  confirmed,TResult Function( PaymentAlreadySettled value)?  alreadySettled,TResult Function( PaymentFailed value)?  failed,TResult Function( PaymentNeedsAction value)?  needsAction,TResult Function( PaymentIssue value)?  issue,required TResult orElse(),}){
final _that = this;
switch (_that) {
case PaymentIdle() when idle != null:
return idle(_that);case PaymentPreparing() when preparing != null:
return preparing(_that);case PaymentOpenGateway() when openGateway != null:
return openGateway(_that);case PaymentPolling() when polling != null:
return polling(_that);case PaymentConfirmed() when confirmed != null:
return confirmed(_that);case PaymentAlreadySettled() when alreadySettled != null:
return alreadySettled(_that);case PaymentFailed() when failed != null:
return failed(_that);case PaymentNeedsAction() when needsAction != null:
return needsAction(_that);case PaymentIssue() when issue != null:
return issue(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( PaymentIdle value)  idle,required TResult Function( PaymentPreparing value)  preparing,required TResult Function( PaymentOpenGateway value)  openGateway,required TResult Function( PaymentPolling value)  polling,required TResult Function( PaymentConfirmed value)  confirmed,required TResult Function( PaymentAlreadySettled value)  alreadySettled,required TResult Function( PaymentFailed value)  failed,required TResult Function( PaymentNeedsAction value)  needsAction,required TResult Function( PaymentIssue value)  issue,}){
final _that = this;
switch (_that) {
case PaymentIdle():
return idle(_that);case PaymentPreparing():
return preparing(_that);case PaymentOpenGateway():
return openGateway(_that);case PaymentPolling():
return polling(_that);case PaymentConfirmed():
return confirmed(_that);case PaymentAlreadySettled():
return alreadySettled(_that);case PaymentFailed():
return failed(_that);case PaymentNeedsAction():
return needsAction(_that);case PaymentIssue():
return issue(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( PaymentIdle value)?  idle,TResult? Function( PaymentPreparing value)?  preparing,TResult? Function( PaymentOpenGateway value)?  openGateway,TResult? Function( PaymentPolling value)?  polling,TResult? Function( PaymentConfirmed value)?  confirmed,TResult? Function( PaymentAlreadySettled value)?  alreadySettled,TResult? Function( PaymentFailed value)?  failed,TResult? Function( PaymentNeedsAction value)?  needsAction,TResult? Function( PaymentIssue value)?  issue,}){
final _that = this;
switch (_that) {
case PaymentIdle() when idle != null:
return idle(_that);case PaymentPreparing() when preparing != null:
return preparing(_that);case PaymentOpenGateway() when openGateway != null:
return openGateway(_that);case PaymentPolling() when polling != null:
return polling(_that);case PaymentConfirmed() when confirmed != null:
return confirmed(_that);case PaymentAlreadySettled() when alreadySettled != null:
return alreadySettled(_that);case PaymentFailed() when failed != null:
return failed(_that);case PaymentNeedsAction() when needsAction != null:
return needsAction(_that);case PaymentIssue() when issue != null:
return issue(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  idle,TResult Function()?  preparing,TResult Function( String url,  String ref)?  openGateway,TResult Function()?  polling,TResult Function()?  confirmed,TResult Function()?  alreadySettled,TResult Function( String message,  bool stale)?  failed,TResult Function( PaymentRedirect target,  String message)?  needsAction,TResult Function( PaymentFlowIssue issue)?  issue,required TResult orElse(),}) {final _that = this;
switch (_that) {
case PaymentIdle() when idle != null:
return idle();case PaymentPreparing() when preparing != null:
return preparing();case PaymentOpenGateway() when openGateway != null:
return openGateway(_that.url,_that.ref);case PaymentPolling() when polling != null:
return polling();case PaymentConfirmed() when confirmed != null:
return confirmed();case PaymentAlreadySettled() when alreadySettled != null:
return alreadySettled();case PaymentFailed() when failed != null:
return failed(_that.message,_that.stale);case PaymentNeedsAction() when needsAction != null:
return needsAction(_that.target,_that.message);case PaymentIssue() when issue != null:
return issue(_that.issue);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  idle,required TResult Function()  preparing,required TResult Function( String url,  String ref)  openGateway,required TResult Function()  polling,required TResult Function()  confirmed,required TResult Function()  alreadySettled,required TResult Function( String message,  bool stale)  failed,required TResult Function( PaymentRedirect target,  String message)  needsAction,required TResult Function( PaymentFlowIssue issue)  issue,}) {final _that = this;
switch (_that) {
case PaymentIdle():
return idle();case PaymentPreparing():
return preparing();case PaymentOpenGateway():
return openGateway(_that.url,_that.ref);case PaymentPolling():
return polling();case PaymentConfirmed():
return confirmed();case PaymentAlreadySettled():
return alreadySettled();case PaymentFailed():
return failed(_that.message,_that.stale);case PaymentNeedsAction():
return needsAction(_that.target,_that.message);case PaymentIssue():
return issue(_that.issue);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  idle,TResult? Function()?  preparing,TResult? Function( String url,  String ref)?  openGateway,TResult? Function()?  polling,TResult? Function()?  confirmed,TResult? Function()?  alreadySettled,TResult? Function( String message,  bool stale)?  failed,TResult? Function( PaymentRedirect target,  String message)?  needsAction,TResult? Function( PaymentFlowIssue issue)?  issue,}) {final _that = this;
switch (_that) {
case PaymentIdle() when idle != null:
return idle();case PaymentPreparing() when preparing != null:
return preparing();case PaymentOpenGateway() when openGateway != null:
return openGateway(_that.url,_that.ref);case PaymentPolling() when polling != null:
return polling();case PaymentConfirmed() when confirmed != null:
return confirmed();case PaymentAlreadySettled() when alreadySettled != null:
return alreadySettled();case PaymentFailed() when failed != null:
return failed(_that.message,_that.stale);case PaymentNeedsAction() when needsAction != null:
return needsAction(_that.target,_that.message);case PaymentIssue() when issue != null:
return issue(_that.issue);case _:
  return null;

}
}

}

/// @nodoc


class PaymentIdle implements PaymentFlowState {
  const PaymentIdle();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentIdle);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'PaymentFlowState.idle()';
}


}




/// @nodoc


class PaymentPreparing implements PaymentFlowState {
  const PaymentPreparing();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentPreparing);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'PaymentFlowState.preparing()';
}


}




/// @nodoc


class PaymentOpenGateway implements PaymentFlowState {
  const PaymentOpenGateway(this.url, this.ref);
  

 final  String url;
 final  String ref;

/// Create a copy of PaymentFlowState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentOpenGatewayCopyWith<PaymentOpenGateway> get copyWith => _$PaymentOpenGatewayCopyWithImpl<PaymentOpenGateway>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentOpenGateway&&(identical(other.url, url) || other.url == url)&&(identical(other.ref, ref) || other.ref == ref));
}


@override
int get hashCode {
    return Object.hash(runtimeType,url,ref);
}

@override
String toString() {
    return 'PaymentFlowState.openGateway(url: $url, ref: $ref)';
}


}

/// @nodoc
abstract mixin class $PaymentOpenGatewayCopyWith<$Res> implements $PaymentFlowStateCopyWith<$Res> {
  factory $PaymentOpenGatewayCopyWith(PaymentOpenGateway value, $Res Function(PaymentOpenGateway) _then) = _$PaymentOpenGatewayCopyWithImpl;
@useResult
$Res call({
 String url, String ref
});




}
/// @nodoc
class _$PaymentOpenGatewayCopyWithImpl<$Res>
    implements $PaymentOpenGatewayCopyWith<$Res> {
  _$PaymentOpenGatewayCopyWithImpl(this._self, this._then);

  final PaymentOpenGateway _self;
  final $Res Function(PaymentOpenGateway) _then;

/// Create a copy of PaymentFlowState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? url = null,Object? ref = null,}) {
  return _then(PaymentOpenGateway(
null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,null == ref ? _self.ref : ref // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class PaymentPolling implements PaymentFlowState {
  const PaymentPolling();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentPolling);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'PaymentFlowState.polling()';
}


}




/// @nodoc


class PaymentConfirmed implements PaymentFlowState {
  const PaymentConfirmed();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentConfirmed);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'PaymentFlowState.confirmed()';
}


}




/// @nodoc


class PaymentAlreadySettled implements PaymentFlowState {
  const PaymentAlreadySettled();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentAlreadySettled);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'PaymentFlowState.alreadySettled()';
}


}




/// @nodoc


class PaymentFailed implements PaymentFlowState {
  const PaymentFailed(this.message, {this.stale = false});
  

 final  String message;
@JsonKey() final  bool stale;

/// Create a copy of PaymentFlowState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentFailedCopyWith<PaymentFailed> get copyWith => _$PaymentFailedCopyWithImpl<PaymentFailed>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentFailed&&(identical(other.message, message) || other.message == message)&&(identical(other.stale, stale) || other.stale == stale));
}


@override
int get hashCode {
    return Object.hash(runtimeType,message,stale);
}

@override
String toString() {
    return 'PaymentFlowState.failed(message: $message, stale: $stale)';
}


}

/// @nodoc
abstract mixin class $PaymentFailedCopyWith<$Res> implements $PaymentFlowStateCopyWith<$Res> {
  factory $PaymentFailedCopyWith(PaymentFailed value, $Res Function(PaymentFailed) _then) = _$PaymentFailedCopyWithImpl;
@useResult
$Res call({
 String message, bool stale
});




}
/// @nodoc
class _$PaymentFailedCopyWithImpl<$Res>
    implements $PaymentFailedCopyWith<$Res> {
  _$PaymentFailedCopyWithImpl(this._self, this._then);

  final PaymentFailed _self;
  final $Res Function(PaymentFailed) _then;

/// Create a copy of PaymentFlowState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,Object? stale = null,}) {
  return _then(PaymentFailed(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,stale: null == stale ? _self.stale : stale // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class PaymentNeedsAction implements PaymentFlowState {
  const PaymentNeedsAction(this.target, this.message);
  

 final  PaymentRedirect target;
 final  String message;

/// Create a copy of PaymentFlowState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentNeedsActionCopyWith<PaymentNeedsAction> get copyWith => _$PaymentNeedsActionCopyWithImpl<PaymentNeedsAction>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentNeedsAction&&(identical(other.target, target) || other.target == target)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode {
    return Object.hash(runtimeType,target,message);
}

@override
String toString() {
    return 'PaymentFlowState.needsAction(target: $target, message: $message)';
}


}

/// @nodoc
abstract mixin class $PaymentNeedsActionCopyWith<$Res> implements $PaymentFlowStateCopyWith<$Res> {
  factory $PaymentNeedsActionCopyWith(PaymentNeedsAction value, $Res Function(PaymentNeedsAction) _then) = _$PaymentNeedsActionCopyWithImpl;
@useResult
$Res call({
 PaymentRedirect target, String message
});




}
/// @nodoc
class _$PaymentNeedsActionCopyWithImpl<$Res>
    implements $PaymentNeedsActionCopyWith<$Res> {
  _$PaymentNeedsActionCopyWithImpl(this._self, this._then);

  final PaymentNeedsAction _self;
  final $Res Function(PaymentNeedsAction) _then;

/// Create a copy of PaymentFlowState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? target = null,Object? message = null,}) {
  return _then(PaymentNeedsAction(
null == target ? _self.target : target // ignore: cast_nullable_to_non_nullable
as PaymentRedirect,null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class PaymentIssue implements PaymentFlowState {
  const PaymentIssue(this.issue);
  

 final  PaymentFlowIssue issue;

/// Create a copy of PaymentFlowState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentIssueCopyWith<PaymentIssue> get copyWith => _$PaymentIssueCopyWithImpl<PaymentIssue>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentIssue&&(identical(other.issue, issue) || other.issue == issue));
}


@override
int get hashCode {
    return Object.hash(runtimeType,issue);
}

@override
String toString() {
    return 'PaymentFlowState.issue(issue: $issue)';
}


}

/// @nodoc
abstract mixin class $PaymentIssueCopyWith<$Res> implements $PaymentFlowStateCopyWith<$Res> {
  factory $PaymentIssueCopyWith(PaymentIssue value, $Res Function(PaymentIssue) _then) = _$PaymentIssueCopyWithImpl;
@useResult
$Res call({
 PaymentFlowIssue issue
});




}
/// @nodoc
class _$PaymentIssueCopyWithImpl<$Res>
    implements $PaymentIssueCopyWith<$Res> {
  _$PaymentIssueCopyWithImpl(this._self, this._then);

  final PaymentIssue _self;
  final $Res Function(PaymentIssue) _then;

/// Create a copy of PaymentFlowState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? issue = null,}) {
  return _then(PaymentIssue(
null == issue ? _self.issue : issue // ignore: cast_nullable_to_non_nullable
as PaymentFlowIssue,
  ));
}


}

// dart format on
