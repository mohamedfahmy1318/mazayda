// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'money_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

MoneyModel _$MoneyModelFromJson(Map<String, dynamic> json) {
  return _MoneyModel.fromJson(json);
}

/// @nodoc
mixin _$MoneyModel {
  int get amount => throw _privateConstructorUsedError;
  String get formatted => throw _privateConstructorUsedError;

  /// Serializes this MoneyModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MoneyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MoneyModelCopyWith<MoneyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoneyModelCopyWith<$Res> {
  factory $MoneyModelCopyWith(
    MoneyModel value,
    $Res Function(MoneyModel) then,
  ) = _$MoneyModelCopyWithImpl<$Res, MoneyModel>;
  @useResult
  $Res call({int amount, String formatted});
}

/// @nodoc
class _$MoneyModelCopyWithImpl<$Res, $Val extends MoneyModel>
    implements $MoneyModelCopyWith<$Res> {
  _$MoneyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MoneyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? amount = null, Object? formatted = null}) {
    return _then(
      _value.copyWith(
            amount: null == amount
                ? _value.amount
                : amount // ignore: cast_nullable_to_non_nullable
                      as int,
            formatted: null == formatted
                ? _value.formatted
                : formatted // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MoneyModelImplCopyWith<$Res>
    implements $MoneyModelCopyWith<$Res> {
  factory _$$MoneyModelImplCopyWith(
    _$MoneyModelImpl value,
    $Res Function(_$MoneyModelImpl) then,
  ) = __$$MoneyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int amount, String formatted});
}

/// @nodoc
class __$$MoneyModelImplCopyWithImpl<$Res>
    extends _$MoneyModelCopyWithImpl<$Res, _$MoneyModelImpl>
    implements _$$MoneyModelImplCopyWith<$Res> {
  __$$MoneyModelImplCopyWithImpl(
    _$MoneyModelImpl _value,
    $Res Function(_$MoneyModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MoneyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? amount = null, Object? formatted = null}) {
    return _then(
      _$MoneyModelImpl(
        amount: null == amount
            ? _value.amount
            : amount // ignore: cast_nullable_to_non_nullable
                  as int,
        formatted: null == formatted
            ? _value.formatted
            : formatted // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MoneyModelImpl extends _MoneyModel {
  const _$MoneyModelImpl({this.amount = 0, this.formatted = ''}) : super._();

  factory _$MoneyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MoneyModelImplFromJson(json);

  @override
  @JsonKey()
  final int amount;
  @override
  @JsonKey()
  final String formatted;

  @override
  String toString() {
    return 'MoneyModel(amount: $amount, formatted: $formatted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoneyModelImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.formatted, formatted) ||
                other.formatted == formatted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, amount, formatted);

  /// Create a copy of MoneyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MoneyModelImplCopyWith<_$MoneyModelImpl> get copyWith =>
      __$$MoneyModelImplCopyWithImpl<_$MoneyModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MoneyModelImplToJson(this);
  }
}

abstract class _MoneyModel extends MoneyModel {
  const factory _MoneyModel({final int amount, final String formatted}) =
      _$MoneyModelImpl;
  const _MoneyModel._() : super._();

  factory _MoneyModel.fromJson(Map<String, dynamic> json) =
      _$MoneyModelImpl.fromJson;

  @override
  int get amount;
  @override
  String get formatted;

  /// Create a copy of MoneyModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MoneyModelImplCopyWith<_$MoneyModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
