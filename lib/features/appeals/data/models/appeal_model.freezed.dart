// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'appeal_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AppealAuctionRefModel _$AppealAuctionRefModelFromJson(
  Map<String, dynamic> json,
) {
  return _AppealAuctionRefModel.fromJson(json);
}

/// @nodoc
mixin _$AppealAuctionRefModel {
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;

  /// Serializes this AppealAuctionRefModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppealAuctionRefModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppealAuctionRefModelCopyWith<AppealAuctionRefModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppealAuctionRefModelCopyWith<$Res> {
  factory $AppealAuctionRefModelCopyWith(
    AppealAuctionRefModel value,
    $Res Function(AppealAuctionRefModel) then,
  ) = _$AppealAuctionRefModelCopyWithImpl<$Res, AppealAuctionRefModel>;
  @useResult
  $Res call({String? id, String? title});
}

/// @nodoc
class _$AppealAuctionRefModelCopyWithImpl<
  $Res,
  $Val extends AppealAuctionRefModel
>
    implements $AppealAuctionRefModelCopyWith<$Res> {
  _$AppealAuctionRefModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppealAuctionRefModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = freezed, Object? title = freezed}) {
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
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AppealAuctionRefModelImplCopyWith<$Res>
    implements $AppealAuctionRefModelCopyWith<$Res> {
  factory _$$AppealAuctionRefModelImplCopyWith(
    _$AppealAuctionRefModelImpl value,
    $Res Function(_$AppealAuctionRefModelImpl) then,
  ) = __$$AppealAuctionRefModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? title});
}

/// @nodoc
class __$$AppealAuctionRefModelImplCopyWithImpl<$Res>
    extends
        _$AppealAuctionRefModelCopyWithImpl<$Res, _$AppealAuctionRefModelImpl>
    implements _$$AppealAuctionRefModelImplCopyWith<$Res> {
  __$$AppealAuctionRefModelImplCopyWithImpl(
    _$AppealAuctionRefModelImpl _value,
    $Res Function(_$AppealAuctionRefModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AppealAuctionRefModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = freezed, Object? title = freezed}) {
    return _then(
      _$AppealAuctionRefModelImpl(
        id: freezed == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String?,
        title: freezed == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AppealAuctionRefModelImpl extends _AppealAuctionRefModel {
  const _$AppealAuctionRefModelImpl({this.id, this.title}) : super._();

  factory _$AppealAuctionRefModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppealAuctionRefModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String? title;

  @override
  String toString() {
    return 'AppealAuctionRefModel(id: $id, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppealAuctionRefModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title);

  /// Create a copy of AppealAuctionRefModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppealAuctionRefModelImplCopyWith<_$AppealAuctionRefModelImpl>
  get copyWith =>
      __$$AppealAuctionRefModelImplCopyWithImpl<_$AppealAuctionRefModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AppealAuctionRefModelImplToJson(this);
  }
}

abstract class _AppealAuctionRefModel extends AppealAuctionRefModel {
  const factory _AppealAuctionRefModel({
    final String? id,
    final String? title,
  }) = _$AppealAuctionRefModelImpl;
  const _AppealAuctionRefModel._() : super._();

  factory _AppealAuctionRefModel.fromJson(Map<String, dynamic> json) =
      _$AppealAuctionRefModelImpl.fromJson;

  @override
  String? get id;
  @override
  String? get title;

  /// Create a copy of AppealAuctionRefModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppealAuctionRefModelImplCopyWith<_$AppealAuctionRefModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}

AppealModel _$AppealModelFromJson(Map<String, dynamic> json) {
  return _AppealModel.fromJson(json);
}

/// @nodoc
mixin _$AppealModel {
  String get id => throw _privateConstructorUsedError;
  String? get subject => throw _privateConstructorUsedError;
  String? get reason => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_label')
  String? get statusLabel => throw _privateConstructorUsedError;
  @JsonKey(name: 'admin_response')
  String? get adminResponse => throw _privateConstructorUsedError;
  @JsonKey(name: 'entity_response')
  String? get entityResponse => throw _privateConstructorUsedError;
  AppealAuctionRefModel? get auction => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'forwarded_at')
  String? get forwardedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'entity_decided_at')
  String? get entityDecidedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'resolved_at')
  String? get resolvedAt => throw _privateConstructorUsedError;

  /// Serializes this AppealModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppealModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppealModelCopyWith<AppealModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppealModelCopyWith<$Res> {
  factory $AppealModelCopyWith(
    AppealModel value,
    $Res Function(AppealModel) then,
  ) = _$AppealModelCopyWithImpl<$Res, AppealModel>;
  @useResult
  $Res call({
    String id,
    String? subject,
    String? reason,
    String? status,
    @JsonKey(name: 'status_label') String? statusLabel,
    @JsonKey(name: 'admin_response') String? adminResponse,
    @JsonKey(name: 'entity_response') String? entityResponse,
    AppealAuctionRefModel? auction,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'forwarded_at') String? forwardedAt,
    @JsonKey(name: 'entity_decided_at') String? entityDecidedAt,
    @JsonKey(name: 'resolved_at') String? resolvedAt,
  });

  $AppealAuctionRefModelCopyWith<$Res>? get auction;
}

/// @nodoc
class _$AppealModelCopyWithImpl<$Res, $Val extends AppealModel>
    implements $AppealModelCopyWith<$Res> {
  _$AppealModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppealModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? subject = freezed,
    Object? reason = freezed,
    Object? status = freezed,
    Object? statusLabel = freezed,
    Object? adminResponse = freezed,
    Object? entityResponse = freezed,
    Object? auction = freezed,
    Object? createdAt = freezed,
    Object? forwardedAt = freezed,
    Object? entityDecidedAt = freezed,
    Object? resolvedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            subject: freezed == subject
                ? _value.subject
                : subject // ignore: cast_nullable_to_non_nullable
                      as String?,
            reason: freezed == reason
                ? _value.reason
                : reason // ignore: cast_nullable_to_non_nullable
                      as String?,
            status: freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String?,
            statusLabel: freezed == statusLabel
                ? _value.statusLabel
                : statusLabel // ignore: cast_nullable_to_non_nullable
                      as String?,
            adminResponse: freezed == adminResponse
                ? _value.adminResponse
                : adminResponse // ignore: cast_nullable_to_non_nullable
                      as String?,
            entityResponse: freezed == entityResponse
                ? _value.entityResponse
                : entityResponse // ignore: cast_nullable_to_non_nullable
                      as String?,
            auction: freezed == auction
                ? _value.auction
                : auction // ignore: cast_nullable_to_non_nullable
                      as AppealAuctionRefModel?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            forwardedAt: freezed == forwardedAt
                ? _value.forwardedAt
                : forwardedAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            entityDecidedAt: freezed == entityDecidedAt
                ? _value.entityDecidedAt
                : entityDecidedAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            resolvedAt: freezed == resolvedAt
                ? _value.resolvedAt
                : resolvedAt // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }

  /// Create a copy of AppealModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppealAuctionRefModelCopyWith<$Res>? get auction {
    if (_value.auction == null) {
      return null;
    }

    return $AppealAuctionRefModelCopyWith<$Res>(_value.auction!, (value) {
      return _then(_value.copyWith(auction: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppealModelImplCopyWith<$Res>
    implements $AppealModelCopyWith<$Res> {
  factory _$$AppealModelImplCopyWith(
    _$AppealModelImpl value,
    $Res Function(_$AppealModelImpl) then,
  ) = __$$AppealModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String? subject,
    String? reason,
    String? status,
    @JsonKey(name: 'status_label') String? statusLabel,
    @JsonKey(name: 'admin_response') String? adminResponse,
    @JsonKey(name: 'entity_response') String? entityResponse,
    AppealAuctionRefModel? auction,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'forwarded_at') String? forwardedAt,
    @JsonKey(name: 'entity_decided_at') String? entityDecidedAt,
    @JsonKey(name: 'resolved_at') String? resolvedAt,
  });

  @override
  $AppealAuctionRefModelCopyWith<$Res>? get auction;
}

/// @nodoc
class __$$AppealModelImplCopyWithImpl<$Res>
    extends _$AppealModelCopyWithImpl<$Res, _$AppealModelImpl>
    implements _$$AppealModelImplCopyWith<$Res> {
  __$$AppealModelImplCopyWithImpl(
    _$AppealModelImpl _value,
    $Res Function(_$AppealModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AppealModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? subject = freezed,
    Object? reason = freezed,
    Object? status = freezed,
    Object? statusLabel = freezed,
    Object? adminResponse = freezed,
    Object? entityResponse = freezed,
    Object? auction = freezed,
    Object? createdAt = freezed,
    Object? forwardedAt = freezed,
    Object? entityDecidedAt = freezed,
    Object? resolvedAt = freezed,
  }) {
    return _then(
      _$AppealModelImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        subject: freezed == subject
            ? _value.subject
            : subject // ignore: cast_nullable_to_non_nullable
                  as String?,
        reason: freezed == reason
            ? _value.reason
            : reason // ignore: cast_nullable_to_non_nullable
                  as String?,
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String?,
        statusLabel: freezed == statusLabel
            ? _value.statusLabel
            : statusLabel // ignore: cast_nullable_to_non_nullable
                  as String?,
        adminResponse: freezed == adminResponse
            ? _value.adminResponse
            : adminResponse // ignore: cast_nullable_to_non_nullable
                  as String?,
        entityResponse: freezed == entityResponse
            ? _value.entityResponse
            : entityResponse // ignore: cast_nullable_to_non_nullable
                  as String?,
        auction: freezed == auction
            ? _value.auction
            : auction // ignore: cast_nullable_to_non_nullable
                  as AppealAuctionRefModel?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        forwardedAt: freezed == forwardedAt
            ? _value.forwardedAt
            : forwardedAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        entityDecidedAt: freezed == entityDecidedAt
            ? _value.entityDecidedAt
            : entityDecidedAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        resolvedAt: freezed == resolvedAt
            ? _value.resolvedAt
            : resolvedAt // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AppealModelImpl extends _AppealModel {
  const _$AppealModelImpl({
    required this.id,
    this.subject,
    this.reason,
    this.status,
    @JsonKey(name: 'status_label') this.statusLabel,
    @JsonKey(name: 'admin_response') this.adminResponse,
    @JsonKey(name: 'entity_response') this.entityResponse,
    this.auction,
    @JsonKey(name: 'created_at') this.createdAt,
    @JsonKey(name: 'forwarded_at') this.forwardedAt,
    @JsonKey(name: 'entity_decided_at') this.entityDecidedAt,
    @JsonKey(name: 'resolved_at') this.resolvedAt,
  }) : super._();

  factory _$AppealModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppealModelImplFromJson(json);

  @override
  final String id;
  @override
  final String? subject;
  @override
  final String? reason;
  @override
  final String? status;
  @override
  @JsonKey(name: 'status_label')
  final String? statusLabel;
  @override
  @JsonKey(name: 'admin_response')
  final String? adminResponse;
  @override
  @JsonKey(name: 'entity_response')
  final String? entityResponse;
  @override
  final AppealAuctionRefModel? auction;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'forwarded_at')
  final String? forwardedAt;
  @override
  @JsonKey(name: 'entity_decided_at')
  final String? entityDecidedAt;
  @override
  @JsonKey(name: 'resolved_at')
  final String? resolvedAt;

  @override
  String toString() {
    return 'AppealModel(id: $id, subject: $subject, reason: $reason, status: $status, statusLabel: $statusLabel, adminResponse: $adminResponse, entityResponse: $entityResponse, auction: $auction, createdAt: $createdAt, forwardedAt: $forwardedAt, entityDecidedAt: $entityDecidedAt, resolvedAt: $resolvedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppealModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.statusLabel, statusLabel) ||
                other.statusLabel == statusLabel) &&
            (identical(other.adminResponse, adminResponse) ||
                other.adminResponse == adminResponse) &&
            (identical(other.entityResponse, entityResponse) ||
                other.entityResponse == entityResponse) &&
            (identical(other.auction, auction) || other.auction == auction) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.forwardedAt, forwardedAt) ||
                other.forwardedAt == forwardedAt) &&
            (identical(other.entityDecidedAt, entityDecidedAt) ||
                other.entityDecidedAt == entityDecidedAt) &&
            (identical(other.resolvedAt, resolvedAt) ||
                other.resolvedAt == resolvedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    subject,
    reason,
    status,
    statusLabel,
    adminResponse,
    entityResponse,
    auction,
    createdAt,
    forwardedAt,
    entityDecidedAt,
    resolvedAt,
  );

  /// Create a copy of AppealModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppealModelImplCopyWith<_$AppealModelImpl> get copyWith =>
      __$$AppealModelImplCopyWithImpl<_$AppealModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppealModelImplToJson(this);
  }
}

abstract class _AppealModel extends AppealModel {
  const factory _AppealModel({
    required final String id,
    final String? subject,
    final String? reason,
    final String? status,
    @JsonKey(name: 'status_label') final String? statusLabel,
    @JsonKey(name: 'admin_response') final String? adminResponse,
    @JsonKey(name: 'entity_response') final String? entityResponse,
    final AppealAuctionRefModel? auction,
    @JsonKey(name: 'created_at') final String? createdAt,
    @JsonKey(name: 'forwarded_at') final String? forwardedAt,
    @JsonKey(name: 'entity_decided_at') final String? entityDecidedAt,
    @JsonKey(name: 'resolved_at') final String? resolvedAt,
  }) = _$AppealModelImpl;
  const _AppealModel._() : super._();

  factory _AppealModel.fromJson(Map<String, dynamic> json) =
      _$AppealModelImpl.fromJson;

  @override
  String get id;
  @override
  String? get subject;
  @override
  String? get reason;
  @override
  String? get status;
  @override
  @JsonKey(name: 'status_label')
  String? get statusLabel;
  @override
  @JsonKey(name: 'admin_response')
  String? get adminResponse;
  @override
  @JsonKey(name: 'entity_response')
  String? get entityResponse;
  @override
  AppealAuctionRefModel? get auction;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'forwarded_at')
  String? get forwardedAt;
  @override
  @JsonKey(name: 'entity_decided_at')
  String? get entityDecidedAt;
  @override
  @JsonKey(name: 'resolved_at')
  String? get resolvedAt;

  /// Create a copy of AppealModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppealModelImplCopyWith<_$AppealModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
