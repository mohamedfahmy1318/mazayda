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

AuctionSpecModel _$AuctionSpecModelFromJson(Map<String, dynamic> json) {
  return _AuctionSpecModel.fromJson(json);
}

/// @nodoc
mixin _$AuctionSpecModel {
  String? get title => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;

  /// Serializes this AuctionSpecModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuctionSpecModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuctionSpecModelCopyWith<AuctionSpecModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuctionSpecModelCopyWith<$Res> {
  factory $AuctionSpecModelCopyWith(
    AuctionSpecModel value,
    $Res Function(AuctionSpecModel) then,
  ) = _$AuctionSpecModelCopyWithImpl<$Res, AuctionSpecModel>;
  @useResult
  $Res call({String? title, String? body});
}

/// @nodoc
class _$AuctionSpecModelCopyWithImpl<$Res, $Val extends AuctionSpecModel>
    implements $AuctionSpecModelCopyWith<$Res> {
  _$AuctionSpecModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuctionSpecModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? title = freezed, Object? body = freezed}) {
    return _then(
      _value.copyWith(
            title: freezed == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String?,
            body: freezed == body
                ? _value.body
                : body // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AuctionSpecModelImplCopyWith<$Res>
    implements $AuctionSpecModelCopyWith<$Res> {
  factory _$$AuctionSpecModelImplCopyWith(
    _$AuctionSpecModelImpl value,
    $Res Function(_$AuctionSpecModelImpl) then,
  ) = __$$AuctionSpecModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? title, String? body});
}

/// @nodoc
class __$$AuctionSpecModelImplCopyWithImpl<$Res>
    extends _$AuctionSpecModelCopyWithImpl<$Res, _$AuctionSpecModelImpl>
    implements _$$AuctionSpecModelImplCopyWith<$Res> {
  __$$AuctionSpecModelImplCopyWithImpl(
    _$AuctionSpecModelImpl _value,
    $Res Function(_$AuctionSpecModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuctionSpecModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? title = freezed, Object? body = freezed}) {
    return _then(
      _$AuctionSpecModelImpl(
        title: freezed == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String?,
        body: freezed == body
            ? _value.body
            : body // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AuctionSpecModelImpl extends _AuctionSpecModel {
  const _$AuctionSpecModelImpl({this.title, this.body}) : super._();

  factory _$AuctionSpecModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuctionSpecModelImplFromJson(json);

  @override
  final String? title;
  @override
  final String? body;

  @override
  String toString() {
    return 'AuctionSpecModel(title: $title, body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuctionSpecModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, body);

  /// Create a copy of AuctionSpecModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuctionSpecModelImplCopyWith<_$AuctionSpecModelImpl> get copyWith =>
      __$$AuctionSpecModelImplCopyWithImpl<_$AuctionSpecModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AuctionSpecModelImplToJson(this);
  }
}

abstract class _AuctionSpecModel extends AuctionSpecModel {
  const factory _AuctionSpecModel({final String? title, final String? body}) =
      _$AuctionSpecModelImpl;
  const _AuctionSpecModel._() : super._();

  factory _AuctionSpecModel.fromJson(Map<String, dynamic> json) =
      _$AuctionSpecModelImpl.fromJson;

  @override
  String? get title;
  @override
  String? get body;

  /// Create a copy of AuctionSpecModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuctionSpecModelImplCopyWith<_$AuctionSpecModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

InspectionModel _$InspectionModelFromJson(Map<String, dynamic> json) {
  return _InspectionModel.fromJson(json);
}

/// @nodoc
mixin _$InspectionModel {
  String? get start => throw _privateConstructorUsedError;
  String? get end => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_open')
  bool get isOpen => throw _privateConstructorUsedError;

  /// Serializes this InspectionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InspectionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InspectionModelCopyWith<InspectionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InspectionModelCopyWith<$Res> {
  factory $InspectionModelCopyWith(
    InspectionModel value,
    $Res Function(InspectionModel) then,
  ) = _$InspectionModelCopyWithImpl<$Res, InspectionModel>;
  @useResult
  $Res call({
    String? start,
    String? end,
    String? location,
    @JsonKey(name: 'is_open') bool isOpen,
  });
}

/// @nodoc
class _$InspectionModelCopyWithImpl<$Res, $Val extends InspectionModel>
    implements $InspectionModelCopyWith<$Res> {
  _$InspectionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InspectionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = freezed,
    Object? end = freezed,
    Object? location = freezed,
    Object? isOpen = null,
  }) {
    return _then(
      _value.copyWith(
            start: freezed == start
                ? _value.start
                : start // ignore: cast_nullable_to_non_nullable
                      as String?,
            end: freezed == end
                ? _value.end
                : end // ignore: cast_nullable_to_non_nullable
                      as String?,
            location: freezed == location
                ? _value.location
                : location // ignore: cast_nullable_to_non_nullable
                      as String?,
            isOpen: null == isOpen
                ? _value.isOpen
                : isOpen // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$InspectionModelImplCopyWith<$Res>
    implements $InspectionModelCopyWith<$Res> {
  factory _$$InspectionModelImplCopyWith(
    _$InspectionModelImpl value,
    $Res Function(_$InspectionModelImpl) then,
  ) = __$$InspectionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? start,
    String? end,
    String? location,
    @JsonKey(name: 'is_open') bool isOpen,
  });
}

/// @nodoc
class __$$InspectionModelImplCopyWithImpl<$Res>
    extends _$InspectionModelCopyWithImpl<$Res, _$InspectionModelImpl>
    implements _$$InspectionModelImplCopyWith<$Res> {
  __$$InspectionModelImplCopyWithImpl(
    _$InspectionModelImpl _value,
    $Res Function(_$InspectionModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of InspectionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = freezed,
    Object? end = freezed,
    Object? location = freezed,
    Object? isOpen = null,
  }) {
    return _then(
      _$InspectionModelImpl(
        start: freezed == start
            ? _value.start
            : start // ignore: cast_nullable_to_non_nullable
                  as String?,
        end: freezed == end
            ? _value.end
            : end // ignore: cast_nullable_to_non_nullable
                  as String?,
        location: freezed == location
            ? _value.location
            : location // ignore: cast_nullable_to_non_nullable
                  as String?,
        isOpen: null == isOpen
            ? _value.isOpen
            : isOpen // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$InspectionModelImpl extends _InspectionModel {
  const _$InspectionModelImpl({
    this.start,
    this.end,
    this.location,
    @JsonKey(name: 'is_open') this.isOpen = false,
  }) : super._();

  factory _$InspectionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$InspectionModelImplFromJson(json);

  @override
  final String? start;
  @override
  final String? end;
  @override
  final String? location;
  @override
  @JsonKey(name: 'is_open')
  final bool isOpen;

  @override
  String toString() {
    return 'InspectionModel(start: $start, end: $end, location: $location, isOpen: $isOpen)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InspectionModelImpl &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.isOpen, isOpen) || other.isOpen == isOpen));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, start, end, location, isOpen);

  /// Create a copy of InspectionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InspectionModelImplCopyWith<_$InspectionModelImpl> get copyWith =>
      __$$InspectionModelImplCopyWithImpl<_$InspectionModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$InspectionModelImplToJson(this);
  }
}

abstract class _InspectionModel extends InspectionModel {
  const factory _InspectionModel({
    final String? start,
    final String? end,
    final String? location,
    @JsonKey(name: 'is_open') final bool isOpen,
  }) = _$InspectionModelImpl;
  const _InspectionModel._() : super._();

  factory _InspectionModel.fromJson(Map<String, dynamic> json) =
      _$InspectionModelImpl.fromJson;

  @override
  String? get start;
  @override
  String? get end;
  @override
  String? get location;
  @override
  @JsonKey(name: 'is_open')
  bool get isOpen;

  /// Create a copy of InspectionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InspectionModelImplCopyWith<_$InspectionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AppealWindowModel _$AppealWindowModelFromJson(Map<String, dynamic> json) {
  return _AppealWindowModel.fromJson(json);
}

/// @nodoc
mixin _$AppealWindowModel {
  int get days => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_open')
  bool get isOpen => throw _privateConstructorUsedError;
  String? get deadline => throw _privateConstructorUsedError;

  /// Serializes this AppealWindowModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppealWindowModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppealWindowModelCopyWith<AppealWindowModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppealWindowModelCopyWith<$Res> {
  factory $AppealWindowModelCopyWith(
    AppealWindowModel value,
    $Res Function(AppealWindowModel) then,
  ) = _$AppealWindowModelCopyWithImpl<$Res, AppealWindowModel>;
  @useResult
  $Res call({
    int days,
    @JsonKey(name: 'is_open') bool isOpen,
    String? deadline,
  });
}

/// @nodoc
class _$AppealWindowModelCopyWithImpl<$Res, $Val extends AppealWindowModel>
    implements $AppealWindowModelCopyWith<$Res> {
  _$AppealWindowModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppealWindowModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? days = null,
    Object? isOpen = null,
    Object? deadline = freezed,
  }) {
    return _then(
      _value.copyWith(
            days: null == days
                ? _value.days
                : days // ignore: cast_nullable_to_non_nullable
                      as int,
            isOpen: null == isOpen
                ? _value.isOpen
                : isOpen // ignore: cast_nullable_to_non_nullable
                      as bool,
            deadline: freezed == deadline
                ? _value.deadline
                : deadline // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AppealWindowModelImplCopyWith<$Res>
    implements $AppealWindowModelCopyWith<$Res> {
  factory _$$AppealWindowModelImplCopyWith(
    _$AppealWindowModelImpl value,
    $Res Function(_$AppealWindowModelImpl) then,
  ) = __$$AppealWindowModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int days,
    @JsonKey(name: 'is_open') bool isOpen,
    String? deadline,
  });
}

/// @nodoc
class __$$AppealWindowModelImplCopyWithImpl<$Res>
    extends _$AppealWindowModelCopyWithImpl<$Res, _$AppealWindowModelImpl>
    implements _$$AppealWindowModelImplCopyWith<$Res> {
  __$$AppealWindowModelImplCopyWithImpl(
    _$AppealWindowModelImpl _value,
    $Res Function(_$AppealWindowModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AppealWindowModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? days = null,
    Object? isOpen = null,
    Object? deadline = freezed,
  }) {
    return _then(
      _$AppealWindowModelImpl(
        days: null == days
            ? _value.days
            : days // ignore: cast_nullable_to_non_nullable
                  as int,
        isOpen: null == isOpen
            ? _value.isOpen
            : isOpen // ignore: cast_nullable_to_non_nullable
                  as bool,
        deadline: freezed == deadline
            ? _value.deadline
            : deadline // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AppealWindowModelImpl extends _AppealWindowModel {
  const _$AppealWindowModelImpl({
    this.days = 0,
    @JsonKey(name: 'is_open') this.isOpen = false,
    this.deadline,
  }) : super._();

  factory _$AppealWindowModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppealWindowModelImplFromJson(json);

  @override
  @JsonKey()
  final int days;
  @override
  @JsonKey(name: 'is_open')
  final bool isOpen;
  @override
  final String? deadline;

  @override
  String toString() {
    return 'AppealWindowModel(days: $days, isOpen: $isOpen, deadline: $deadline)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppealWindowModelImpl &&
            (identical(other.days, days) || other.days == days) &&
            (identical(other.isOpen, isOpen) || other.isOpen == isOpen) &&
            (identical(other.deadline, deadline) ||
                other.deadline == deadline));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, days, isOpen, deadline);

  /// Create a copy of AppealWindowModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppealWindowModelImplCopyWith<_$AppealWindowModelImpl> get copyWith =>
      __$$AppealWindowModelImplCopyWithImpl<_$AppealWindowModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AppealWindowModelImplToJson(this);
  }
}

abstract class _AppealWindowModel extends AppealWindowModel {
  const factory _AppealWindowModel({
    final int days,
    @JsonKey(name: 'is_open') final bool isOpen,
    final String? deadline,
  }) = _$AppealWindowModelImpl;
  const _AppealWindowModel._() : super._();

  factory _AppealWindowModel.fromJson(Map<String, dynamic> json) =
      _$AppealWindowModelImpl.fromJson;

  @override
  int get days;
  @override
  @JsonKey(name: 'is_open')
  bool get isOpen;
  @override
  String? get deadline;

  /// Create a copy of AppealWindowModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppealWindowModelImplCopyWith<_$AppealWindowModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LeaseModel _$LeaseModelFromJson(Map<String, dynamic> json) {
  return _LeaseModel.fromJson(json);
}

/// @nodoc
mixin _$LeaseModel {
  @JsonKey(name: 'duration_years')
  int? get durationYears => throw _privateConstructorUsedError;
  int? get renewals => throw _privateConstructorUsedError;

  /// Serializes this LeaseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LeaseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LeaseModelCopyWith<LeaseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeaseModelCopyWith<$Res> {
  factory $LeaseModelCopyWith(
    LeaseModel value,
    $Res Function(LeaseModel) then,
  ) = _$LeaseModelCopyWithImpl<$Res, LeaseModel>;
  @useResult
  $Res call({
    @JsonKey(name: 'duration_years') int? durationYears,
    int? renewals,
  });
}

/// @nodoc
class _$LeaseModelCopyWithImpl<$Res, $Val extends LeaseModel>
    implements $LeaseModelCopyWith<$Res> {
  _$LeaseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LeaseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? durationYears = freezed, Object? renewals = freezed}) {
    return _then(
      _value.copyWith(
            durationYears: freezed == durationYears
                ? _value.durationYears
                : durationYears // ignore: cast_nullable_to_non_nullable
                      as int?,
            renewals: freezed == renewals
                ? _value.renewals
                : renewals // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LeaseModelImplCopyWith<$Res>
    implements $LeaseModelCopyWith<$Res> {
  factory _$$LeaseModelImplCopyWith(
    _$LeaseModelImpl value,
    $Res Function(_$LeaseModelImpl) then,
  ) = __$$LeaseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'duration_years') int? durationYears,
    int? renewals,
  });
}

/// @nodoc
class __$$LeaseModelImplCopyWithImpl<$Res>
    extends _$LeaseModelCopyWithImpl<$Res, _$LeaseModelImpl>
    implements _$$LeaseModelImplCopyWith<$Res> {
  __$$LeaseModelImplCopyWithImpl(
    _$LeaseModelImpl _value,
    $Res Function(_$LeaseModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LeaseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? durationYears = freezed, Object? renewals = freezed}) {
    return _then(
      _$LeaseModelImpl(
        durationYears: freezed == durationYears
            ? _value.durationYears
            : durationYears // ignore: cast_nullable_to_non_nullable
                  as int?,
        renewals: freezed == renewals
            ? _value.renewals
            : renewals // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LeaseModelImpl extends _LeaseModel {
  const _$LeaseModelImpl({
    @JsonKey(name: 'duration_years') this.durationYears,
    this.renewals,
  }) : super._();

  factory _$LeaseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LeaseModelImplFromJson(json);

  @override
  @JsonKey(name: 'duration_years')
  final int? durationYears;
  @override
  final int? renewals;

  @override
  String toString() {
    return 'LeaseModel(durationYears: $durationYears, renewals: $renewals)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeaseModelImpl &&
            (identical(other.durationYears, durationYears) ||
                other.durationYears == durationYears) &&
            (identical(other.renewals, renewals) ||
                other.renewals == renewals));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, durationYears, renewals);

  /// Create a copy of LeaseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LeaseModelImplCopyWith<_$LeaseModelImpl> get copyWith =>
      __$$LeaseModelImplCopyWithImpl<_$LeaseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LeaseModelImplToJson(this);
  }
}

abstract class _LeaseModel extends LeaseModel {
  const factory _LeaseModel({
    @JsonKey(name: 'duration_years') final int? durationYears,
    final int? renewals,
  }) = _$LeaseModelImpl;
  const _LeaseModel._() : super._();

  factory _LeaseModel.fromJson(Map<String, dynamic> json) =
      _$LeaseModelImpl.fromJson;

  @override
  @JsonKey(name: 'duration_years')
  int? get durationYears;
  @override
  int? get renewals;

  /// Create a copy of LeaseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LeaseModelImplCopyWith<_$LeaseModelImpl> get copyWith =>
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
  @JsonKey(name: 'asset_class')
  String? get assetClass => throw _privateConstructorUsedError;
  String? get condition => throw _privateConstructorUsedError;
  @JsonKey(name: 'unit_count')
  int? get unitCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'condition_terms')
  String? get conditionTerms => throw _privateConstructorUsedError;
  @JsonKey(name: 'award_terms')
  String? get awardTerms => throw _privateConstructorUsedError;
  List<AuctionSpecModel> get specifications =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'cover_photo_url')
  String? get coverPhotoUrl => throw _privateConstructorUsedError;
  List<String> get photos => throw _privateConstructorUsedError;
  @JsonKey(name: 'video_url')
  String? get videoUrl => throw _privateConstructorUsedError;
  NamedRefModel? get category => throw _privateConstructorUsedError;
  NamedRefModel? get entity => throw _privateConstructorUsedError;
  WilayaRefModel? get wilaya => throw _privateConstructorUsedError;
  NamedRefModel? get commune => throw _privateConstructorUsedError;
  @JsonKey(name: 'asset_location')
  String? get assetLocation => throw _privateConstructorUsedError;
  dynamic get latitude => throw _privateConstructorUsedError;
  dynamic get longitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'mayor_name')
  String? get mayorName => throw _privateConstructorUsedError;
  @JsonKey(name: 'opening_price')
  MoneyModel? get openingPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_price')
  MoneyModel? get currentPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'deposit_amount')
  MoneyModel? get depositAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'deposit_percent')
  dynamic get depositPercent => throw _privateConstructorUsedError;
  @JsonKey(name: 'book_price')
  MoneyModel? get bookPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_book_access')
  bool get hasBookAccess => throw _privateConstructorUsedError;
  @JsonKey(name: 'bid_count')
  int get bidCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_time')
  String? get startTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_time')
  String? get endTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'seconds_remaining')
  int get secondsRemaining => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_live')
  bool get isLive => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_biddable')
  bool get isBiddable => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_ended')
  bool get hasEnded => throw _privateConstructorUsedError;
  @JsonKey(name: 'extension_count')
  int get extensionCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_extensions')
  int? get maxExtensions => throw _privateConstructorUsedError;
  InspectionModel? get inspection => throw _privateConstructorUsedError;
  @JsonKey(name: 'appeal_window')
  AppealWindowModel? get appealWindow => throw _privateConstructorUsedError;
  LeaseModel? get lease => throw _privateConstructorUsedError;
  @JsonKey(name: 'winner_alias')
  String? get winnerAlias => throw _privateConstructorUsedError;
  @JsonKey(name: 'final_price')
  MoneyModel? get finalPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'requires_commerce_register')
  bool get requiresCommerceRegister => throw _privateConstructorUsedError;
  @JsonKey(name: 'requires_newspaper_announcement')
  bool get requiresNewspaperAnnouncement => throw _privateConstructorUsedError;
  @JsonKey(name: 'condition_book')
  ConditionBookModel? get conditionBook => throw _privateConstructorUsedError;
  @JsonKey(name: 'award_document')
  ConditionBookModel? get awardDocument => throw _privateConstructorUsedError;

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
    @JsonKey(name: 'asset_class') String? assetClass,
    String? condition,
    @JsonKey(name: 'unit_count') int? unitCount,
    @JsonKey(name: 'condition_terms') String? conditionTerms,
    @JsonKey(name: 'award_terms') String? awardTerms,
    List<AuctionSpecModel> specifications,
    @JsonKey(name: 'cover_photo_url') String? coverPhotoUrl,
    List<String> photos,
    @JsonKey(name: 'video_url') String? videoUrl,
    NamedRefModel? category,
    NamedRefModel? entity,
    WilayaRefModel? wilaya,
    NamedRefModel? commune,
    @JsonKey(name: 'asset_location') String? assetLocation,
    dynamic latitude,
    dynamic longitude,
    @JsonKey(name: 'mayor_name') String? mayorName,
    @JsonKey(name: 'opening_price') MoneyModel? openingPrice,
    @JsonKey(name: 'current_price') MoneyModel? currentPrice,
    @JsonKey(name: 'deposit_amount') MoneyModel? depositAmount,
    @JsonKey(name: 'deposit_percent') dynamic depositPercent,
    @JsonKey(name: 'book_price') MoneyModel? bookPrice,
    @JsonKey(name: 'has_book_access') bool hasBookAccess,
    @JsonKey(name: 'bid_count') int bidCount,
    @JsonKey(name: 'start_time') String? startTime,
    @JsonKey(name: 'end_time') String? endTime,
    @JsonKey(name: 'seconds_remaining') int secondsRemaining,
    @JsonKey(name: 'is_live') bool isLive,
    @JsonKey(name: 'is_biddable') bool isBiddable,
    @JsonKey(name: 'has_ended') bool hasEnded,
    @JsonKey(name: 'extension_count') int extensionCount,
    @JsonKey(name: 'max_extensions') int? maxExtensions,
    InspectionModel? inspection,
    @JsonKey(name: 'appeal_window') AppealWindowModel? appealWindow,
    LeaseModel? lease,
    @JsonKey(name: 'winner_alias') String? winnerAlias,
    @JsonKey(name: 'final_price') MoneyModel? finalPrice,
    @JsonKey(name: 'requires_commerce_register') bool requiresCommerceRegister,
    @JsonKey(name: 'requires_newspaper_announcement')
    bool requiresNewspaperAnnouncement,
    @JsonKey(name: 'condition_book') ConditionBookModel? conditionBook,
    @JsonKey(name: 'award_document') ConditionBookModel? awardDocument,
  });

  $NamedRefModelCopyWith<$Res>? get category;
  $NamedRefModelCopyWith<$Res>? get entity;
  $WilayaRefModelCopyWith<$Res>? get wilaya;
  $NamedRefModelCopyWith<$Res>? get commune;
  $MoneyModelCopyWith<$Res>? get openingPrice;
  $MoneyModelCopyWith<$Res>? get currentPrice;
  $MoneyModelCopyWith<$Res>? get depositAmount;
  $MoneyModelCopyWith<$Res>? get bookPrice;
  $InspectionModelCopyWith<$Res>? get inspection;
  $AppealWindowModelCopyWith<$Res>? get appealWindow;
  $LeaseModelCopyWith<$Res>? get lease;
  $MoneyModelCopyWith<$Res>? get finalPrice;
  $ConditionBookModelCopyWith<$Res>? get conditionBook;
  $ConditionBookModelCopyWith<$Res>? get awardDocument;
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
    Object? assetClass = freezed,
    Object? condition = freezed,
    Object? unitCount = freezed,
    Object? conditionTerms = freezed,
    Object? awardTerms = freezed,
    Object? specifications = null,
    Object? coverPhotoUrl = freezed,
    Object? photos = null,
    Object? videoUrl = freezed,
    Object? category = freezed,
    Object? entity = freezed,
    Object? wilaya = freezed,
    Object? commune = freezed,
    Object? assetLocation = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? mayorName = freezed,
    Object? openingPrice = freezed,
    Object? currentPrice = freezed,
    Object? depositAmount = freezed,
    Object? depositPercent = freezed,
    Object? bookPrice = freezed,
    Object? hasBookAccess = null,
    Object? bidCount = null,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? secondsRemaining = null,
    Object? isLive = null,
    Object? isBiddable = null,
    Object? hasEnded = null,
    Object? extensionCount = null,
    Object? maxExtensions = freezed,
    Object? inspection = freezed,
    Object? appealWindow = freezed,
    Object? lease = freezed,
    Object? winnerAlias = freezed,
    Object? finalPrice = freezed,
    Object? requiresCommerceRegister = null,
    Object? requiresNewspaperAnnouncement = null,
    Object? conditionBook = freezed,
    Object? awardDocument = freezed,
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
            assetClass: freezed == assetClass
                ? _value.assetClass
                : assetClass // ignore: cast_nullable_to_non_nullable
                      as String?,
            condition: freezed == condition
                ? _value.condition
                : condition // ignore: cast_nullable_to_non_nullable
                      as String?,
            unitCount: freezed == unitCount
                ? _value.unitCount
                : unitCount // ignore: cast_nullable_to_non_nullable
                      as int?,
            conditionTerms: freezed == conditionTerms
                ? _value.conditionTerms
                : conditionTerms // ignore: cast_nullable_to_non_nullable
                      as String?,
            awardTerms: freezed == awardTerms
                ? _value.awardTerms
                : awardTerms // ignore: cast_nullable_to_non_nullable
                      as String?,
            specifications: null == specifications
                ? _value.specifications
                : specifications // ignore: cast_nullable_to_non_nullable
                      as List<AuctionSpecModel>,
            coverPhotoUrl: freezed == coverPhotoUrl
                ? _value.coverPhotoUrl
                : coverPhotoUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            photos: null == photos
                ? _value.photos
                : photos // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            videoUrl: freezed == videoUrl
                ? _value.videoUrl
                : videoUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
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
            commune: freezed == commune
                ? _value.commune
                : commune // ignore: cast_nullable_to_non_nullable
                      as NamedRefModel?,
            assetLocation: freezed == assetLocation
                ? _value.assetLocation
                : assetLocation // ignore: cast_nullable_to_non_nullable
                      as String?,
            latitude: freezed == latitude
                ? _value.latitude
                : latitude // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            longitude: freezed == longitude
                ? _value.longitude
                : longitude // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            mayorName: freezed == mayorName
                ? _value.mayorName
                : mayorName // ignore: cast_nullable_to_non_nullable
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
            depositPercent: freezed == depositPercent
                ? _value.depositPercent
                : depositPercent // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            bookPrice: freezed == bookPrice
                ? _value.bookPrice
                : bookPrice // ignore: cast_nullable_to_non_nullable
                      as MoneyModel?,
            hasBookAccess: null == hasBookAccess
                ? _value.hasBookAccess
                : hasBookAccess // ignore: cast_nullable_to_non_nullable
                      as bool,
            bidCount: null == bidCount
                ? _value.bidCount
                : bidCount // ignore: cast_nullable_to_non_nullable
                      as int,
            startTime: freezed == startTime
                ? _value.startTime
                : startTime // ignore: cast_nullable_to_non_nullable
                      as String?,
            endTime: freezed == endTime
                ? _value.endTime
                : endTime // ignore: cast_nullable_to_non_nullable
                      as String?,
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
            extensionCount: null == extensionCount
                ? _value.extensionCount
                : extensionCount // ignore: cast_nullable_to_non_nullable
                      as int,
            maxExtensions: freezed == maxExtensions
                ? _value.maxExtensions
                : maxExtensions // ignore: cast_nullable_to_non_nullable
                      as int?,
            inspection: freezed == inspection
                ? _value.inspection
                : inspection // ignore: cast_nullable_to_non_nullable
                      as InspectionModel?,
            appealWindow: freezed == appealWindow
                ? _value.appealWindow
                : appealWindow // ignore: cast_nullable_to_non_nullable
                      as AppealWindowModel?,
            lease: freezed == lease
                ? _value.lease
                : lease // ignore: cast_nullable_to_non_nullable
                      as LeaseModel?,
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
            requiresNewspaperAnnouncement: null == requiresNewspaperAnnouncement
                ? _value.requiresNewspaperAnnouncement
                : requiresNewspaperAnnouncement // ignore: cast_nullable_to_non_nullable
                      as bool,
            conditionBook: freezed == conditionBook
                ? _value.conditionBook
                : conditionBook // ignore: cast_nullable_to_non_nullable
                      as ConditionBookModel?,
            awardDocument: freezed == awardDocument
                ? _value.awardDocument
                : awardDocument // ignore: cast_nullable_to_non_nullable
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
  $NamedRefModelCopyWith<$Res>? get commune {
    if (_value.commune == null) {
      return null;
    }

    return $NamedRefModelCopyWith<$Res>(_value.commune!, (value) {
      return _then(_value.copyWith(commune: value) as $Val);
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
  $InspectionModelCopyWith<$Res>? get inspection {
    if (_value.inspection == null) {
      return null;
    }

    return $InspectionModelCopyWith<$Res>(_value.inspection!, (value) {
      return _then(_value.copyWith(inspection: value) as $Val);
    });
  }

  /// Create a copy of AuctionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppealWindowModelCopyWith<$Res>? get appealWindow {
    if (_value.appealWindow == null) {
      return null;
    }

    return $AppealWindowModelCopyWith<$Res>(_value.appealWindow!, (value) {
      return _then(_value.copyWith(appealWindow: value) as $Val);
    });
  }

  /// Create a copy of AuctionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LeaseModelCopyWith<$Res>? get lease {
    if (_value.lease == null) {
      return null;
    }

    return $LeaseModelCopyWith<$Res>(_value.lease!, (value) {
      return _then(_value.copyWith(lease: value) as $Val);
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

  /// Create a copy of AuctionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConditionBookModelCopyWith<$Res>? get awardDocument {
    if (_value.awardDocument == null) {
      return null;
    }

    return $ConditionBookModelCopyWith<$Res>(_value.awardDocument!, (value) {
      return _then(_value.copyWith(awardDocument: value) as $Val);
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
    @JsonKey(name: 'asset_class') String? assetClass,
    String? condition,
    @JsonKey(name: 'unit_count') int? unitCount,
    @JsonKey(name: 'condition_terms') String? conditionTerms,
    @JsonKey(name: 'award_terms') String? awardTerms,
    List<AuctionSpecModel> specifications,
    @JsonKey(name: 'cover_photo_url') String? coverPhotoUrl,
    List<String> photos,
    @JsonKey(name: 'video_url') String? videoUrl,
    NamedRefModel? category,
    NamedRefModel? entity,
    WilayaRefModel? wilaya,
    NamedRefModel? commune,
    @JsonKey(name: 'asset_location') String? assetLocation,
    dynamic latitude,
    dynamic longitude,
    @JsonKey(name: 'mayor_name') String? mayorName,
    @JsonKey(name: 'opening_price') MoneyModel? openingPrice,
    @JsonKey(name: 'current_price') MoneyModel? currentPrice,
    @JsonKey(name: 'deposit_amount') MoneyModel? depositAmount,
    @JsonKey(name: 'deposit_percent') dynamic depositPercent,
    @JsonKey(name: 'book_price') MoneyModel? bookPrice,
    @JsonKey(name: 'has_book_access') bool hasBookAccess,
    @JsonKey(name: 'bid_count') int bidCount,
    @JsonKey(name: 'start_time') String? startTime,
    @JsonKey(name: 'end_time') String? endTime,
    @JsonKey(name: 'seconds_remaining') int secondsRemaining,
    @JsonKey(name: 'is_live') bool isLive,
    @JsonKey(name: 'is_biddable') bool isBiddable,
    @JsonKey(name: 'has_ended') bool hasEnded,
    @JsonKey(name: 'extension_count') int extensionCount,
    @JsonKey(name: 'max_extensions') int? maxExtensions,
    InspectionModel? inspection,
    @JsonKey(name: 'appeal_window') AppealWindowModel? appealWindow,
    LeaseModel? lease,
    @JsonKey(name: 'winner_alias') String? winnerAlias,
    @JsonKey(name: 'final_price') MoneyModel? finalPrice,
    @JsonKey(name: 'requires_commerce_register') bool requiresCommerceRegister,
    @JsonKey(name: 'requires_newspaper_announcement')
    bool requiresNewspaperAnnouncement,
    @JsonKey(name: 'condition_book') ConditionBookModel? conditionBook,
    @JsonKey(name: 'award_document') ConditionBookModel? awardDocument,
  });

  @override
  $NamedRefModelCopyWith<$Res>? get category;
  @override
  $NamedRefModelCopyWith<$Res>? get entity;
  @override
  $WilayaRefModelCopyWith<$Res>? get wilaya;
  @override
  $NamedRefModelCopyWith<$Res>? get commune;
  @override
  $MoneyModelCopyWith<$Res>? get openingPrice;
  @override
  $MoneyModelCopyWith<$Res>? get currentPrice;
  @override
  $MoneyModelCopyWith<$Res>? get depositAmount;
  @override
  $MoneyModelCopyWith<$Res>? get bookPrice;
  @override
  $InspectionModelCopyWith<$Res>? get inspection;
  @override
  $AppealWindowModelCopyWith<$Res>? get appealWindow;
  @override
  $LeaseModelCopyWith<$Res>? get lease;
  @override
  $MoneyModelCopyWith<$Res>? get finalPrice;
  @override
  $ConditionBookModelCopyWith<$Res>? get conditionBook;
  @override
  $ConditionBookModelCopyWith<$Res>? get awardDocument;
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
    Object? assetClass = freezed,
    Object? condition = freezed,
    Object? unitCount = freezed,
    Object? conditionTerms = freezed,
    Object? awardTerms = freezed,
    Object? specifications = null,
    Object? coverPhotoUrl = freezed,
    Object? photos = null,
    Object? videoUrl = freezed,
    Object? category = freezed,
    Object? entity = freezed,
    Object? wilaya = freezed,
    Object? commune = freezed,
    Object? assetLocation = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? mayorName = freezed,
    Object? openingPrice = freezed,
    Object? currentPrice = freezed,
    Object? depositAmount = freezed,
    Object? depositPercent = freezed,
    Object? bookPrice = freezed,
    Object? hasBookAccess = null,
    Object? bidCount = null,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? secondsRemaining = null,
    Object? isLive = null,
    Object? isBiddable = null,
    Object? hasEnded = null,
    Object? extensionCount = null,
    Object? maxExtensions = freezed,
    Object? inspection = freezed,
    Object? appealWindow = freezed,
    Object? lease = freezed,
    Object? winnerAlias = freezed,
    Object? finalPrice = freezed,
    Object? requiresCommerceRegister = null,
    Object? requiresNewspaperAnnouncement = null,
    Object? conditionBook = freezed,
    Object? awardDocument = freezed,
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
        assetClass: freezed == assetClass
            ? _value.assetClass
            : assetClass // ignore: cast_nullable_to_non_nullable
                  as String?,
        condition: freezed == condition
            ? _value.condition
            : condition // ignore: cast_nullable_to_non_nullable
                  as String?,
        unitCount: freezed == unitCount
            ? _value.unitCount
            : unitCount // ignore: cast_nullable_to_non_nullable
                  as int?,
        conditionTerms: freezed == conditionTerms
            ? _value.conditionTerms
            : conditionTerms // ignore: cast_nullable_to_non_nullable
                  as String?,
        awardTerms: freezed == awardTerms
            ? _value.awardTerms
            : awardTerms // ignore: cast_nullable_to_non_nullable
                  as String?,
        specifications: null == specifications
            ? _value._specifications
            : specifications // ignore: cast_nullable_to_non_nullable
                  as List<AuctionSpecModel>,
        coverPhotoUrl: freezed == coverPhotoUrl
            ? _value.coverPhotoUrl
            : coverPhotoUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        photos: null == photos
            ? _value._photos
            : photos // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        videoUrl: freezed == videoUrl
            ? _value.videoUrl
            : videoUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
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
        commune: freezed == commune
            ? _value.commune
            : commune // ignore: cast_nullable_to_non_nullable
                  as NamedRefModel?,
        assetLocation: freezed == assetLocation
            ? _value.assetLocation
            : assetLocation // ignore: cast_nullable_to_non_nullable
                  as String?,
        latitude: freezed == latitude
            ? _value.latitude
            : latitude // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        longitude: freezed == longitude
            ? _value.longitude
            : longitude // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        mayorName: freezed == mayorName
            ? _value.mayorName
            : mayorName // ignore: cast_nullable_to_non_nullable
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
        depositPercent: freezed == depositPercent
            ? _value.depositPercent
            : depositPercent // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        bookPrice: freezed == bookPrice
            ? _value.bookPrice
            : bookPrice // ignore: cast_nullable_to_non_nullable
                  as MoneyModel?,
        hasBookAccess: null == hasBookAccess
            ? _value.hasBookAccess
            : hasBookAccess // ignore: cast_nullable_to_non_nullable
                  as bool,
        bidCount: null == bidCount
            ? _value.bidCount
            : bidCount // ignore: cast_nullable_to_non_nullable
                  as int,
        startTime: freezed == startTime
            ? _value.startTime
            : startTime // ignore: cast_nullable_to_non_nullable
                  as String?,
        endTime: freezed == endTime
            ? _value.endTime
            : endTime // ignore: cast_nullable_to_non_nullable
                  as String?,
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
        extensionCount: null == extensionCount
            ? _value.extensionCount
            : extensionCount // ignore: cast_nullable_to_non_nullable
                  as int,
        maxExtensions: freezed == maxExtensions
            ? _value.maxExtensions
            : maxExtensions // ignore: cast_nullable_to_non_nullable
                  as int?,
        inspection: freezed == inspection
            ? _value.inspection
            : inspection // ignore: cast_nullable_to_non_nullable
                  as InspectionModel?,
        appealWindow: freezed == appealWindow
            ? _value.appealWindow
            : appealWindow // ignore: cast_nullable_to_non_nullable
                  as AppealWindowModel?,
        lease: freezed == lease
            ? _value.lease
            : lease // ignore: cast_nullable_to_non_nullable
                  as LeaseModel?,
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
        requiresNewspaperAnnouncement: null == requiresNewspaperAnnouncement
            ? _value.requiresNewspaperAnnouncement
            : requiresNewspaperAnnouncement // ignore: cast_nullable_to_non_nullable
                  as bool,
        conditionBook: freezed == conditionBook
            ? _value.conditionBook
            : conditionBook // ignore: cast_nullable_to_non_nullable
                  as ConditionBookModel?,
        awardDocument: freezed == awardDocument
            ? _value.awardDocument
            : awardDocument // ignore: cast_nullable_to_non_nullable
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
    @JsonKey(name: 'asset_class') this.assetClass,
    this.condition,
    @JsonKey(name: 'unit_count') this.unitCount,
    @JsonKey(name: 'condition_terms') this.conditionTerms,
    @JsonKey(name: 'award_terms') this.awardTerms,
    final List<AuctionSpecModel> specifications = const <AuctionSpecModel>[],
    @JsonKey(name: 'cover_photo_url') this.coverPhotoUrl,
    final List<String> photos = const <String>[],
    @JsonKey(name: 'video_url') this.videoUrl,
    this.category,
    this.entity,
    this.wilaya,
    this.commune,
    @JsonKey(name: 'asset_location') this.assetLocation,
    this.latitude,
    this.longitude,
    @JsonKey(name: 'mayor_name') this.mayorName,
    @JsonKey(name: 'opening_price') this.openingPrice,
    @JsonKey(name: 'current_price') this.currentPrice,
    @JsonKey(name: 'deposit_amount') this.depositAmount,
    @JsonKey(name: 'deposit_percent') this.depositPercent,
    @JsonKey(name: 'book_price') this.bookPrice,
    @JsonKey(name: 'has_book_access') this.hasBookAccess = false,
    @JsonKey(name: 'bid_count') this.bidCount = 0,
    @JsonKey(name: 'start_time') this.startTime,
    @JsonKey(name: 'end_time') this.endTime,
    @JsonKey(name: 'seconds_remaining') this.secondsRemaining = 0,
    @JsonKey(name: 'is_live') this.isLive = false,
    @JsonKey(name: 'is_biddable') this.isBiddable = false,
    @JsonKey(name: 'has_ended') this.hasEnded = false,
    @JsonKey(name: 'extension_count') this.extensionCount = 0,
    @JsonKey(name: 'max_extensions') this.maxExtensions,
    this.inspection,
    @JsonKey(name: 'appeal_window') this.appealWindow,
    this.lease,
    @JsonKey(name: 'winner_alias') this.winnerAlias,
    @JsonKey(name: 'final_price') this.finalPrice,
    @JsonKey(name: 'requires_commerce_register')
    this.requiresCommerceRegister = false,
    @JsonKey(name: 'requires_newspaper_announcement')
    this.requiresNewspaperAnnouncement = false,
    @JsonKey(name: 'condition_book') this.conditionBook,
    @JsonKey(name: 'award_document') this.awardDocument,
  }) : _specifications = specifications,
       _photos = photos,
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
  @JsonKey(name: 'asset_class')
  final String? assetClass;
  @override
  final String? condition;
  @override
  @JsonKey(name: 'unit_count')
  final int? unitCount;
  @override
  @JsonKey(name: 'condition_terms')
  final String? conditionTerms;
  @override
  @JsonKey(name: 'award_terms')
  final String? awardTerms;
  final List<AuctionSpecModel> _specifications;
  @override
  @JsonKey()
  List<AuctionSpecModel> get specifications {
    if (_specifications is EqualUnmodifiableListView) return _specifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_specifications);
  }

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
  @JsonKey(name: 'video_url')
  final String? videoUrl;
  @override
  final NamedRefModel? category;
  @override
  final NamedRefModel? entity;
  @override
  final WilayaRefModel? wilaya;
  @override
  final NamedRefModel? commune;
  @override
  @JsonKey(name: 'asset_location')
  final String? assetLocation;
  @override
  final dynamic latitude;
  @override
  final dynamic longitude;
  @override
  @JsonKey(name: 'mayor_name')
  final String? mayorName;
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
  @JsonKey(name: 'deposit_percent')
  final dynamic depositPercent;
  @override
  @JsonKey(name: 'book_price')
  final MoneyModel? bookPrice;
  @override
  @JsonKey(name: 'has_book_access')
  final bool hasBookAccess;
  @override
  @JsonKey(name: 'bid_count')
  final int bidCount;
  @override
  @JsonKey(name: 'start_time')
  final String? startTime;
  @override
  @JsonKey(name: 'end_time')
  final String? endTime;
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
  @JsonKey(name: 'extension_count')
  final int extensionCount;
  @override
  @JsonKey(name: 'max_extensions')
  final int? maxExtensions;
  @override
  final InspectionModel? inspection;
  @override
  @JsonKey(name: 'appeal_window')
  final AppealWindowModel? appealWindow;
  @override
  final LeaseModel? lease;
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
  @JsonKey(name: 'requires_newspaper_announcement')
  final bool requiresNewspaperAnnouncement;
  @override
  @JsonKey(name: 'condition_book')
  final ConditionBookModel? conditionBook;
  @override
  @JsonKey(name: 'award_document')
  final ConditionBookModel? awardDocument;

  @override
  String toString() {
    return 'AuctionModel(id: $id, title: $title, description: $description, status: $status, auctionType: $auctionType, assetClass: $assetClass, condition: $condition, unitCount: $unitCount, conditionTerms: $conditionTerms, awardTerms: $awardTerms, specifications: $specifications, coverPhotoUrl: $coverPhotoUrl, photos: $photos, videoUrl: $videoUrl, category: $category, entity: $entity, wilaya: $wilaya, commune: $commune, assetLocation: $assetLocation, latitude: $latitude, longitude: $longitude, mayorName: $mayorName, openingPrice: $openingPrice, currentPrice: $currentPrice, depositAmount: $depositAmount, depositPercent: $depositPercent, bookPrice: $bookPrice, hasBookAccess: $hasBookAccess, bidCount: $bidCount, startTime: $startTime, endTime: $endTime, secondsRemaining: $secondsRemaining, isLive: $isLive, isBiddable: $isBiddable, hasEnded: $hasEnded, extensionCount: $extensionCount, maxExtensions: $maxExtensions, inspection: $inspection, appealWindow: $appealWindow, lease: $lease, winnerAlias: $winnerAlias, finalPrice: $finalPrice, requiresCommerceRegister: $requiresCommerceRegister, requiresNewspaperAnnouncement: $requiresNewspaperAnnouncement, conditionBook: $conditionBook, awardDocument: $awardDocument)';
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
            (identical(other.assetClass, assetClass) ||
                other.assetClass == assetClass) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.unitCount, unitCount) ||
                other.unitCount == unitCount) &&
            (identical(other.conditionTerms, conditionTerms) ||
                other.conditionTerms == conditionTerms) &&
            (identical(other.awardTerms, awardTerms) ||
                other.awardTerms == awardTerms) &&
            const DeepCollectionEquality().equals(
              other._specifications,
              _specifications,
            ) &&
            (identical(other.coverPhotoUrl, coverPhotoUrl) ||
                other.coverPhotoUrl == coverPhotoUrl) &&
            const DeepCollectionEquality().equals(other._photos, _photos) &&
            (identical(other.videoUrl, videoUrl) ||
                other.videoUrl == videoUrl) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.entity, entity) || other.entity == entity) &&
            (identical(other.wilaya, wilaya) || other.wilaya == wilaya) &&
            (identical(other.commune, commune) || other.commune == commune) &&
            (identical(other.assetLocation, assetLocation) ||
                other.assetLocation == assetLocation) &&
            const DeepCollectionEquality().equals(other.latitude, latitude) &&
            const DeepCollectionEquality().equals(other.longitude, longitude) &&
            (identical(other.mayorName, mayorName) ||
                other.mayorName == mayorName) &&
            (identical(other.openingPrice, openingPrice) ||
                other.openingPrice == openingPrice) &&
            (identical(other.currentPrice, currentPrice) ||
                other.currentPrice == currentPrice) &&
            (identical(other.depositAmount, depositAmount) ||
                other.depositAmount == depositAmount) &&
            const DeepCollectionEquality().equals(
              other.depositPercent,
              depositPercent,
            ) &&
            (identical(other.bookPrice, bookPrice) ||
                other.bookPrice == bookPrice) &&
            (identical(other.hasBookAccess, hasBookAccess) ||
                other.hasBookAccess == hasBookAccess) &&
            (identical(other.bidCount, bidCount) ||
                other.bidCount == bidCount) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.secondsRemaining, secondsRemaining) ||
                other.secondsRemaining == secondsRemaining) &&
            (identical(other.isLive, isLive) || other.isLive == isLive) &&
            (identical(other.isBiddable, isBiddable) ||
                other.isBiddable == isBiddable) &&
            (identical(other.hasEnded, hasEnded) ||
                other.hasEnded == hasEnded) &&
            (identical(other.extensionCount, extensionCount) ||
                other.extensionCount == extensionCount) &&
            (identical(other.maxExtensions, maxExtensions) ||
                other.maxExtensions == maxExtensions) &&
            (identical(other.inspection, inspection) ||
                other.inspection == inspection) &&
            (identical(other.appealWindow, appealWindow) ||
                other.appealWindow == appealWindow) &&
            (identical(other.lease, lease) || other.lease == lease) &&
            (identical(other.winnerAlias, winnerAlias) ||
                other.winnerAlias == winnerAlias) &&
            (identical(other.finalPrice, finalPrice) ||
                other.finalPrice == finalPrice) &&
            (identical(
                  other.requiresCommerceRegister,
                  requiresCommerceRegister,
                ) ||
                other.requiresCommerceRegister == requiresCommerceRegister) &&
            (identical(
                  other.requiresNewspaperAnnouncement,
                  requiresNewspaperAnnouncement,
                ) ||
                other.requiresNewspaperAnnouncement ==
                    requiresNewspaperAnnouncement) &&
            (identical(other.conditionBook, conditionBook) ||
                other.conditionBook == conditionBook) &&
            (identical(other.awardDocument, awardDocument) ||
                other.awardDocument == awardDocument));
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
    assetClass,
    condition,
    unitCount,
    conditionTerms,
    awardTerms,
    const DeepCollectionEquality().hash(_specifications),
    coverPhotoUrl,
    const DeepCollectionEquality().hash(_photos),
    videoUrl,
    category,
    entity,
    wilaya,
    commune,
    assetLocation,
    const DeepCollectionEquality().hash(latitude),
    const DeepCollectionEquality().hash(longitude),
    mayorName,
    openingPrice,
    currentPrice,
    depositAmount,
    const DeepCollectionEquality().hash(depositPercent),
    bookPrice,
    hasBookAccess,
    bidCount,
    startTime,
    endTime,
    secondsRemaining,
    isLive,
    isBiddable,
    hasEnded,
    extensionCount,
    maxExtensions,
    inspection,
    appealWindow,
    lease,
    winnerAlias,
    finalPrice,
    requiresCommerceRegister,
    requiresNewspaperAnnouncement,
    conditionBook,
    awardDocument,
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
    @JsonKey(name: 'asset_class') final String? assetClass,
    final String? condition,
    @JsonKey(name: 'unit_count') final int? unitCount,
    @JsonKey(name: 'condition_terms') final String? conditionTerms,
    @JsonKey(name: 'award_terms') final String? awardTerms,
    final List<AuctionSpecModel> specifications,
    @JsonKey(name: 'cover_photo_url') final String? coverPhotoUrl,
    final List<String> photos,
    @JsonKey(name: 'video_url') final String? videoUrl,
    final NamedRefModel? category,
    final NamedRefModel? entity,
    final WilayaRefModel? wilaya,
    final NamedRefModel? commune,
    @JsonKey(name: 'asset_location') final String? assetLocation,
    final dynamic latitude,
    final dynamic longitude,
    @JsonKey(name: 'mayor_name') final String? mayorName,
    @JsonKey(name: 'opening_price') final MoneyModel? openingPrice,
    @JsonKey(name: 'current_price') final MoneyModel? currentPrice,
    @JsonKey(name: 'deposit_amount') final MoneyModel? depositAmount,
    @JsonKey(name: 'deposit_percent') final dynamic depositPercent,
    @JsonKey(name: 'book_price') final MoneyModel? bookPrice,
    @JsonKey(name: 'has_book_access') final bool hasBookAccess,
    @JsonKey(name: 'bid_count') final int bidCount,
    @JsonKey(name: 'start_time') final String? startTime,
    @JsonKey(name: 'end_time') final String? endTime,
    @JsonKey(name: 'seconds_remaining') final int secondsRemaining,
    @JsonKey(name: 'is_live') final bool isLive,
    @JsonKey(name: 'is_biddable') final bool isBiddable,
    @JsonKey(name: 'has_ended') final bool hasEnded,
    @JsonKey(name: 'extension_count') final int extensionCount,
    @JsonKey(name: 'max_extensions') final int? maxExtensions,
    final InspectionModel? inspection,
    @JsonKey(name: 'appeal_window') final AppealWindowModel? appealWindow,
    final LeaseModel? lease,
    @JsonKey(name: 'winner_alias') final String? winnerAlias,
    @JsonKey(name: 'final_price') final MoneyModel? finalPrice,
    @JsonKey(name: 'requires_commerce_register')
    final bool requiresCommerceRegister,
    @JsonKey(name: 'requires_newspaper_announcement')
    final bool requiresNewspaperAnnouncement,
    @JsonKey(name: 'condition_book') final ConditionBookModel? conditionBook,
    @JsonKey(name: 'award_document') final ConditionBookModel? awardDocument,
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
  @JsonKey(name: 'asset_class')
  String? get assetClass;
  @override
  String? get condition;
  @override
  @JsonKey(name: 'unit_count')
  int? get unitCount;
  @override
  @JsonKey(name: 'condition_terms')
  String? get conditionTerms;
  @override
  @JsonKey(name: 'award_terms')
  String? get awardTerms;
  @override
  List<AuctionSpecModel> get specifications;
  @override
  @JsonKey(name: 'cover_photo_url')
  String? get coverPhotoUrl;
  @override
  List<String> get photos;
  @override
  @JsonKey(name: 'video_url')
  String? get videoUrl;
  @override
  NamedRefModel? get category;
  @override
  NamedRefModel? get entity;
  @override
  WilayaRefModel? get wilaya;
  @override
  NamedRefModel? get commune;
  @override
  @JsonKey(name: 'asset_location')
  String? get assetLocation;
  @override
  dynamic get latitude;
  @override
  dynamic get longitude;
  @override
  @JsonKey(name: 'mayor_name')
  String? get mayorName;
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
  @JsonKey(name: 'deposit_percent')
  dynamic get depositPercent;
  @override
  @JsonKey(name: 'book_price')
  MoneyModel? get bookPrice;
  @override
  @JsonKey(name: 'has_book_access')
  bool get hasBookAccess;
  @override
  @JsonKey(name: 'bid_count')
  int get bidCount;
  @override
  @JsonKey(name: 'start_time')
  String? get startTime;
  @override
  @JsonKey(name: 'end_time')
  String? get endTime;
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
  @JsonKey(name: 'extension_count')
  int get extensionCount;
  @override
  @JsonKey(name: 'max_extensions')
  int? get maxExtensions;
  @override
  InspectionModel? get inspection;
  @override
  @JsonKey(name: 'appeal_window')
  AppealWindowModel? get appealWindow;
  @override
  LeaseModel? get lease;
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
  @JsonKey(name: 'requires_newspaper_announcement')
  bool get requiresNewspaperAnnouncement;
  @override
  @JsonKey(name: 'condition_book')
  ConditionBookModel? get conditionBook;
  @override
  @JsonKey(name: 'award_document')
  ConditionBookModel? get awardDocument;

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
class _$ConditionBookModelImpl extends _ConditionBookModel {
  const _$ConditionBookModelImpl({
    this.id,
    this.title,
    @JsonKey(name: 'download_url') this.downloadUrl,
  }) : super._();

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

abstract class _ConditionBookModel extends ConditionBookModel {
  const factory _ConditionBookModel({
    final String? id,
    final String? title,
    @JsonKey(name: 'download_url') final String? downloadUrl,
  }) = _$ConditionBookModelImpl;
  const _ConditionBookModel._() : super._();

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
