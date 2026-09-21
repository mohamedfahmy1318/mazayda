// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auction_viewer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ViewerAppealRefModel {

 String? get id; String? get status;@JsonKey(name: 'status_label') String? get statusLabel;
/// Create a copy of ViewerAppealRefModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ViewerAppealRefModelCopyWith<ViewerAppealRefModel> get copyWith => _$ViewerAppealRefModelCopyWithImpl<ViewerAppealRefModel>(this as ViewerAppealRefModel, _$identity);

  /// Serializes this ViewerAppealRefModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ViewerAppealRefModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ViewerAppealRefModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.statusLabel, _this.statusLabel) || other.statusLabel == _this.statusLabel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ViewerAppealRefModel;
  return Object.hash(runtimeType,_this.id,_this.status,_this.statusLabel);
}

@override
String toString() {
  final _this = this as ViewerAppealRefModel;
  return 'ViewerAppealRefModel(id: ${_this.id}, status: ${_this.status}, statusLabel: ${_this.statusLabel})';
}


}

/// @nodoc
abstract mixin class $ViewerAppealRefModelCopyWith<$Res>  {
  factory $ViewerAppealRefModelCopyWith(ViewerAppealRefModel value, $Res Function(ViewerAppealRefModel) _then) = _$ViewerAppealRefModelCopyWithImpl;
@useResult
$Res call({
 String? id, String? status,@JsonKey(name: 'status_label') String? statusLabel
});




}
/// @nodoc
class _$ViewerAppealRefModelCopyWithImpl<$Res>
    implements $ViewerAppealRefModelCopyWith<$Res> {
  _$ViewerAppealRefModelCopyWithImpl(this._self, this._then);

  final ViewerAppealRefModel _self;
  final $Res Function(ViewerAppealRefModel) _then;

/// Create a copy of ViewerAppealRefModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? status = freezed,Object? statusLabel = freezed,}) {
  return _then(ViewerAppealRefModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,statusLabel: freezed == statusLabel ? _self.statusLabel : statusLabel // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ViewerAppealRefModel].
extension ViewerAppealRefModelPatterns on ViewerAppealRefModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ViewerAppealRefModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ViewerAppealRefModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ViewerAppealRefModel value)  $default,){
final _that = this;
switch (_that) {
case _ViewerAppealRefModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ViewerAppealRefModel value)?  $default,){
final _that = this;
switch (_that) {
case _ViewerAppealRefModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? status, @JsonKey(name: 'status_label')  String? statusLabel)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ViewerAppealRefModel() when $default != null:
return $default(_that.id,_that.status,_that.statusLabel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? status, @JsonKey(name: 'status_label')  String? statusLabel)  $default,) {final _that = this;
switch (_that) {
case _ViewerAppealRefModel():
return $default(_that.id,_that.status,_that.statusLabel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? status, @JsonKey(name: 'status_label')  String? statusLabel)?  $default,) {final _that = this;
switch (_that) {
case _ViewerAppealRefModel() when $default != null:
return $default(_that.id,_that.status,_that.statusLabel);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ViewerAppealRefModel extends ViewerAppealRefModel {
  const _ViewerAppealRefModel({this.id, this.status, @JsonKey(name: 'status_label') this.statusLabel}): super._();
  factory _ViewerAppealRefModel.fromJson(Map<String, dynamic> json) => _$ViewerAppealRefModelFromJson(json);

@override final  String? id;
@override final  String? status;
@override@JsonKey(name: 'status_label') final  String? statusLabel;

/// Create a copy of ViewerAppealRefModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ViewerAppealRefModelCopyWith<_ViewerAppealRefModel> get copyWith => __$ViewerAppealRefModelCopyWithImpl<_ViewerAppealRefModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ViewerAppealRefModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ViewerAppealRefModel&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&(identical(other.statusLabel, statusLabel) || other.statusLabel == statusLabel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,status,statusLabel);
}

@override
String toString() {
    return 'ViewerAppealRefModel(id: $id, status: $status, statusLabel: $statusLabel)';
}


}

/// @nodoc
abstract mixin class _$ViewerAppealRefModelCopyWith<$Res> implements $ViewerAppealRefModelCopyWith<$Res> {
  factory _$ViewerAppealRefModelCopyWith(_ViewerAppealRefModel value, $Res Function(_ViewerAppealRefModel) _then) = __$ViewerAppealRefModelCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? status,@JsonKey(name: 'status_label') String? statusLabel
});




}
/// @nodoc
class __$ViewerAppealRefModelCopyWithImpl<$Res>
    implements _$ViewerAppealRefModelCopyWith<$Res> {
  __$ViewerAppealRefModelCopyWithImpl(this._self, this._then);

  final _ViewerAppealRefModel _self;
  final $Res Function(_ViewerAppealRefModel) _then;

/// Create a copy of ViewerAppealRefModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? status = freezed,Object? statusLabel = freezed,}) {
  return _then(_ViewerAppealRefModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,statusLabel: freezed == statusLabel ? _self.statusLabel : statusLabel // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$AuctionViewerModel {

@JsonKey(name: 'can_bid') bool get canBid;@JsonKey(name: 'is_participant') bool get isParticipant;@JsonKey(name: 'has_commerce_register') bool get hasCommerceRegister;@JsonKey(name: 'commerce_register_blocked') bool get commerceRegisterBlocked;@JsonKey(name: 'has_book_access') bool get hasBookAccess;@JsonKey(name: 'book_purchased') bool get bookPurchased;@JsonKey(name: 'deposit_paid') bool get depositPaid;@JsonKey(name: 'is_winner') bool get isWinner;@JsonKey(name: 'can_appeal') bool get canAppeal;@JsonKey(name: 'existing_appeal') ViewerAppealRefModel? get existingAppeal;@JsonKey(name: 'has_final_payment') bool get hasFinalPayment;@JsonKey(name: 'is_staff') bool get isStaff; String? get role;@JsonKey(name: 'is_premium') bool get isPremium;
/// Create a copy of AuctionViewerModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuctionViewerModelCopyWith<AuctionViewerModel> get copyWith => _$AuctionViewerModelCopyWithImpl<AuctionViewerModel>(this as AuctionViewerModel, _$identity);

  /// Serializes this AuctionViewerModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AuctionViewerModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuctionViewerModel&&(identical(other.canBid, _this.canBid) || other.canBid == _this.canBid)&&(identical(other.isParticipant, _this.isParticipant) || other.isParticipant == _this.isParticipant)&&(identical(other.hasCommerceRegister, _this.hasCommerceRegister) || other.hasCommerceRegister == _this.hasCommerceRegister)&&(identical(other.commerceRegisterBlocked, _this.commerceRegisterBlocked) || other.commerceRegisterBlocked == _this.commerceRegisterBlocked)&&(identical(other.hasBookAccess, _this.hasBookAccess) || other.hasBookAccess == _this.hasBookAccess)&&(identical(other.bookPurchased, _this.bookPurchased) || other.bookPurchased == _this.bookPurchased)&&(identical(other.depositPaid, _this.depositPaid) || other.depositPaid == _this.depositPaid)&&(identical(other.isWinner, _this.isWinner) || other.isWinner == _this.isWinner)&&(identical(other.canAppeal, _this.canAppeal) || other.canAppeal == _this.canAppeal)&&(identical(other.existingAppeal, _this.existingAppeal) || other.existingAppeal == _this.existingAppeal)&&(identical(other.hasFinalPayment, _this.hasFinalPayment) || other.hasFinalPayment == _this.hasFinalPayment)&&(identical(other.isStaff, _this.isStaff) || other.isStaff == _this.isStaff)&&(identical(other.role, _this.role) || other.role == _this.role)&&(identical(other.isPremium, _this.isPremium) || other.isPremium == _this.isPremium));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AuctionViewerModel;
  return Object.hash(runtimeType,_this.canBid,_this.isParticipant,_this.hasCommerceRegister,_this.commerceRegisterBlocked,_this.hasBookAccess,_this.bookPurchased,_this.depositPaid,_this.isWinner,_this.canAppeal,_this.existingAppeal,_this.hasFinalPayment,_this.isStaff,_this.role,_this.isPremium);
}

@override
String toString() {
  final _this = this as AuctionViewerModel;
  return 'AuctionViewerModel(canBid: ${_this.canBid}, isParticipant: ${_this.isParticipant}, hasCommerceRegister: ${_this.hasCommerceRegister}, commerceRegisterBlocked: ${_this.commerceRegisterBlocked}, hasBookAccess: ${_this.hasBookAccess}, bookPurchased: ${_this.bookPurchased}, depositPaid: ${_this.depositPaid}, isWinner: ${_this.isWinner}, canAppeal: ${_this.canAppeal}, existingAppeal: ${_this.existingAppeal}, hasFinalPayment: ${_this.hasFinalPayment}, isStaff: ${_this.isStaff}, role: ${_this.role}, isPremium: ${_this.isPremium})';
}


}

/// @nodoc
abstract mixin class $AuctionViewerModelCopyWith<$Res>  {
  factory $AuctionViewerModelCopyWith(AuctionViewerModel value, $Res Function(AuctionViewerModel) _then) = _$AuctionViewerModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'can_bid') bool canBid,@JsonKey(name: 'is_participant') bool isParticipant,@JsonKey(name: 'has_commerce_register') bool hasCommerceRegister,@JsonKey(name: 'commerce_register_blocked') bool commerceRegisterBlocked,@JsonKey(name: 'has_book_access') bool hasBookAccess,@JsonKey(name: 'book_purchased') bool bookPurchased,@JsonKey(name: 'deposit_paid') bool depositPaid,@JsonKey(name: 'is_winner') bool isWinner,@JsonKey(name: 'can_appeal') bool canAppeal,@JsonKey(name: 'existing_appeal') ViewerAppealRefModel? existingAppeal,@JsonKey(name: 'has_final_payment') bool hasFinalPayment,@JsonKey(name: 'is_staff') bool isStaff, String? role,@JsonKey(name: 'is_premium') bool isPremium
});


$ViewerAppealRefModelCopyWith<$Res>? get existingAppeal;

}
/// @nodoc
class _$AuctionViewerModelCopyWithImpl<$Res>
    implements $AuctionViewerModelCopyWith<$Res> {
  _$AuctionViewerModelCopyWithImpl(this._self, this._then);

  final AuctionViewerModel _self;
  final $Res Function(AuctionViewerModel) _then;

/// Create a copy of AuctionViewerModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? canBid = null,Object? isParticipant = null,Object? hasCommerceRegister = null,Object? commerceRegisterBlocked = null,Object? hasBookAccess = null,Object? bookPurchased = null,Object? depositPaid = null,Object? isWinner = null,Object? canAppeal = null,Object? existingAppeal = freezed,Object? hasFinalPayment = null,Object? isStaff = null,Object? role = freezed,Object? isPremium = null,}) {
  return _then(AuctionViewerModel(
canBid: null == canBid ? _self.canBid : canBid // ignore: cast_nullable_to_non_nullable
as bool,isParticipant: null == isParticipant ? _self.isParticipant : isParticipant // ignore: cast_nullable_to_non_nullable
as bool,hasCommerceRegister: null == hasCommerceRegister ? _self.hasCommerceRegister : hasCommerceRegister // ignore: cast_nullable_to_non_nullable
as bool,commerceRegisterBlocked: null == commerceRegisterBlocked ? _self.commerceRegisterBlocked : commerceRegisterBlocked // ignore: cast_nullable_to_non_nullable
as bool,hasBookAccess: null == hasBookAccess ? _self.hasBookAccess : hasBookAccess // ignore: cast_nullable_to_non_nullable
as bool,bookPurchased: null == bookPurchased ? _self.bookPurchased : bookPurchased // ignore: cast_nullable_to_non_nullable
as bool,depositPaid: null == depositPaid ? _self.depositPaid : depositPaid // ignore: cast_nullable_to_non_nullable
as bool,isWinner: null == isWinner ? _self.isWinner : isWinner // ignore: cast_nullable_to_non_nullable
as bool,canAppeal: null == canAppeal ? _self.canAppeal : canAppeal // ignore: cast_nullable_to_non_nullable
as bool,existingAppeal: freezed == existingAppeal ? _self.existingAppeal : existingAppeal // ignore: cast_nullable_to_non_nullable
as ViewerAppealRefModel?,hasFinalPayment: null == hasFinalPayment ? _self.hasFinalPayment : hasFinalPayment // ignore: cast_nullable_to_non_nullable
as bool,isStaff: null == isStaff ? _self.isStaff : isStaff // ignore: cast_nullable_to_non_nullable
as bool,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,isPremium: null == isPremium ? _self.isPremium : isPremium // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of AuctionViewerModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ViewerAppealRefModelCopyWith<$Res>? get existingAppeal {
    if (_self.existingAppeal == null) {
    return null;
  }

  return $ViewerAppealRefModelCopyWith<$Res>(_self.existingAppeal!, (value) {
    return _then(_self.copyWith(existingAppeal: value));
  });
}
}


/// Adds pattern-matching-related methods to [AuctionViewerModel].
extension AuctionViewerModelPatterns on AuctionViewerModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuctionViewerModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuctionViewerModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuctionViewerModel value)  $default,){
final _that = this;
switch (_that) {
case _AuctionViewerModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuctionViewerModel value)?  $default,){
final _that = this;
switch (_that) {
case _AuctionViewerModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'can_bid')  bool canBid, @JsonKey(name: 'is_participant')  bool isParticipant, @JsonKey(name: 'has_commerce_register')  bool hasCommerceRegister, @JsonKey(name: 'commerce_register_blocked')  bool commerceRegisterBlocked, @JsonKey(name: 'has_book_access')  bool hasBookAccess, @JsonKey(name: 'book_purchased')  bool bookPurchased, @JsonKey(name: 'deposit_paid')  bool depositPaid, @JsonKey(name: 'is_winner')  bool isWinner, @JsonKey(name: 'can_appeal')  bool canAppeal, @JsonKey(name: 'existing_appeal')  ViewerAppealRefModel? existingAppeal, @JsonKey(name: 'has_final_payment')  bool hasFinalPayment, @JsonKey(name: 'is_staff')  bool isStaff,  String? role, @JsonKey(name: 'is_premium')  bool isPremium)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuctionViewerModel() when $default != null:
return $default(_that.canBid,_that.isParticipant,_that.hasCommerceRegister,_that.commerceRegisterBlocked,_that.hasBookAccess,_that.bookPurchased,_that.depositPaid,_that.isWinner,_that.canAppeal,_that.existingAppeal,_that.hasFinalPayment,_that.isStaff,_that.role,_that.isPremium);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'can_bid')  bool canBid, @JsonKey(name: 'is_participant')  bool isParticipant, @JsonKey(name: 'has_commerce_register')  bool hasCommerceRegister, @JsonKey(name: 'commerce_register_blocked')  bool commerceRegisterBlocked, @JsonKey(name: 'has_book_access')  bool hasBookAccess, @JsonKey(name: 'book_purchased')  bool bookPurchased, @JsonKey(name: 'deposit_paid')  bool depositPaid, @JsonKey(name: 'is_winner')  bool isWinner, @JsonKey(name: 'can_appeal')  bool canAppeal, @JsonKey(name: 'existing_appeal')  ViewerAppealRefModel? existingAppeal, @JsonKey(name: 'has_final_payment')  bool hasFinalPayment, @JsonKey(name: 'is_staff')  bool isStaff,  String? role, @JsonKey(name: 'is_premium')  bool isPremium)  $default,) {final _that = this;
switch (_that) {
case _AuctionViewerModel():
return $default(_that.canBid,_that.isParticipant,_that.hasCommerceRegister,_that.commerceRegisterBlocked,_that.hasBookAccess,_that.bookPurchased,_that.depositPaid,_that.isWinner,_that.canAppeal,_that.existingAppeal,_that.hasFinalPayment,_that.isStaff,_that.role,_that.isPremium);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'can_bid')  bool canBid, @JsonKey(name: 'is_participant')  bool isParticipant, @JsonKey(name: 'has_commerce_register')  bool hasCommerceRegister, @JsonKey(name: 'commerce_register_blocked')  bool commerceRegisterBlocked, @JsonKey(name: 'has_book_access')  bool hasBookAccess, @JsonKey(name: 'book_purchased')  bool bookPurchased, @JsonKey(name: 'deposit_paid')  bool depositPaid, @JsonKey(name: 'is_winner')  bool isWinner, @JsonKey(name: 'can_appeal')  bool canAppeal, @JsonKey(name: 'existing_appeal')  ViewerAppealRefModel? existingAppeal, @JsonKey(name: 'has_final_payment')  bool hasFinalPayment, @JsonKey(name: 'is_staff')  bool isStaff,  String? role, @JsonKey(name: 'is_premium')  bool isPremium)?  $default,) {final _that = this;
switch (_that) {
case _AuctionViewerModel() when $default != null:
return $default(_that.canBid,_that.isParticipant,_that.hasCommerceRegister,_that.commerceRegisterBlocked,_that.hasBookAccess,_that.bookPurchased,_that.depositPaid,_that.isWinner,_that.canAppeal,_that.existingAppeal,_that.hasFinalPayment,_that.isStaff,_that.role,_that.isPremium);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AuctionViewerModel extends AuctionViewerModel {
  const _AuctionViewerModel({@JsonKey(name: 'can_bid') this.canBid = false, @JsonKey(name: 'is_participant') this.isParticipant = false, @JsonKey(name: 'has_commerce_register') this.hasCommerceRegister = false, @JsonKey(name: 'commerce_register_blocked') this.commerceRegisterBlocked = false, @JsonKey(name: 'has_book_access') this.hasBookAccess = false, @JsonKey(name: 'book_purchased') this.bookPurchased = false, @JsonKey(name: 'deposit_paid') this.depositPaid = false, @JsonKey(name: 'is_winner') this.isWinner = false, @JsonKey(name: 'can_appeal') this.canAppeal = false, @JsonKey(name: 'existing_appeal') this.existingAppeal, @JsonKey(name: 'has_final_payment') this.hasFinalPayment = false, @JsonKey(name: 'is_staff') this.isStaff = false, this.role, @JsonKey(name: 'is_premium') this.isPremium = false}): super._();
  factory _AuctionViewerModel.fromJson(Map<String, dynamic> json) => _$AuctionViewerModelFromJson(json);

@override@JsonKey(name: 'can_bid') final  bool canBid;
@override@JsonKey(name: 'is_participant') final  bool isParticipant;
@override@JsonKey(name: 'has_commerce_register') final  bool hasCommerceRegister;
@override@JsonKey(name: 'commerce_register_blocked') final  bool commerceRegisterBlocked;
@override@JsonKey(name: 'has_book_access') final  bool hasBookAccess;
@override@JsonKey(name: 'book_purchased') final  bool bookPurchased;
@override@JsonKey(name: 'deposit_paid') final  bool depositPaid;
@override@JsonKey(name: 'is_winner') final  bool isWinner;
@override@JsonKey(name: 'can_appeal') final  bool canAppeal;
@override@JsonKey(name: 'existing_appeal') final  ViewerAppealRefModel? existingAppeal;
@override@JsonKey(name: 'has_final_payment') final  bool hasFinalPayment;
@override@JsonKey(name: 'is_staff') final  bool isStaff;
@override final  String? role;
@override@JsonKey(name: 'is_premium') final  bool isPremium;

/// Create a copy of AuctionViewerModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuctionViewerModelCopyWith<_AuctionViewerModel> get copyWith => __$AuctionViewerModelCopyWithImpl<_AuctionViewerModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuctionViewerModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuctionViewerModel&&(identical(other.canBid, canBid) || other.canBid == canBid)&&(identical(other.isParticipant, isParticipant) || other.isParticipant == isParticipant)&&(identical(other.hasCommerceRegister, hasCommerceRegister) || other.hasCommerceRegister == hasCommerceRegister)&&(identical(other.commerceRegisterBlocked, commerceRegisterBlocked) || other.commerceRegisterBlocked == commerceRegisterBlocked)&&(identical(other.hasBookAccess, hasBookAccess) || other.hasBookAccess == hasBookAccess)&&(identical(other.bookPurchased, bookPurchased) || other.bookPurchased == bookPurchased)&&(identical(other.depositPaid, depositPaid) || other.depositPaid == depositPaid)&&(identical(other.isWinner, isWinner) || other.isWinner == isWinner)&&(identical(other.canAppeal, canAppeal) || other.canAppeal == canAppeal)&&(identical(other.existingAppeal, existingAppeal) || other.existingAppeal == existingAppeal)&&(identical(other.hasFinalPayment, hasFinalPayment) || other.hasFinalPayment == hasFinalPayment)&&(identical(other.isStaff, isStaff) || other.isStaff == isStaff)&&(identical(other.role, role) || other.role == role)&&(identical(other.isPremium, isPremium) || other.isPremium == isPremium));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,canBid,isParticipant,hasCommerceRegister,commerceRegisterBlocked,hasBookAccess,bookPurchased,depositPaid,isWinner,canAppeal,existingAppeal,hasFinalPayment,isStaff,role,isPremium);
}

@override
String toString() {
    return 'AuctionViewerModel(canBid: $canBid, isParticipant: $isParticipant, hasCommerceRegister: $hasCommerceRegister, commerceRegisterBlocked: $commerceRegisterBlocked, hasBookAccess: $hasBookAccess, bookPurchased: $bookPurchased, depositPaid: $depositPaid, isWinner: $isWinner, canAppeal: $canAppeal, existingAppeal: $existingAppeal, hasFinalPayment: $hasFinalPayment, isStaff: $isStaff, role: $role, isPremium: $isPremium)';
}


}

/// @nodoc
abstract mixin class _$AuctionViewerModelCopyWith<$Res> implements $AuctionViewerModelCopyWith<$Res> {
  factory _$AuctionViewerModelCopyWith(_AuctionViewerModel value, $Res Function(_AuctionViewerModel) _then) = __$AuctionViewerModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'can_bid') bool canBid,@JsonKey(name: 'is_participant') bool isParticipant,@JsonKey(name: 'has_commerce_register') bool hasCommerceRegister,@JsonKey(name: 'commerce_register_blocked') bool commerceRegisterBlocked,@JsonKey(name: 'has_book_access') bool hasBookAccess,@JsonKey(name: 'book_purchased') bool bookPurchased,@JsonKey(name: 'deposit_paid') bool depositPaid,@JsonKey(name: 'is_winner') bool isWinner,@JsonKey(name: 'can_appeal') bool canAppeal,@JsonKey(name: 'existing_appeal') ViewerAppealRefModel? existingAppeal,@JsonKey(name: 'has_final_payment') bool hasFinalPayment,@JsonKey(name: 'is_staff') bool isStaff, String? role,@JsonKey(name: 'is_premium') bool isPremium
});


@override $ViewerAppealRefModelCopyWith<$Res>? get existingAppeal;

}
/// @nodoc
class __$AuctionViewerModelCopyWithImpl<$Res>
    implements _$AuctionViewerModelCopyWith<$Res> {
  __$AuctionViewerModelCopyWithImpl(this._self, this._then);

  final _AuctionViewerModel _self;
  final $Res Function(_AuctionViewerModel) _then;

/// Create a copy of AuctionViewerModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? canBid = null,Object? isParticipant = null,Object? hasCommerceRegister = null,Object? commerceRegisterBlocked = null,Object? hasBookAccess = null,Object? bookPurchased = null,Object? depositPaid = null,Object? isWinner = null,Object? canAppeal = null,Object? existingAppeal = freezed,Object? hasFinalPayment = null,Object? isStaff = null,Object? role = freezed,Object? isPremium = null,}) {
  return _then(_AuctionViewerModel(
canBid: null == canBid ? _self.canBid : canBid // ignore: cast_nullable_to_non_nullable
as bool,isParticipant: null == isParticipant ? _self.isParticipant : isParticipant // ignore: cast_nullable_to_non_nullable
as bool,hasCommerceRegister: null == hasCommerceRegister ? _self.hasCommerceRegister : hasCommerceRegister // ignore: cast_nullable_to_non_nullable
as bool,commerceRegisterBlocked: null == commerceRegisterBlocked ? _self.commerceRegisterBlocked : commerceRegisterBlocked // ignore: cast_nullable_to_non_nullable
as bool,hasBookAccess: null == hasBookAccess ? _self.hasBookAccess : hasBookAccess // ignore: cast_nullable_to_non_nullable
as bool,bookPurchased: null == bookPurchased ? _self.bookPurchased : bookPurchased // ignore: cast_nullable_to_non_nullable
as bool,depositPaid: null == depositPaid ? _self.depositPaid : depositPaid // ignore: cast_nullable_to_non_nullable
as bool,isWinner: null == isWinner ? _self.isWinner : isWinner // ignore: cast_nullable_to_non_nullable
as bool,canAppeal: null == canAppeal ? _self.canAppeal : canAppeal // ignore: cast_nullable_to_non_nullable
as bool,existingAppeal: freezed == existingAppeal ? _self.existingAppeal : existingAppeal // ignore: cast_nullable_to_non_nullable
as ViewerAppealRefModel?,hasFinalPayment: null == hasFinalPayment ? _self.hasFinalPayment : hasFinalPayment // ignore: cast_nullable_to_non_nullable
as bool,isStaff: null == isStaff ? _self.isStaff : isStaff // ignore: cast_nullable_to_non_nullable
as bool,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,isPremium: null == isPremium ? _self.isPremium : isPremium // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of AuctionViewerModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ViewerAppealRefModelCopyWith<$Res>? get existingAppeal {
    if (_self.existingAppeal == null) {
    return null;
  }

  return $ViewerAppealRefModelCopyWith<$Res>(_self.existingAppeal!, (value) {
    return _then(_self.copyWith(existingAppeal: value));
  });
}
}

// dart format on
