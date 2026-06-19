// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auction_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

NamedRefModel _$NamedRefModelFromJson(Map<String, dynamic> json) {
  return _NamedRefModel.fromJson(json);
}

/// @nodoc
mixin _$NamedRefModel {
  dynamic get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this NamedRefModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NamedRefModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NamedRefModelCopyWith<NamedRefModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NamedRefModelCopyWith<$Res> {
  factory $NamedRefModelCopyWith(
    NamedRefModel value,
    $Res Function(NamedRefModel) then,
  ) = _$NamedRefModelCopyWithImpl<$Res, NamedRefModel>;
  @useResult
  $Res call({dynamic id, String? name});
}

/// @nodoc
class _$NamedRefModelCopyWithImpl<$Res, $Val extends NamedRefModel>
    implements $NamedRefModelCopyWith<$Res> {
  _$NamedRefModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NamedRefModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = freezed, Object? name = freezed}) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            name: freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$NamedRefModelImplCopyWith<$Res>
    implements $NamedRefModelCopyWith<$Res> {
  factory _$$NamedRefModelImplCopyWith(
    _$NamedRefModelImpl value,
    $Res Function(_$NamedRefModelImpl) then,
  ) = __$$NamedRefModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic id, String? name});
}

/// @nodoc
class __$$NamedRefModelImplCopyWithImpl<$Res>
    extends _$NamedRefModelCopyWithImpl<$Res, _$NamedRefModelImpl>
    implements _$$NamedRefModelImplCopyWith<$Res> {
  __$$NamedRefModelImplCopyWithImpl(
    _$NamedRefModelImpl _value,
    $Res Function(_$NamedRefModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NamedRefModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = freezed, Object? name = freezed}) {
    return _then(
      _$NamedRefModelImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        name: freezed == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$NamedRefModelImpl extends _NamedRefModel {
  const _$NamedRefModelImpl({this.id, this.name}) : super._();

  factory _$NamedRefModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NamedRefModelImplFromJson(json);

  @override
  final dynamic id;
  @override
  final String? name;

  @override
  String toString() {
    return 'NamedRefModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NamedRefModelImpl &&
            const DeepCollectionEquality().equals(other.id, id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id), name);

  /// Create a copy of NamedRefModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NamedRefModelImplCopyWith<_$NamedRefModelImpl> get copyWith =>
      __$$NamedRefModelImplCopyWithImpl<_$NamedRefModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NamedRefModelImplToJson(this);
  }
}

abstract class _NamedRefModel extends NamedRefModel {
  const factory _NamedRefModel({final dynamic id, final String? name}) =
      _$NamedRefModelImpl;
  const _NamedRefModel._() : super._();

  factory _NamedRefModel.fromJson(Map<String, dynamic> json) =
      _$NamedRefModelImpl.fromJson;

  @override
  dynamic get id;
  @override
  String? get name;

  /// Create a copy of NamedRefModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NamedRefModelImplCopyWith<_$NamedRefModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AuctionModel _$AuctionModelFromJson(Map<String, dynamic> json) {
  return _AuctionModel.fromJson(json);
}

/// @nodoc
mixin _$AuctionModel {
  String get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'auction_type')
  String? get auctionType => throw _privateConstructorUsedError;
  @JsonKey(name: 'cover_photo_url')
  String? get coverPhotoUrl => throw _privateConstructorUsedError;
  List<String> get photos => throw _privateConstructorUsedError;
  NamedRefModel? get category => throw _privateConstructorUsedError;
  NamedRefModel? get entity => throw _privateConstructorUsedError;
  WilayaRefModel? get wilaya => throw _privateConstructorUsedError;
  @JsonKey(name: 'asset_location')
  String? get assetLocation => throw _privateConstructorUsedError;
  @JsonKey(name: 'opening_price')
  MoneyModel? get openingPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_price')
  MoneyModel? get currentPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'deposit_amount')
  MoneyModel? get depositAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'entry_fee')
  MoneyModel? get entryFee => throw _privateConstructorUsedError;
  @JsonKey(name: 'book_price')
  MoneyModel? get bookPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'bid_count')
  int get bidCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'seconds_remaining')
  int get secondsRemaining => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_live')
  bool get isLive => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_biddable')
  bool get isBiddable => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_ended')
  bool get hasEnded => throw _privateConstructorUsedError;
  @JsonKey(name: 'winner_alias')
  String? get winnerAlias => throw _privateConstructorUsedError;
  @JsonKey(name: 'final_price')
  MoneyModel? get finalPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'requires_commerce_register')
  bool get requiresCommerceRegister => throw _privateConstructorUsedError;
  @JsonKey(name: 'condition_book')
  ConditionBookModel? get conditionBook => throw _privateConstructorUsedError;

  /// Serializes this AuctionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuctionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuctionModelCopyWith<AuctionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuctionModelCopyWith<$Res> {
  factory $AuctionModelCopyWith(
    AuctionModel value,
    $Res Function(AuctionModel) then,
  ) = _$AuctionModelCopyWithImpl<$Res, AuctionModel>;
  @useResult
  $Res call({
    String id,
    String? title,
    String? description,
    String? status,
    @JsonKey(name: 'auction_type') String? auctionType,
    @JsonKey(name: 'cover_photo_url') String? coverPhotoUrl,
    List<String> photos,
    NamedRefModel? category,
    NamedRefModel? entity,
    WilayaRefModel? wilaya,
    @JsonKey(name: 'asset_location') String? assetLocation,
    @JsonKey(name: 'opening_price') MoneyModel? openingPrice,
    @JsonKey(name: 'current_price') MoneyModel? currentPrice,
    @JsonKey(name: 'deposit_amount') MoneyModel? depositAmount,
    @JsonKey(name: 'entry_fee') MoneyModel? entryFee,
    @JsonKey(name: 'book_price') MoneyModel? bookPrice,
    @JsonKey(name: 'bid_count') int bidCount,
    @JsonKey(name: 'seconds_remaining') int secondsRemaining,
    @JsonKey(name: 'is_live') bool isLive,
    @JsonKey(name: 'is_biddable') bool isBiddable,
    @JsonKey(name: 'has_ended') bool hasEnded,
    @JsonKey(name: 'winner_alias') String? winnerAlias,
    @JsonKey(name: 'final_price') MoneyModel? finalPrice,
    @JsonKey(name: 'requires_commerce_register') bool requiresCommerceRegister,
    @JsonKey(name: 'condition_book') ConditionBookModel? conditionBook,
  });

  $NamedRefModelCopyWith<$Res>? get category;
  $NamedRefModelCopyWith<$Res>? get entity;
  $WilayaRefModelCopyWith<$Res>? get wilaya;
  $MoneyModelCopyWith<$Res>? get openingPrice;
  $MoneyModelCopyWith<$Res>? get currentPrice;
  $MoneyModelCopyWith<$Res>? get depositAmount;
  $MoneyModelCopyWith<$Res>? get entryFee;
  $MoneyModelCopyWith<$Res>? get bookPrice;
  $MoneyModelCopyWith<$Res>? get finalPrice;
  $ConditionBookModelCopyWith<$Res>? get conditionBook;
}

/// @nodoc
class _$AuctionModelCopyWithImpl<$Res, $Val extends AuctionModel>
    implements $AuctionModelCopyWith<$Res> {
  _$AuctionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuctionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? description = freezed,
    Object? status = freezed,
    Object? auctionType = freezed,
    Object? coverPhotoUrl = freezed,
    Object? photos = null,
    Object? category = freezed,
    Object? entity = freezed,
    Object? wilaya = freezed,
    Object? assetLocation = freezed,
    Object? openingPrice = freezed,
    Object? currentPrice = freezed,
    Object? depositAmount = freezed,
    Object? entryFee = freezed,
    Object? bookPrice = freezed,
    Object? bidCount = null,
    Object? secondsRemaining = null,
    Object? isLive = null,
    Object? isBiddable = null,
    Object? hasEnded = null,
    Object? winnerAlias = freezed,
    Object? finalPrice = freezed,
    Object? requiresCommerceRegister = null,
    Object? conditionBook = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            title: freezed == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String?,
            description: freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String?,
            status: freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String?,
            auctionType: freezed == auctionType
                ? _value.auctionType
                : auctionType // ignore: cast_nullable_to_non_nullable
                      as String?,
            coverPhotoUrl: freezed == coverPhotoUrl
                ? _value.coverPhotoUrl
                : coverPhotoUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            photos: null == photos
                ? _value.photos
                : photos // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            category: freezed == category
                ? _value.category
                : category // ignore: cast_nullable_to_non_nullable
                      as NamedRefModel?,
            entity: freezed == entity
                ? _value.entity
                : entity // ignore: cast_nullable_to_non_nullable
                      as NamedRefModel?,
            wilaya: freezed == wilaya
                ? _value.wilaya
                : wilaya // ignore: cast_nullable_to_non_nullable
                      as WilayaRefModel?,
            assetLocation: freezed == assetLocation
                ? _value.assetLocation
                : assetLocation // ignore: cast_nullable_to_non_nullable
                      as String?,
            openingPrice: freezed == openingPrice
                ? _value.openingPrice
                : openingPrice // ignore: cast_nullable_to_non_nullable
                      as MoneyModel?,
            currentPrice: freezed == currentPrice
                ? _value.currentPrice
                : currentPrice // ignore: cast_nullable_to_non_nullable
                      as MoneyModel?,
            depositAmount: freezed == depositAmount
                ? _value.depositAmount
                : depositAmount // ignore: cast_nullable_to_non_nullable
                      as MoneyModel?,
            entryFee: freezed == entryFee
                ? _value.entryFee
                : entryFee // ignore: cast_nullable_to_non_nullable
                      as MoneyModel?,
            bookPrice: freezed == bookPrice
                ? _value.bookPrice
                : bookPrice // ignore: cast_nullable_to_non_nullable
                      as MoneyModel?,
            bidCount: null == bidCount
                ? _value.bidCount
                : bidCount // ignore: cast_nullable_to_non_nullable
                      as int,
            secondsRemaining: null == secondsRemaining
                ? _value.secondsRemaining
                : secondsRemaining // ignore: cast_nullable_to_non_nullable
                      as int,
            isLive: null == isLive
                ? _value.isLive
                : isLive // ignore: cast_nullable_to_non_nullable
                      as bool,
            isBiddable: null == isBiddable
                ? _value.isBiddable
                : isBiddable // ignore: cast_nullable_to_non_nullable
                      as bool,
            hasEnded: null == hasEnded
                ? _value.hasEnded
                : hasEnded // ignore: cast_nullable_to_non_nullable
                      as bool,
            winnerAlias: freezed == winnerAlias
                ? _value.winnerAlias
                : winnerAlias // ignore: cast_nullable_to_non_nullable
                      as String?,
            finalPrice: freezed == finalPrice
                ? _value.finalPrice
                : finalPrice // ignore: cast_nullable_to_non_nullable
                      as MoneyModel?,
            requiresCommerceRegister: null == requiresCommerceRegister
                ? _value.requiresCommerceRegister
                : requiresCommerceRegister // ignore: cast_nullable_to_non_nullable
                      as bool,
            conditionBook: freezed == conditionBook
                ? _value.conditionBook
                : conditionBook // ignore: cast_nullable_to_non_nullable
                      as ConditionBookModel?,
          )
          as $Val,
    );
  }

  /// Create a copy of AuctionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NamedRefModelCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $NamedRefModelCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }

  /// Create a copy of AuctionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NamedRefModelCopyWith<$Res>? get entity {
    if (_value.entity == null) {
      return null;
    }

    return $NamedRefModelCopyWith<$Res>(_value.entity!, (value) {
      return _then(_value.copyWith(entity: value) as $Val);
    });
  }

  /// Create a copy of AuctionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WilayaRefModelCopyWith<$Res>? get wilaya {
    if (_value.wilaya == null) {
      return null;
    }

    return $WilayaRefModelCopyWith<$Res>(_value.wilaya!, (value) {
      return _then(_value.copyWith(wilaya: value) as $Val);
    });
  }

  /// Create a copy of AuctionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyModelCopyWith<$Res>? get openingPrice {
    if (_value.openingPrice == null) {
      return null;
    }

    return $MoneyModelCopyWith<$Res>(_value.openingPrice!, (value) {
      return _then(_value.copyWith(openingPrice: value) as $Val);
    });
  }

  /// Create a copy of AuctionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyModelCopyWith<$Res>? get currentPrice {
    if (_value.currentPrice == null) {
      return null;
    }

    return $MoneyModelCopyWith<$Res>(_value.currentPrice!, (value) {
      return _then(_value.copyWith(currentPrice: value) as $Val);
    });
  }

  /// Create a copy of AuctionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyModelCopyWith<$Res>? get depositAmount {
    if (_value.depositAmount == null) {
      return null;
    }

    return $MoneyModelCopyWith<$Res>(_value.depositAmount!, (value) {
      return _then(_value.copyWith(depositAmount: value) as $Val);
    });
  }

  /// Create a copy of AuctionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyModelCopyWith<$Res>? get entryFee {
    if (_value.entryFee == null) {
      return null;
    }

    return $MoneyModelCopyWith<$Res>(_value.entryFee!, (value) {
      return _then(_value.copyWith(entryFee: value) as $Val);
    });
  }

  /// Create a copy of AuctionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyModelCopyWith<$Res>? get bookPrice {
    if (_value.bookPrice == null) {
      return null;
    }

    return $MoneyModelCopyWith<$Res>(_value.bookPrice!, (value) {
      return _then(_value.copyWith(bookPrice: value) as $Val);
    });
  }

  /// Create a copy of AuctionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyModelCopyWith<$Res>? get finalPrice {
    if (_value.finalPrice == null) {
      return null;
    }

    return $MoneyModelCopyWith<$Res>(_value.finalPrice!, (value) {
      return _then(_value.copyWith(finalPrice: value) as $Val);
    });
  }

  /// Create a copy of AuctionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConditionBookModelCopyWith<$Res>? get conditionBook {
    if (_value.conditionBook == null) {
      return null;
    }

    return $ConditionBookModelCopyWith<$Res>(_value.conditionBook!, (value) {
      return _then(_value.copyWith(conditionBook: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuctionModelImplCopyWith<$Res>
    implements $AuctionModelCopyWith<$Res> {
  factory _$$AuctionModelImplCopyWith(
    _$AuctionModelImpl value,
    $Res Function(_$AuctionModelImpl) then,
  ) = __$$AuctionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String? title,
    String? description,
    String? status,
    @JsonKey(name: 'auction_type') String? auctionType,
    @JsonKey(name: 'cover_photo_url') String? coverPhotoUrl,
    List<String> photos,
    NamedRefModel? category,
    NamedRefModel? entity,
    WilayaRefModel? wilaya,
    @JsonKey(name: 'asset_location') String? assetLocation,
    @JsonKey(name: 'opening_price') MoneyModel? openingPrice,
    @JsonKey(name: 'current_price') MoneyModel? currentPrice,
    @JsonKey(name: 'deposit_amount') MoneyModel? depositAmount,
    @JsonKey(name: 'entry_fee') MoneyModel? entryFee,
    @JsonKey(name: 'book_price') MoneyModel? bookPrice,
    @JsonKey(name: 'bid_count') int bidCount,
    @JsonKey(name: 'seconds_remaining') int secondsRemaining,
    @JsonKey(name: 'is_live') bool isLive,
    @JsonKey(name: 'is_biddable') bool isBiddable,
    @JsonKey(name: 'has_ended') bool hasEnded,
    @JsonKey(name: 'winner_alias') String? winnerAlias,
    @JsonKey(name: 'final_price') MoneyModel? finalPrice,
    @JsonKey(name: 'requires_commerce_register') bool requiresCommerceRegister,
    @JsonKey(name: 'condition_book') ConditionBookModel? conditionBook,
  });

  @override
  $NamedRefModelCopyWith<$Res>? get category;
  @override
  $NamedRefModelCopyWith<$Res>? get entity;
  @override
  $WilayaRefModelCopyWith<$Res>? get wilaya;
  @override
  $MoneyModelCopyWith<$Res>? get openingPrice;
  @override
  $MoneyModelCopyWith<$Res>? get currentPrice;
  @override
  $MoneyModelCopyWith<$Res>? get depositAmount;
  @override
  $MoneyModelCopyWith<$Res>? get entryFee;
  @override
  $MoneyModelCopyWith<$Res>? get bookPrice;
  @override
  $MoneyModelCopyWith<$Res>? get finalPrice;
  @override
  $ConditionBookModelCopyWith<$Res>? get conditionBook;
}

/// @nodoc
class __$$AuctionModelImplCopyWithImpl<$Res>
    extends _$AuctionModelCopyWithImpl<$Res, _$AuctionModelImpl>
    implements _$$AuctionModelImplCopyWith<$Res> {
  __$$AuctionModelImplCopyWithImpl(
    _$AuctionModelImpl _value,
    $Res Function(_$AuctionModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuctionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? description = freezed,
    Object? status = freezed,
    Object? auctionType = freezed,
    Object? coverPhotoUrl = freezed,
    Object? photos = null,
    Object? category = freezed,
    Object? entity = freezed,
    Object? wilaya = freezed,
    Object? assetLocation = freezed,
    Object? openingPrice = freezed,
    Object? currentPrice = freezed,
    Object? depositAmount = freezed,
    Object? entryFee = freezed,
    Object? bookPrice = freezed,
    Object? bidCount = null,
    Object? secondsRemaining = null,
    Object? isLive = null,
    Object? isBiddable = null,
    Object? hasEnded = null,
    Object? winnerAlias = freezed,
    Object? finalPrice = freezed,
    Object? requiresCommerceRegister = null,
    Object? conditionBook = freezed,
  }) {
    return _then(
      _$AuctionModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        title: freezed == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String?,
        description: freezed == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String?,
        auctionType: freezed == auctionType
            ? _value.auctionType
            : auctionType // ignore: cast_nullable_to_non_nullable
                  as String?,
        coverPhotoUrl: freezed == coverPhotoUrl
            ? _value.coverPhotoUrl
            : coverPhotoUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        photos: null == photos
            ? _value._photos
            : photos // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        category: freezed == category
            ? _value.category
            : category // ignore: cast_nullable_to_non_nullable
                  as NamedRefModel?,
        entity: freezed == entity
            ? _value.entity
            : entity // ignore: cast_nullable_to_non_nullable
                  as NamedRefModel?,
        wilaya: freezed == wilaya
            ? _value.wilaya
            : wilaya // ignore: cast_nullable_to_non_nullable
                  as WilayaRefModel?,
        assetLocation: freezed == assetLocation
            ? _value.assetLocation
            : assetLocation // ignore: cast_nullable_to_non_nullable
                  as String?,
        openingPrice: freezed == openingPrice
            ? _value.openingPrice
            : openingPrice // ignore: cast_nullable_to_non_nullable
                  as MoneyModel?,
        currentPrice: freezed == currentPrice
            ? _value.currentPrice
            : currentPrice // ignore: cast_nullable_to_non_nullable
                  as MoneyModel?,
        depositAmount: freezed == depositAmount
            ? _value.depositAmount
            : depositAmount // ignore: cast_nullable_to_non_nullable
                  as MoneyModel?,
        entryFee: freezed == entryFee
            ? _value.entryFee
            : entryFee // ignore: cast_nullable_to_non_nullable
                  as MoneyModel?,
        bookPrice: freezed == bookPrice
            ? _value.bookPrice
            : bookPrice // ignore: cast_nullable_to_non_nullable
                  as MoneyModel?,
        bidCount: null == bidCount
            ? _value.bidCount
            : bidCount // ignore: cast_nullable_to_non_nullable
                  as int,
        secondsRemaining: null == secondsRemaining
            ? _value.secondsRemaining
            : secondsRemaining // ignore: cast_nullable_to_non_nullable
                  as int,
        isLive: null == isLive
            ? _value.isLive
            : isLive // ignore: cast_nullable_to_non_nullable
                  as bool,
        isBiddable: null == isBiddable
            ? _value.isBiddable
            : isBiddable // ignore: cast_nullable_to_non_nullable
                  as bool,
        hasEnded: null == hasEnded
            ? _value.hasEnded
            : hasEnded // ignore: cast_nullable_to_non_nullable
                  as bool,
        winnerAlias: freezed == winnerAlias
            ? _value.winnerAlias
            : winnerAlias // ignore: cast_nullable_to_non_nullable
                  as String?,
        finalPrice: freezed == finalPrice
            ? _value.finalPrice
            : finalPrice // ignore: cast_nullable_to_non_nullable
                  as MoneyModel?,
        requiresCommerceRegister: null == requiresCommerceRegister
            ? _value.requiresCommerceRegister
            : requiresCommerceRegister // ignore: cast_nullable_to_non_nullable
                  as bool,
        conditionBook: freezed == conditionBook
            ? _value.conditionBook
            : conditionBook // ignore: cast_nullable_to_non_nullable
                  as ConditionBookModel?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AuctionModelImpl extends _AuctionModel {
  const _$AuctionModelImpl({
    required this.id,
    this.title,
    this.description,
    this.status,
    @JsonKey(name: 'auction_type') this.auctionType,
    @JsonKey(name: 'cover_photo_url') this.coverPhotoUrl,
    final List<String> photos = const <String>[],
    this.category,
    this.entity,
    this.wilaya,
    @JsonKey(name: 'asset_location') this.assetLocation,
    @JsonKey(name: 'opening_price') this.openingPrice,
    @JsonKey(name: 'current_price') this.currentPrice,
    @JsonKey(name: 'deposit_amount') this.depositAmount,
    @JsonKey(name: 'entry_fee') this.entryFee,
    @JsonKey(name: 'book_price') this.bookPrice,
    @JsonKey(name: 'bid_count') this.bidCount = 0,
    @JsonKey(name: 'seconds_remaining') this.secondsRemaining = 0,
    @JsonKey(name: 'is_live') this.isLive = false,
    @JsonKey(name: 'is_biddable') this.isBiddable = false,
    @JsonKey(name: 'has_ended') this.hasEnded = false,
    @JsonKey(name: 'winner_alias') this.winnerAlias,
    @JsonKey(name: 'final_price') this.finalPrice,
    @JsonKey(name: 'requires_commerce_register')
    this.requiresCommerceRegister = false,
    @JsonKey(name: 'condition_book') this.conditionBook,
  }) : _photos = photos,
       super._();

  factory _$AuctionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuctionModelImplFromJson(json);

  @override
  final String id;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? status;
  @override
  @JsonKey(name: 'auction_type')
  final String? auctionType;
  @override
  @JsonKey(name: 'cover_photo_url')
  final String? coverPhotoUrl;
  final List<String> _photos;
  @override
  @JsonKey()
  List<String> get photos {
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photos);
  }

  @override
  final NamedRefModel? category;
  @override
  final NamedRefModel? entity;
  @override
  final WilayaRefModel? wilaya;
  @override
  @JsonKey(name: 'asset_location')
  final String? assetLocation;
  @override
  @JsonKey(name: 'opening_price')
  final MoneyModel? openingPrice;
  @override
  @JsonKey(name: 'current_price')
  final MoneyModel? currentPrice;
  @override
  @JsonKey(name: 'deposit_amount')
  final MoneyModel? depositAmount;
  @override
  @JsonKey(name: 'entry_fee')
  final MoneyModel? entryFee;
  @override
  @JsonKey(name: 'book_price')
  final MoneyModel? bookPrice;
  @override
  @JsonKey(name: 'bid_count')
  final int bidCount;
  @override
  @JsonKey(name: 'seconds_remaining')
  final int secondsRemaining;
  @override
  @JsonKey(name: 'is_live')
  final bool isLive;
  @override
  @JsonKey(name: 'is_biddable')
  final bool isBiddable;
  @override
  @JsonKey(name: 'has_ended')
  final bool hasEnded;
  @override
  @JsonKey(name: 'winner_alias')
  final String? winnerAlias;
  @override
  @JsonKey(name: 'final_price')
  final MoneyModel? finalPrice;
  @override
  @JsonKey(name: 'requires_commerce_register')
  final bool requiresCommerceRegister;
  @override
  @JsonKey(name: 'condition_book')
  final ConditionBookModel? conditionBook;

  @override
  String toString() {
    return 'AuctionModel(id: $id, title: $title, description: $description, status: $status, auctionType: $auctionType, coverPhotoUrl: $coverPhotoUrl, photos: $photos, category: $category, entity: $entity, wilaya: $wilaya, assetLocation: $assetLocation, openingPrice: $openingPrice, currentPrice: $currentPrice, depositAmount: $depositAmount, entryFee: $entryFee, bookPrice: $bookPrice, bidCount: $bidCount, secondsRemaining: $secondsRemaining, isLive: $isLive, isBiddable: $isBiddable, hasEnded: $hasEnded, winnerAlias: $winnerAlias, finalPrice: $finalPrice, requiresCommerceRegister: $requiresCommerceRegister, conditionBook: $conditionBook)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuctionModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.auctionType, auctionType) ||
                other.auctionType == auctionType) &&
            (identical(other.coverPhotoUrl, coverPhotoUrl) ||
                other.coverPhotoUrl == coverPhotoUrl) &&
            const DeepCollectionEquality().equals(other._photos, _photos) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.entity, entity) || other.entity == entity) &&
            (identical(other.wilaya, wilaya) || other.wilaya == wilaya) &&
            (identical(other.assetLocation, assetLocation) ||
                other.assetLocation == assetLocation) &&
            (identical(other.openingPrice, openingPrice) ||
                other.openingPrice == openingPrice) &&
            (identical(other.currentPrice, currentPrice) ||
                other.currentPrice == currentPrice) &&
            (identical(other.depositAmount, depositAmount) ||
                other.depositAmount == depositAmount) &&
            (identical(other.entryFee, entryFee) ||
                other.entryFee == entryFee) &&
            (identical(other.bookPrice, bookPrice) ||
                other.bookPrice == bookPrice) &&
            (identical(other.bidCount, bidCount) ||
                other.bidCount == bidCount) &&
            (identical(other.secondsRemaining, secondsRemaining) ||
                other.secondsRemaining == secondsRemaining) &&
            (identical(other.isLive, isLive) || other.isLive == isLive) &&
            (identical(other.isBiddable, isBiddable) ||
                other.isBiddable == isBiddable) &&
            (identical(other.hasEnded, hasEnded) ||
                other.hasEnded == hasEnded) &&
            (identical(other.winnerAlias, winnerAlias) ||
                other.winnerAlias == winnerAlias) &&
            (identical(other.finalPrice, finalPrice) ||
                other.finalPrice == finalPrice) &&
            (identical(
                  other.requiresCommerceRegister,
                  requiresCommerceRegister,
                ) ||
                other.requiresCommerceRegister == requiresCommerceRegister) &&
            (identical(other.conditionBook, conditionBook) ||
                other.conditionBook == conditionBook));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    id,
    title,
    description,
    status,
    auctionType,
    coverPhotoUrl,
    const DeepCollectionEquality().hash(_photos),
    category,
    entity,
    wilaya,
    assetLocation,
    openingPrice,
    currentPrice,
    depositAmount,
    entryFee,
    bookPrice,
    bidCount,
    secondsRemaining,
    isLive,
    isBiddable,
    hasEnded,
    winnerAlias,
    finalPrice,
    requiresCommerceRegister,
    conditionBook,
  ]);

  /// Create a copy of AuctionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuctionModelImplCopyWith<_$AuctionModelImpl> get copyWith =>
      __$$AuctionModelImplCopyWithImpl<_$AuctionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuctionModelImplToJson(this);
  }
}

abstract class _AuctionModel extends AuctionModel {
  const factory _AuctionModel({
    required final String id,
    final String? title,
    final String? description,
    final String? status,
    @JsonKey(name: 'auction_type') final String? auctionType,
    @JsonKey(name: 'cover_photo_url') final String? coverPhotoUrl,
    final List<String> photos,
    final NamedRefModel? category,
    final NamedRefModel? entity,
    final WilayaRefModel? wilaya,
    @JsonKey(name: 'asset_location') final String? assetLocation,
    @JsonKey(name: 'opening_price') final MoneyModel? openingPrice,
    @JsonKey(name: 'current_price') final MoneyModel? currentPrice,
    @JsonKey(name: 'deposit_amount') final MoneyModel? depositAmount,
    @JsonKey(name: 'entry_fee') final MoneyModel? entryFee,
    @JsonKey(name: 'book_price') final MoneyModel? bookPrice,
    @JsonKey(name: 'bid_count') final int bidCount,
    @JsonKey(name: 'seconds_remaining') final int secondsRemaining,
    @JsonKey(name: 'is_live') final bool isLive,
    @JsonKey(name: 'is_biddable') final bool isBiddable,
    @JsonKey(name: 'has_ended') final bool hasEnded,
    @JsonKey(name: 'winner_alias') final String? winnerAlias,
    @JsonKey(name: 'final_price') final MoneyModel? finalPrice,
    @JsonKey(name: 'requires_commerce_register')
    final bool requiresCommerceRegister,
    @JsonKey(name: 'condition_book') final ConditionBookModel? conditionBook,
  }) = _$AuctionModelImpl;
  const _AuctionModel._() : super._();

  factory _AuctionModel.fromJson(Map<String, dynamic> json) =
      _$AuctionModelImpl.fromJson;

  @override
  String get id;
  @override
  String? get title;
  @override
  String? get description;
  @override
  String? get status;
  @override
  @JsonKey(name: 'auction_type')
  String? get auctionType;
  @override
  @JsonKey(name: 'cover_photo_url')
  String? get coverPhotoUrl;
  @override
  List<String> get photos;
  @override
  NamedRefModel? get category;
  @override
  NamedRefModel? get entity;
  @override
  WilayaRefModel? get wilaya;
  @override
  @JsonKey(name: 'asset_location')
  String? get assetLocation;
  @override
  @JsonKey(name: 'opening_price')
  MoneyModel? get openingPrice;
  @override
  @JsonKey(name: 'current_price')
  MoneyModel? get currentPrice;
  @override
  @JsonKey(name: 'deposit_amount')
  MoneyModel? get depositAmount;
  @override
  @JsonKey(name: 'entry_fee')
  MoneyModel? get entryFee;
  @override
  @JsonKey(name: 'book_price')
  MoneyModel? get bookPrice;
  @override
  @JsonKey(name: 'bid_count')
  int get bidCount;
  @override
  @JsonKey(name: 'seconds_remaining')
  int get secondsRemaining;
  @override
  @JsonKey(name: 'is_live')
  bool get isLive;
  @override
  @JsonKey(name: 'is_biddable')
  bool get isBiddable;
  @override
  @JsonKey(name: 'has_ended')
  bool get hasEnded;
  @override
  @JsonKey(name: 'winner_alias')
  String? get winnerAlias;
  @override
  @JsonKey(name: 'final_price')
  MoneyModel? get finalPrice;
  @override
  @JsonKey(name: 'requires_commerce_register')
  bool get requiresCommerceRegister;
  @override
  @JsonKey(name: 'condition_book')
  ConditionBookModel? get conditionBook;

  /// Create a copy of AuctionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuctionModelImplCopyWith<_$AuctionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WilayaRefModel _$WilayaRefModelFromJson(Map<String, dynamic> json) {
  return _WilayaRefModel.fromJson(json);
}

/// @nodoc
mixin _$WilayaRefModel {
  dynamic get id => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this WilayaRefModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WilayaRefModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WilayaRefModelCopyWith<WilayaRefModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WilayaRefModelCopyWith<$Res> {
  factory $WilayaRefModelCopyWith(
    WilayaRefModel value,
    $Res Function(WilayaRefModel) then,
  ) = _$WilayaRefModelCopyWithImpl<$Res, WilayaRefModel>;
  @useResult
  $Res call({dynamic id, String? code, String? name});
}

/// @nodoc
class _$WilayaRefModelCopyWithImpl<$Res, $Val extends WilayaRefModel>
    implements $WilayaRefModelCopyWith<$Res> {
  _$WilayaRefModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WilayaRefModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? name = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            code: freezed == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
                      as String?,
            name: freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$WilayaRefModelImplCopyWith<$Res>
    implements $WilayaRefModelCopyWith<$Res> {
  factory _$$WilayaRefModelImplCopyWith(
    _$WilayaRefModelImpl value,
    $Res Function(_$WilayaRefModelImpl) then,
  ) = __$$WilayaRefModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic id, String? code, String? name});
}

/// @nodoc
class __$$WilayaRefModelImplCopyWithImpl<$Res>
    extends _$WilayaRefModelCopyWithImpl<$Res, _$WilayaRefModelImpl>
    implements _$$WilayaRefModelImplCopyWith<$Res> {
  __$$WilayaRefModelImplCopyWithImpl(
    _$WilayaRefModelImpl _value,
    $Res Function(_$WilayaRefModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WilayaRefModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? name = freezed,
  }) {
    return _then(
      _$WilayaRefModelImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        code: freezed == code
            ? _value.code
            : code // ignore: cast_nullable_to_non_nullable
                  as String?,
        name: freezed == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$WilayaRefModelImpl implements _WilayaRefModel {
  const _$WilayaRefModelImpl({this.id, this.code, this.name});

  factory _$WilayaRefModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WilayaRefModelImplFromJson(json);

  @override
  final dynamic id;
  @override
  final String? code;
  @override
  final String? name;

  @override
  String toString() {
    return 'WilayaRefModel(id: $id, code: $code, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WilayaRefModelImpl &&
            const DeepCollectionEquality().equals(other.id, id) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(id),
    code,
    name,
  );

  /// Create a copy of WilayaRefModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WilayaRefModelImplCopyWith<_$WilayaRefModelImpl> get copyWith =>
      __$$WilayaRefModelImplCopyWithImpl<_$WilayaRefModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$WilayaRefModelImplToJson(this);
  }
}

abstract class _WilayaRefModel implements WilayaRefModel {
  const factory _WilayaRefModel({
    final dynamic id,
    final String? code,
    final String? name,
  }) = _$WilayaRefModelImpl;

  factory _WilayaRefModel.fromJson(Map<String, dynamic> json) =
      _$WilayaRefModelImpl.fromJson;

  @override
  dynamic get id;
  @override
  String? get code;
  @override
  String? get name;

  /// Create a copy of WilayaRefModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WilayaRefModelImplCopyWith<_$WilayaRefModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ConditionBookModel _$ConditionBookModelFromJson(Map<String, dynamic> json) {
  return _ConditionBookModel.fromJson(json);
}

/// @nodoc
mixin _$ConditionBookModel {
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'download_url')
  String? get downloadUrl => throw _privateConstructorUsedError;

  /// Serializes this ConditionBookModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConditionBookModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConditionBookModelCopyWith<ConditionBookModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConditionBookModelCopyWith<$Res> {
  factory $ConditionBookModelCopyWith(
    ConditionBookModel value,
    $Res Function(ConditionBookModel) then,
  ) = _$ConditionBookModelCopyWithImpl<$Res, ConditionBookModel>;
  @useResult
  $Res call({
    String? id,
    String? title,
    @JsonKey(name: 'download_url') String? downloadUrl,
  });
}

/// @nodoc
class _$ConditionBookModelCopyWithImpl<$Res, $Val extends ConditionBookModel>
    implements $ConditionBookModelCopyWith<$Res> {
  _$ConditionBookModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConditionBookModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? downloadUrl = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            title: freezed == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String?,
            downloadUrl: freezed == downloadUrl
                ? _value.downloadUrl
                : downloadUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ConditionBookModelImplCopyWith<$Res>
    implements $ConditionBookModelCopyWith<$Res> {
  factory _$$ConditionBookModelImplCopyWith(
    _$ConditionBookModelImpl value,
    $Res Function(_$ConditionBookModelImpl) then,
  ) = __$$ConditionBookModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? id,
    String? title,
    @JsonKey(name: 'download_url') String? downloadUrl,
  });
}

/// @nodoc
class __$$ConditionBookModelImplCopyWithImpl<$Res>
    extends _$ConditionBookModelCopyWithImpl<$Res, _$ConditionBookModelImpl>
    implements _$$ConditionBookModelImplCopyWith<$Res> {
  __$$ConditionBookModelImplCopyWithImpl(
    _$ConditionBookModelImpl _value,
    $Res Function(_$ConditionBookModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ConditionBookModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? downloadUrl = freezed,
  }) {
    return _then(
      _$ConditionBookModelImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        title: freezed == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String?,
        downloadUrl: freezed == downloadUrl
            ? _value.downloadUrl
            : downloadUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ConditionBookModelImpl implements _ConditionBookModel {
  const _$ConditionBookModelImpl({
    this.id,
    this.title,
    @JsonKey(name: 'download_url') this.downloadUrl,
  });

  factory _$ConditionBookModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConditionBookModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String? title;
  @override
  @JsonKey(name: 'download_url')
  final String? downloadUrl;

  @override
  String toString() {
    return 'ConditionBookModel(id: $id, title: $title, downloadUrl: $downloadUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConditionBookModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.downloadUrl, downloadUrl) ||
                other.downloadUrl == downloadUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, downloadUrl);

  /// Create a copy of ConditionBookModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConditionBookModelImplCopyWith<_$ConditionBookModelImpl> get copyWith =>
      __$$ConditionBookModelImplCopyWithImpl<_$ConditionBookModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ConditionBookModelImplToJson(this);
  }
}

abstract class _ConditionBookModel implements ConditionBookModel {
  const factory _ConditionBookModel({
    final String? id,
    final String? title,
    @JsonKey(name: 'download_url') final String? downloadUrl,
  }) = _$ConditionBookModelImpl;

  factory _ConditionBookModel.fromJson(Map<String, dynamic> json) =
      _$ConditionBookModelImpl.fromJson;

  @override
  String? get id;
  @override
  String? get title;
  @override
  @JsonKey(name: 'download_url')
  String? get downloadUrl;

  /// Create a copy of ConditionBookModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConditionBookModelImplCopyWith<_$ConditionBookModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
