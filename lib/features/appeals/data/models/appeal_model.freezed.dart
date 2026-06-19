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

AppealModel _$AppealModelFromJson(Map<String, dynamic> json) {
  return _AppealModel.fromJson(json);
}

/// @nodoc
mixin _$AppealModel {
  String get id => throw _privateConstructorUsedError;
  String? get subject => throw _privateConstructorUsedError;
  String? get reason => throw _privateConstructorUsedError;
  @JsonKey(name: 'auction_title')
  String? get auctionTitle => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;

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
    @JsonKey(name: 'auction_title') String? auctionTitle,
    String? status,
    @JsonKey(name: 'created_at') String? createdAt,
  });
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
    Object? auctionTitle = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
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
            auctionTitle: freezed == auctionTitle
                ? _value.auctionTitle
                : auctionTitle // ignore: cast_nullable_to_non_nullable
                      as String?,
            status: freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
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
    @JsonKey(name: 'auction_title') String? auctionTitle,
    String? status,
    @JsonKey(name: 'created_at') String? createdAt,
  });
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
    Object? auctionTitle = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
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
        auctionTitle: freezed == auctionTitle
            ? _value.auctionTitle
            : auctionTitle // ignore: cast_nullable_to_non_nullable
                  as String?,
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
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
    @JsonKey(name: 'auction_title') this.auctionTitle,
    this.status,
    @JsonKey(name: 'created_at') this.createdAt,
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
  @JsonKey(name: 'auction_title')
  final String? auctionTitle;
  @override
  final String? status;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;

  @override
  String toString() {
    return 'AppealModel(id: $id, subject: $subject, reason: $reason, auctionTitle: $auctionTitle, status: $status, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppealModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.auctionTitle, auctionTitle) ||
                other.auctionTitle == auctionTitle) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    subject,
    reason,
    auctionTitle,
    status,
    createdAt,
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
    @JsonKey(name: 'auction_title') final String? auctionTitle,
    final String? status,
    @JsonKey(name: 'created_at') final String? createdAt,
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
  @JsonKey(name: 'auction_title')
  String? get auctionTitle;
  @override
  String? get status;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;

  /// Create a copy of AppealModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppealModelImplCopyWith<_$AppealModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
