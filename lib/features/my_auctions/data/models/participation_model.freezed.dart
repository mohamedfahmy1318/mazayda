// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'participation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ParticipationModel _$ParticipationModelFromJson(Map<String, dynamic> json) {
  return _ParticipationModel.fromJson(json);
}

/// @nodoc
mixin _$ParticipationModel {
  @JsonKey(name: 'auction_id')
  String? get auctionId => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'cover_photo_url')
  String? get coverPhotoUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_price')
  MoneyModel? get currentPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'final_price')
  MoneyModel? get finalPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'opening_price')
  MoneyModel? get openingPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'my_bid')
  MoneyModel? get myBid => throw _privateConstructorUsedError;
  String? get status =>
      throw _privateConstructorUsedError; // حالة المزاد/المشاركة من الـ API
  @JsonKey(name: 'is_winning')
  bool? get isWinning => throw _privateConstructorUsedError;

  /// Serializes this ParticipationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ParticipationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ParticipationModelCopyWith<ParticipationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParticipationModelCopyWith<$Res> {
  factory $ParticipationModelCopyWith(
    ParticipationModel value,
    $Res Function(ParticipationModel) then,
  ) = _$ParticipationModelCopyWithImpl<$Res, ParticipationModel>;
  @useResult
  $Res call({
    @JsonKey(name: 'auction_id') String? auctionId,
    String? id,
    String? title,
    @JsonKey(name: 'cover_photo_url') String? coverPhotoUrl,
    @JsonKey(name: 'current_price') MoneyModel? currentPrice,
    @JsonKey(name: 'final_price') MoneyModel? finalPrice,
    @JsonKey(name: 'opening_price') MoneyModel? openingPrice,
    @JsonKey(name: 'my_bid') MoneyModel? myBid,
    String? status,
    @JsonKey(name: 'is_winning') bool? isWinning,
  });

  $MoneyModelCopyWith<$Res>? get currentPrice;
  $MoneyModelCopyWith<$Res>? get finalPrice;
  $MoneyModelCopyWith<$Res>? get openingPrice;
  $MoneyModelCopyWith<$Res>? get myBid;
}

/// @nodoc
class _$ParticipationModelCopyWithImpl<$Res, $Val extends ParticipationModel>
    implements $ParticipationModelCopyWith<$Res> {
  _$ParticipationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ParticipationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? auctionId = freezed,
    Object? id = freezed,
    Object? title = freezed,
    Object? coverPhotoUrl = freezed,
    Object? currentPrice = freezed,
    Object? finalPrice = freezed,
    Object? openingPrice = freezed,
    Object? myBid = freezed,
    Object? status = freezed,
    Object? isWinning = freezed,
  }) {
    return _then(
      _value.copyWith(
            auctionId: freezed == auctionId
                ? _value.auctionId
                : auctionId // ignore: cast_nullable_to_non_nullable
                      as String?,
            id: freezed == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String?,
            title: freezed == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String?,
            coverPhotoUrl: freezed == coverPhotoUrl
                ? _value.coverPhotoUrl
                : coverPhotoUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            currentPrice: freezed == currentPrice
                ? _value.currentPrice
                : currentPrice // ignore: cast_nullable_to_non_nullable
                      as MoneyModel?,
            finalPrice: freezed == finalPrice
                ? _value.finalPrice
                : finalPrice // ignore: cast_nullable_to_non_nullable
                      as MoneyModel?,
            openingPrice: freezed == openingPrice
                ? _value.openingPrice
                : openingPrice // ignore: cast_nullable_to_non_nullable
                      as MoneyModel?,
            myBid: freezed == myBid
                ? _value.myBid
                : myBid // ignore: cast_nullable_to_non_nullable
                      as MoneyModel?,
            status: freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String?,
            isWinning: freezed == isWinning
                ? _value.isWinning
                : isWinning // ignore: cast_nullable_to_non_nullable
                      as bool?,
          )
          as $Val,
    );
  }

  /// Create a copy of ParticipationModel
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

  /// Create a copy of ParticipationModel
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

  /// Create a copy of ParticipationModel
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

  /// Create a copy of ParticipationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MoneyModelCopyWith<$Res>? get myBid {
    if (_value.myBid == null) {
      return null;
    }

    return $MoneyModelCopyWith<$Res>(_value.myBid!, (value) {
      return _then(_value.copyWith(myBid: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ParticipationModelImplCopyWith<$Res>
    implements $ParticipationModelCopyWith<$Res> {
  factory _$$ParticipationModelImplCopyWith(
    _$ParticipationModelImpl value,
    $Res Function(_$ParticipationModelImpl) then,
  ) = __$$ParticipationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'auction_id') String? auctionId,
    String? id,
    String? title,
    @JsonKey(name: 'cover_photo_url') String? coverPhotoUrl,
    @JsonKey(name: 'current_price') MoneyModel? currentPrice,
    @JsonKey(name: 'final_price') MoneyModel? finalPrice,
    @JsonKey(name: 'opening_price') MoneyModel? openingPrice,
    @JsonKey(name: 'my_bid') MoneyModel? myBid,
    String? status,
    @JsonKey(name: 'is_winning') bool? isWinning,
  });

  @override
  $MoneyModelCopyWith<$Res>? get currentPrice;
  @override
  $MoneyModelCopyWith<$Res>? get finalPrice;
  @override
  $MoneyModelCopyWith<$Res>? get openingPrice;
  @override
  $MoneyModelCopyWith<$Res>? get myBid;
}

/// @nodoc
class __$$ParticipationModelImplCopyWithImpl<$Res>
    extends _$ParticipationModelCopyWithImpl<$Res, _$ParticipationModelImpl>
    implements _$$ParticipationModelImplCopyWith<$Res> {
  __$$ParticipationModelImplCopyWithImpl(
    _$ParticipationModelImpl _value,
    $Res Function(_$ParticipationModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ParticipationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? auctionId = freezed,
    Object? id = freezed,
    Object? title = freezed,
    Object? coverPhotoUrl = freezed,
    Object? currentPrice = freezed,
    Object? finalPrice = freezed,
    Object? openingPrice = freezed,
    Object? myBid = freezed,
    Object? status = freezed,
    Object? isWinning = freezed,
  }) {
    return _then(
      _$ParticipationModelImpl(
        auctionId: freezed == auctionId
            ? _value.auctionId
            : auctionId // ignore: cast_nullable_to_non_nullable
                  as String?,
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        title: freezed == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String?,
        coverPhotoUrl: freezed == coverPhotoUrl
            ? _value.coverPhotoUrl
            : coverPhotoUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        currentPrice: freezed == currentPrice
            ? _value.currentPrice
            : currentPrice // ignore: cast_nullable_to_non_nullable
                  as MoneyModel?,
        finalPrice: freezed == finalPrice
            ? _value.finalPrice
            : finalPrice // ignore: cast_nullable_to_non_nullable
                  as MoneyModel?,
        openingPrice: freezed == openingPrice
            ? _value.openingPrice
            : openingPrice // ignore: cast_nullable_to_non_nullable
                  as MoneyModel?,
        myBid: freezed == myBid
            ? _value.myBid
            : myBid // ignore: cast_nullable_to_non_nullable
                  as MoneyModel?,
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String?,
        isWinning: freezed == isWinning
            ? _value.isWinning
            : isWinning // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ParticipationModelImpl extends _ParticipationModel {
  const _$ParticipationModelImpl({
    @JsonKey(name: 'auction_id') this.auctionId,
    this.id,
    this.title,
    @JsonKey(name: 'cover_photo_url') this.coverPhotoUrl,
    @JsonKey(name: 'current_price') this.currentPrice,
    @JsonKey(name: 'final_price') this.finalPrice,
    @JsonKey(name: 'opening_price') this.openingPrice,
    @JsonKey(name: 'my_bid') this.myBid,
    this.status,
    @JsonKey(name: 'is_winning') this.isWinning,
  }) : super._();

  factory _$ParticipationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ParticipationModelImplFromJson(json);

  @override
  @JsonKey(name: 'auction_id')
  final String? auctionId;
  @override
  final String? id;
  @override
  final String? title;
  @override
  @JsonKey(name: 'cover_photo_url')
  final String? coverPhotoUrl;
  @override
  @JsonKey(name: 'current_price')
  final MoneyModel? currentPrice;
  @override
  @JsonKey(name: 'final_price')
  final MoneyModel? finalPrice;
  @override
  @JsonKey(name: 'opening_price')
  final MoneyModel? openingPrice;
  @override
  @JsonKey(name: 'my_bid')
  final MoneyModel? myBid;
  @override
  final String? status;
  // حالة المزاد/المشاركة من الـ API
  @override
  @JsonKey(name: 'is_winning')
  final bool? isWinning;

  @override
  String toString() {
    return 'ParticipationModel(auctionId: $auctionId, id: $id, title: $title, coverPhotoUrl: $coverPhotoUrl, currentPrice: $currentPrice, finalPrice: $finalPrice, openingPrice: $openingPrice, myBid: $myBid, status: $status, isWinning: $isWinning)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParticipationModelImpl &&
            (identical(other.auctionId, auctionId) ||
                other.auctionId == auctionId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.coverPhotoUrl, coverPhotoUrl) ||
                other.coverPhotoUrl == coverPhotoUrl) &&
            (identical(other.currentPrice, currentPrice) ||
                other.currentPrice == currentPrice) &&
            (identical(other.finalPrice, finalPrice) ||
                other.finalPrice == finalPrice) &&
            (identical(other.openingPrice, openingPrice) ||
                other.openingPrice == openingPrice) &&
            (identical(other.myBid, myBid) || other.myBid == myBid) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isWinning, isWinning) ||
                other.isWinning == isWinning));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    auctionId,
    id,
    title,
    coverPhotoUrl,
    currentPrice,
    finalPrice,
    openingPrice,
    myBid,
    status,
    isWinning,
  );

  /// Create a copy of ParticipationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ParticipationModelImplCopyWith<_$ParticipationModelImpl> get copyWith =>
      __$$ParticipationModelImplCopyWithImpl<_$ParticipationModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ParticipationModelImplToJson(this);
  }
}

abstract class _ParticipationModel extends ParticipationModel {
  const factory _ParticipationModel({
    @JsonKey(name: 'auction_id') final String? auctionId,
    final String? id,
    final String? title,
    @JsonKey(name: 'cover_photo_url') final String? coverPhotoUrl,
    @JsonKey(name: 'current_price') final MoneyModel? currentPrice,
    @JsonKey(name: 'final_price') final MoneyModel? finalPrice,
    @JsonKey(name: 'opening_price') final MoneyModel? openingPrice,
    @JsonKey(name: 'my_bid') final MoneyModel? myBid,
    final String? status,
    @JsonKey(name: 'is_winning') final bool? isWinning,
  }) = _$ParticipationModelImpl;
  const _ParticipationModel._() : super._();

  factory _ParticipationModel.fromJson(Map<String, dynamic> json) =
      _$ParticipationModelImpl.fromJson;

  @override
  @JsonKey(name: 'auction_id')
  String? get auctionId;
  @override
  String? get id;
  @override
  String? get title;
  @override
  @JsonKey(name: 'cover_photo_url')
  String? get coverPhotoUrl;
  @override
  @JsonKey(name: 'current_price')
  MoneyModel? get currentPrice;
  @override
  @JsonKey(name: 'final_price')
  MoneyModel? get finalPrice;
  @override
  @JsonKey(name: 'opening_price')
  MoneyModel? get openingPrice;
  @override
  @JsonKey(name: 'my_bid')
  MoneyModel? get myBid;
  @override
  String? get status; // حالة المزاد/المشاركة من الـ API
  @override
  @JsonKey(name: 'is_winning')
  bool? get isWinning;

  /// Create a copy of ParticipationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ParticipationModelImplCopyWith<_$ParticipationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
