// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auction_viewer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ViewerAppealRefModel _$ViewerAppealRefModelFromJson(Map<String, dynamic> json) {
  return _ViewerAppealRefModel.fromJson(json);
}

/// @nodoc
mixin _$ViewerAppealRefModel {
  String? get id => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_label')
  String? get statusLabel => throw _privateConstructorUsedError;

  /// Serializes this ViewerAppealRefModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ViewerAppealRefModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ViewerAppealRefModelCopyWith<ViewerAppealRefModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewerAppealRefModelCopyWith<$Res> {
  factory $ViewerAppealRefModelCopyWith(
    ViewerAppealRefModel value,
    $Res Function(ViewerAppealRefModel) then,
  ) = _$ViewerAppealRefModelCopyWithImpl<$Res, ViewerAppealRefModel>;
  @useResult
  $Res call({
    String? id,
    String? status,
    @JsonKey(name: 'status_label') String? statusLabel,
  });
}

/// @nodoc
class _$ViewerAppealRefModelCopyWithImpl<
  $Res,
  $Val extends ViewerAppealRefModel
>
    implements $ViewerAppealRefModelCopyWith<$Res> {
  _$ViewerAppealRefModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ViewerAppealRefModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? status = freezed,
    Object? statusLabel = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            status: freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String?,
            statusLabel: freezed == statusLabel
                ? _value.statusLabel
                : statusLabel // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ViewerAppealRefModelImplCopyWith<$Res>
    implements $ViewerAppealRefModelCopyWith<$Res> {
  factory _$$ViewerAppealRefModelImplCopyWith(
    _$ViewerAppealRefModelImpl value,
    $Res Function(_$ViewerAppealRefModelImpl) then,
  ) = __$$ViewerAppealRefModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    String? status,
    @JsonKey(name: 'status_label') String? statusLabel,
  });
}

/// @nodoc
class __$$ViewerAppealRefModelImplCopyWithImpl<$Res>
    extends _$ViewerAppealRefModelCopyWithImpl<$Res, _$ViewerAppealRefModelImpl>
    implements _$$ViewerAppealRefModelImplCopyWith<$Res> {
  __$$ViewerAppealRefModelImplCopyWithImpl(
    _$ViewerAppealRefModelImpl _value,
    $Res Function(_$ViewerAppealRefModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ViewerAppealRefModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? status = freezed,
    Object? statusLabel = freezed,
  }) {
    return _then(
      _$ViewerAppealRefModelImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String?,
        statusLabel: freezed == statusLabel
            ? _value.statusLabel
            : statusLabel // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ViewerAppealRefModelImpl extends _ViewerAppealRefModel {
  const _$ViewerAppealRefModelImpl({
    this.id,
    this.status,
    @JsonKey(name: 'status_label') this.statusLabel,
  }) : super._();

  factory _$ViewerAppealRefModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ViewerAppealRefModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String? status;
  @override
  @JsonKey(name: 'status_label')
  final String? statusLabel;

  @override
  String toString() {
    return 'ViewerAppealRefModel(id: $id, status: $status, statusLabel: $statusLabel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ViewerAppealRefModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusLabel, statusLabel) ||
                other.statusLabel == statusLabel));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, status, statusLabel);

  /// Create a copy of ViewerAppealRefModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ViewerAppealRefModelImplCopyWith<_$ViewerAppealRefModelImpl>
  get copyWith =>
      __$$ViewerAppealRefModelImplCopyWithImpl<_$ViewerAppealRefModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ViewerAppealRefModelImplToJson(this);
  }
}

abstract class _ViewerAppealRefModel extends ViewerAppealRefModel {
  const factory _ViewerAppealRefModel({
    final String? id,
    final String? status,
    @JsonKey(name: 'status_label') final String? statusLabel,
  }) = _$ViewerAppealRefModelImpl;
  const _ViewerAppealRefModel._() : super._();

  factory _ViewerAppealRefModel.fromJson(Map<String, dynamic> json) =
      _$ViewerAppealRefModelImpl.fromJson;

  @override
  String? get id;
  @override
  String? get status;
  @override
  @JsonKey(name: 'status_label')
  String? get statusLabel;

  /// Create a copy of ViewerAppealRefModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ViewerAppealRefModelImplCopyWith<_$ViewerAppealRefModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}

AuctionViewerModel _$AuctionViewerModelFromJson(Map<String, dynamic> json) {
  return _AuctionViewerModel.fromJson(json);
}

/// @nodoc
mixin _$AuctionViewerModel {
  @JsonKey(name: 'can_bid')
  bool get canBid => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_participant')
  bool get isParticipant => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_commerce_register')
  bool get hasCommerceRegister => throw _privateConstructorUsedError;
  @JsonKey(name: 'commerce_register_blocked')
  bool get commerceRegisterBlocked => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_book_access')
  bool get hasBookAccess => throw _privateConstructorUsedError;
  @JsonKey(name: 'book_purchased')
  bool get bookPurchased => throw _privateConstructorUsedError;
  @JsonKey(name: 'deposit_paid')
  bool get depositPaid => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_winner')
  bool get isWinner => throw _privateConstructorUsedError;
  @JsonKey(name: 'can_appeal')
  bool get canAppeal => throw _privateConstructorUsedError;
  @JsonKey(name: 'existing_appeal')
  ViewerAppealRefModel? get existingAppeal =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'has_final_payment')
  bool get hasFinalPayment => throw _privateConstructorUsedError;

  /// Serializes this AuctionViewerModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuctionViewerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuctionViewerModelCopyWith<AuctionViewerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuctionViewerModelCopyWith<$Res> {
  factory $AuctionViewerModelCopyWith(
    AuctionViewerModel value,
    $Res Function(AuctionViewerModel) then,
  ) = _$AuctionViewerModelCopyWithImpl<$Res, AuctionViewerModel>;
  @useResult
  $Res call({
    @JsonKey(name: 'can_bid') bool canBid,
    @JsonKey(name: 'is_participant') bool isParticipant,
    @JsonKey(name: 'has_commerce_register') bool hasCommerceRegister,
    @JsonKey(name: 'commerce_register_blocked') bool commerceRegisterBlocked,
    @JsonKey(name: 'has_book_access') bool hasBookAccess,
    @JsonKey(name: 'book_purchased') bool bookPurchased,
    @JsonKey(name: 'deposit_paid') bool depositPaid,
    @JsonKey(name: 'is_winner') bool isWinner,
    @JsonKey(name: 'can_appeal') bool canAppeal,
    @JsonKey(name: 'existing_appeal') ViewerAppealRefModel? existingAppeal,
    @JsonKey(name: 'has_final_payment') bool hasFinalPayment,
  });

  $ViewerAppealRefModelCopyWith<$Res>? get existingAppeal;
}

/// @nodoc
class _$AuctionViewerModelCopyWithImpl<$Res, $Val extends AuctionViewerModel>
    implements $AuctionViewerModelCopyWith<$Res> {
  _$AuctionViewerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuctionViewerModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? canBid = null,
    Object? isParticipant = null,
    Object? hasCommerceRegister = null,
    Object? commerceRegisterBlocked = null,
    Object? hasBookAccess = null,
    Object? bookPurchased = null,
    Object? depositPaid = null,
    Object? isWinner = null,
    Object? canAppeal = null,
    Object? existingAppeal = freezed,
    Object? hasFinalPayment = null,
  }) {
    return _then(
      _value.copyWith(
            canBid: null == canBid
                ? _value.canBid
                : canBid // ignore: cast_nullable_to_non_nullable
                      as bool,
            isParticipant: null == isParticipant
                ? _value.isParticipant
                : isParticipant // ignore: cast_nullable_to_non_nullable
                      as bool,
            hasCommerceRegister: null == hasCommerceRegister
                ? _value.hasCommerceRegister
                : hasCommerceRegister // ignore: cast_nullable_to_non_nullable
                      as bool,
            commerceRegisterBlocked: null == commerceRegisterBlocked
                ? _value.commerceRegisterBlocked
                : commerceRegisterBlocked // ignore: cast_nullable_to_non_nullable
                      as bool,
            hasBookAccess: null == hasBookAccess
                ? _value.hasBookAccess
                : hasBookAccess // ignore: cast_nullable_to_non_nullable
                      as bool,
            bookPurchased: null == bookPurchased
                ? _value.bookPurchased
                : bookPurchased // ignore: cast_nullable_to_non_nullable
                      as bool,
            depositPaid: null == depositPaid
                ? _value.depositPaid
                : depositPaid // ignore: cast_nullable_to_non_nullable
                      as bool,
            isWinner: null == isWinner
                ? _value.isWinner
                : isWinner // ignore: cast_nullable_to_non_nullable
                      as bool,
            canAppeal: null == canAppeal
                ? _value.canAppeal
                : canAppeal // ignore: cast_nullable_to_non_nullable
                      as bool,
            existingAppeal: freezed == existingAppeal
                ? _value.existingAppeal
                : existingAppeal // ignore: cast_nullable_to_non_nullable
                      as ViewerAppealRefModel?,
            hasFinalPayment: null == hasFinalPayment
                ? _value.hasFinalPayment
                : hasFinalPayment // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }

  /// Create a copy of AuctionViewerModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ViewerAppealRefModelCopyWith<$Res>? get existingAppeal {
    if (_value.existingAppeal == null) {
      return null;
    }

    return $ViewerAppealRefModelCopyWith<$Res>(_value.existingAppeal!, (value) {
      return _then(_value.copyWith(existingAppeal: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuctionViewerModelImplCopyWith<$Res>
    implements $AuctionViewerModelCopyWith<$Res> {
  factory _$$AuctionViewerModelImplCopyWith(
    _$AuctionViewerModelImpl value,
    $Res Function(_$AuctionViewerModelImpl) then,
  ) = __$$AuctionViewerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'can_bid') bool canBid,
    @JsonKey(name: 'is_participant') bool isParticipant,
    @JsonKey(name: 'has_commerce_register') bool hasCommerceRegister,
    @JsonKey(name: 'commerce_register_blocked') bool commerceRegisterBlocked,
    @JsonKey(name: 'has_book_access') bool hasBookAccess,
    @JsonKey(name: 'book_purchased') bool bookPurchased,
    @JsonKey(name: 'deposit_paid') bool depositPaid,
    @JsonKey(name: 'is_winner') bool isWinner,
    @JsonKey(name: 'can_appeal') bool canAppeal,
    @JsonKey(name: 'existing_appeal') ViewerAppealRefModel? existingAppeal,
    @JsonKey(name: 'has_final_payment') bool hasFinalPayment,
  });

  @override
  $ViewerAppealRefModelCopyWith<$Res>? get existingAppeal;
}

/// @nodoc
class __$$AuctionViewerModelImplCopyWithImpl<$Res>
    extends _$AuctionViewerModelCopyWithImpl<$Res, _$AuctionViewerModelImpl>
    implements _$$AuctionViewerModelImplCopyWith<$Res> {
  __$$AuctionViewerModelImplCopyWithImpl(
    _$AuctionViewerModelImpl _value,
    $Res Function(_$AuctionViewerModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuctionViewerModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? canBid = null,
    Object? isParticipant = null,
    Object? hasCommerceRegister = null,
    Object? commerceRegisterBlocked = null,
    Object? hasBookAccess = null,
    Object? bookPurchased = null,
    Object? depositPaid = null,
    Object? isWinner = null,
    Object? canAppeal = null,
    Object? existingAppeal = freezed,
    Object? hasFinalPayment = null,
  }) {
    return _then(
      _$AuctionViewerModelImpl(
        canBid: null == canBid
            ? _value.canBid
            : canBid // ignore: cast_nullable_to_non_nullable
                  as bool,
        isParticipant: null == isParticipant
            ? _value.isParticipant
            : isParticipant // ignore: cast_nullable_to_non_nullable
                  as bool,
        hasCommerceRegister: null == hasCommerceRegister
            ? _value.hasCommerceRegister
            : hasCommerceRegister // ignore: cast_nullable_to_non_nullable
                  as bool,
        commerceRegisterBlocked: null == commerceRegisterBlocked
            ? _value.commerceRegisterBlocked
            : commerceRegisterBlocked // ignore: cast_nullable_to_non_nullable
                  as bool,
        hasBookAccess: null == hasBookAccess
            ? _value.hasBookAccess
            : hasBookAccess // ignore: cast_nullable_to_non_nullable
                  as bool,
        bookPurchased: null == bookPurchased
            ? _value.bookPurchased
            : bookPurchased // ignore: cast_nullable_to_non_nullable
                  as bool,
        depositPaid: null == depositPaid
            ? _value.depositPaid
            : depositPaid // ignore: cast_nullable_to_non_nullable
                  as bool,
        isWinner: null == isWinner
            ? _value.isWinner
            : isWinner // ignore: cast_nullable_to_non_nullable
                  as bool,
        canAppeal: null == canAppeal
            ? _value.canAppeal
            : canAppeal // ignore: cast_nullable_to_non_nullable
                  as bool,
        existingAppeal: freezed == existingAppeal
            ? _value.existingAppeal
            : existingAppeal // ignore: cast_nullable_to_non_nullable
                  as ViewerAppealRefModel?,
        hasFinalPayment: null == hasFinalPayment
            ? _value.hasFinalPayment
            : hasFinalPayment // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AuctionViewerModelImpl extends _AuctionViewerModel {
  const _$AuctionViewerModelImpl({
    @JsonKey(name: 'can_bid') this.canBid = false,
    @JsonKey(name: 'is_participant') this.isParticipant = false,
    @JsonKey(name: 'has_commerce_register') this.hasCommerceRegister = false,
    @JsonKey(name: 'commerce_register_blocked')
    this.commerceRegisterBlocked = false,
    @JsonKey(name: 'has_book_access') this.hasBookAccess = false,
    @JsonKey(name: 'book_purchased') this.bookPurchased = false,
    @JsonKey(name: 'deposit_paid') this.depositPaid = false,
    @JsonKey(name: 'is_winner') this.isWinner = false,
    @JsonKey(name: 'can_appeal') this.canAppeal = false,
    @JsonKey(name: 'existing_appeal') this.existingAppeal,
    @JsonKey(name: 'has_final_payment') this.hasFinalPayment = false,
  }) : super._();

  factory _$AuctionViewerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuctionViewerModelImplFromJson(json);

  @override
  @JsonKey(name: 'can_bid')
  final bool canBid;
  @override
  @JsonKey(name: 'is_participant')
  final bool isParticipant;
  @override
  @JsonKey(name: 'has_commerce_register')
  final bool hasCommerceRegister;
  @override
  @JsonKey(name: 'commerce_register_blocked')
  final bool commerceRegisterBlocked;
  @override
  @JsonKey(name: 'has_book_access')
  final bool hasBookAccess;
  @override
  @JsonKey(name: 'book_purchased')
  final bool bookPurchased;
  @override
  @JsonKey(name: 'deposit_paid')
  final bool depositPaid;
  @override
  @JsonKey(name: 'is_winner')
  final bool isWinner;
  @override
  @JsonKey(name: 'can_appeal')
  final bool canAppeal;
  @override
  @JsonKey(name: 'existing_appeal')
  final ViewerAppealRefModel? existingAppeal;
  @override
  @JsonKey(name: 'has_final_payment')
  final bool hasFinalPayment;

  @override
  String toString() {
    return 'AuctionViewerModel(canBid: $canBid, isParticipant: $isParticipant, hasCommerceRegister: $hasCommerceRegister, commerceRegisterBlocked: $commerceRegisterBlocked, hasBookAccess: $hasBookAccess, bookPurchased: $bookPurchased, depositPaid: $depositPaid, isWinner: $isWinner, canAppeal: $canAppeal, existingAppeal: $existingAppeal, hasFinalPayment: $hasFinalPayment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuctionViewerModelImpl &&
            (identical(other.canBid, canBid) || other.canBid == canBid) &&
            (identical(other.isParticipant, isParticipant) ||
                other.isParticipant == isParticipant) &&
            (identical(other.hasCommerceRegister, hasCommerceRegister) ||
                other.hasCommerceRegister == hasCommerceRegister) &&
            (identical(
                  other.commerceRegisterBlocked,
                  commerceRegisterBlocked,
                ) ||
                other.commerceRegisterBlocked == commerceRegisterBlocked) &&
            (identical(other.hasBookAccess, hasBookAccess) ||
                other.hasBookAccess == hasBookAccess) &&
            (identical(other.bookPurchased, bookPurchased) ||
                other.bookPurchased == bookPurchased) &&
            (identical(other.depositPaid, depositPaid) ||
                other.depositPaid == depositPaid) &&
            (identical(other.isWinner, isWinner) ||
                other.isWinner == isWinner) &&
            (identical(other.canAppeal, canAppeal) ||
                other.canAppeal == canAppeal) &&
            (identical(other.existingAppeal, existingAppeal) ||
                other.existingAppeal == existingAppeal) &&
            (identical(other.hasFinalPayment, hasFinalPayment) ||
                other.hasFinalPayment == hasFinalPayment));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    canBid,
    isParticipant,
    hasCommerceRegister,
    commerceRegisterBlocked,
    hasBookAccess,
    bookPurchased,
    depositPaid,
    isWinner,
    canAppeal,
    existingAppeal,
    hasFinalPayment,
  );

  /// Create a copy of AuctionViewerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuctionViewerModelImplCopyWith<_$AuctionViewerModelImpl> get copyWith =>
      __$$AuctionViewerModelImplCopyWithImpl<_$AuctionViewerModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AuctionViewerModelImplToJson(this);
  }
}

abstract class _AuctionViewerModel extends AuctionViewerModel {
  const factory _AuctionViewerModel({
    @JsonKey(name: 'can_bid') final bool canBid,
    @JsonKey(name: 'is_participant') final bool isParticipant,
    @JsonKey(name: 'has_commerce_register') final bool hasCommerceRegister,
    @JsonKey(name: 'commerce_register_blocked')
    final bool commerceRegisterBlocked,
    @JsonKey(name: 'has_book_access') final bool hasBookAccess,
    @JsonKey(name: 'book_purchased') final bool bookPurchased,
    @JsonKey(name: 'deposit_paid') final bool depositPaid,
    @JsonKey(name: 'is_winner') final bool isWinner,
    @JsonKey(name: 'can_appeal') final bool canAppeal,
    @JsonKey(name: 'existing_appeal')
    final ViewerAppealRefModel? existingAppeal,
    @JsonKey(name: 'has_final_payment') final bool hasFinalPayment,
  }) = _$AuctionViewerModelImpl;
  const _AuctionViewerModel._() : super._();

  factory _AuctionViewerModel.fromJson(Map<String, dynamic> json) =
      _$AuctionViewerModelImpl.fromJson;

  @override
  @JsonKey(name: 'can_bid')
  bool get canBid;
  @override
  @JsonKey(name: 'is_participant')
  bool get isParticipant;
  @override
  @JsonKey(name: 'has_commerce_register')
  bool get hasCommerceRegister;
  @override
  @JsonKey(name: 'commerce_register_blocked')
  bool get commerceRegisterBlocked;
  @override
  @JsonKey(name: 'has_book_access')
  bool get hasBookAccess;
  @override
  @JsonKey(name: 'book_purchased')
  bool get bookPurchased;
  @override
  @JsonKey(name: 'deposit_paid')
  bool get depositPaid;
  @override
  @JsonKey(name: 'is_winner')
  bool get isWinner;
  @override
  @JsonKey(name: 'can_appeal')
  bool get canAppeal;
  @override
  @JsonKey(name: 'existing_appeal')
  ViewerAppealRefModel? get existingAppeal;
  @override
  @JsonKey(name: 'has_final_payment')
  bool get hasFinalPayment;

  /// Create a copy of AuctionViewerModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuctionViewerModelImplCopyWith<_$AuctionViewerModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
