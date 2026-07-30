// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'final_payment_preview_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

FeeLineModel _$FeeLineModelFromJson(Map<String, dynamic> json) {
  return _FeeLineModel.fromJson(json);
}

/// @nodoc
mixin _$FeeLineModel {
  String? get key => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  String? get formatted => throw _privateConstructorUsedError;

  /// Serializes this FeeLineModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FeeLineModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FeeLineModelCopyWith<FeeLineModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeeLineModelCopyWith<$Res> {
  factory $FeeLineModelCopyWith(
    FeeLineModel value,
    $Res Function(FeeLineModel) then,
  ) = _$FeeLineModelCopyWithImpl<$Res, FeeLineModel>;
  @useResult
  $Res call({String? key, String? label, int amount, String? formatted});
}

/// @nodoc
class _$FeeLineModelCopyWithImpl<$Res, $Val extends FeeLineModel>
    implements $FeeLineModelCopyWith<$Res> {
  _$FeeLineModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FeeLineModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? label = freezed,
    Object? amount = null,
    Object? formatted = freezed,
  }) {
    return _then(
      _value.copyWith(
            key: freezed == key
                ? _value.key
                : key // ignore: cast_nullable_to_non_nullable
                      as String?,
            label: freezed == label
                ? _value.label
                : label // ignore: cast_nullable_to_non_nullable
                      as String?,
            amount: null == amount
                ? _value.amount
                : amount // ignore: cast_nullable_to_non_nullable
                      as int,
            formatted: freezed == formatted
                ? _value.formatted
                : formatted // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FeeLineModelImplCopyWith<$Res>
    implements $FeeLineModelCopyWith<$Res> {
  factory _$$FeeLineModelImplCopyWith(
    _$FeeLineModelImpl value,
    $Res Function(_$FeeLineModelImpl) then,
  ) = __$$FeeLineModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? key, String? label, int amount, String? formatted});
}

/// @nodoc
class __$$FeeLineModelImplCopyWithImpl<$Res>
    extends _$FeeLineModelCopyWithImpl<$Res, _$FeeLineModelImpl>
    implements _$$FeeLineModelImplCopyWith<$Res> {
  __$$FeeLineModelImplCopyWithImpl(
    _$FeeLineModelImpl _value,
    $Res Function(_$FeeLineModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FeeLineModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? label = freezed,
    Object? amount = null,
    Object? formatted = freezed,
  }) {
    return _then(
      _$FeeLineModelImpl(
        key: freezed == key
            ? _value.key
            : key // ignore: cast_nullable_to_non_nullable
                  as String?,
        label: freezed == label
            ? _value.label
            : label // ignore: cast_nullable_to_non_nullable
                  as String?,
        amount: null == amount
            ? _value.amount
            : amount // ignore: cast_nullable_to_non_nullable
                  as int,
        formatted: freezed == formatted
            ? _value.formatted
            : formatted // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FeeLineModelImpl extends _FeeLineModel {
  const _$FeeLineModelImpl({
    this.key,
    this.label,
    this.amount = 0,
    this.formatted,
  }) : super._();

  factory _$FeeLineModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeeLineModelImplFromJson(json);

  @override
  final String? key;
  @override
  final String? label;
  @override
  @JsonKey()
  final int amount;
  @override
  final String? formatted;

  @override
  String toString() {
    return 'FeeLineModel(key: $key, label: $label, amount: $amount, formatted: $formatted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeeLineModelImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.formatted, formatted) ||
                other.formatted == formatted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, key, label, amount, formatted);

  /// Create a copy of FeeLineModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FeeLineModelImplCopyWith<_$FeeLineModelImpl> get copyWith =>
      __$$FeeLineModelImplCopyWithImpl<_$FeeLineModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeeLineModelImplToJson(this);
  }
}

abstract class _FeeLineModel extends FeeLineModel {
  const factory _FeeLineModel({
    final String? key,
    final String? label,
    final int amount,
    final String? formatted,
  }) = _$FeeLineModelImpl;
  const _FeeLineModel._() : super._();

  factory _FeeLineModel.fromJson(Map<String, dynamic> json) =
      _$FeeLineModelImpl.fromJson;

  @override
  String? get key;
  @override
  String? get label;
  @override
  int get amount;
  @override
  String? get formatted;

  /// Create a copy of FeeLineModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FeeLineModelImplCopyWith<_$FeeLineModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FinalPaymentPreviewModel _$FinalPaymentPreviewModelFromJson(
  Map<String, dynamic> json,
) {
  return _FinalPaymentPreviewModel.fromJson(json);
}

/// @nodoc
mixin _$FinalPaymentPreviewModel {
  @JsonKey(name: 'already_paid')
  bool get alreadyPaid => throw _privateConstructorUsedError;
  List<FeeLineModel> get lines => throw _privateConstructorUsedError;
  @JsonKey(name: 'confirmed_deposit')
  int get confirmedDeposit => throw _privateConstructorUsedError;
  @JsonKey(name: 'amount_due')
  int get amountDue => throw _privateConstructorUsedError;
  @JsonKey(name: 'amount_due_formatted')
  String? get amountDueFormatted => throw _privateConstructorUsedError;
  @JsonKey(name: 'customs_immediate_due')
  int? get customsImmediateDue => throw _privateConstructorUsedError;
  @JsonKey(name: 'due_at')
  String? get dueAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'deadline_days')
  int get deadlineDays => throw _privateConstructorUsedError;

  /// Serializes this FinalPaymentPreviewModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FinalPaymentPreviewModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FinalPaymentPreviewModelCopyWith<FinalPaymentPreviewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinalPaymentPreviewModelCopyWith<$Res> {
  factory $FinalPaymentPreviewModelCopyWith(
    FinalPaymentPreviewModel value,
    $Res Function(FinalPaymentPreviewModel) then,
  ) = _$FinalPaymentPreviewModelCopyWithImpl<$Res, FinalPaymentPreviewModel>;
  @useResult
  $Res call({
    @JsonKey(name: 'already_paid') bool alreadyPaid,
    List<FeeLineModel> lines,
    @JsonKey(name: 'confirmed_deposit') int confirmedDeposit,
    @JsonKey(name: 'amount_due') int amountDue,
    @JsonKey(name: 'amount_due_formatted') String? amountDueFormatted,
    @JsonKey(name: 'customs_immediate_due') int? customsImmediateDue,
    @JsonKey(name: 'due_at') String? dueAt,
    @JsonKey(name: 'deadline_days') int deadlineDays,
  });
}

/// @nodoc
class _$FinalPaymentPreviewModelCopyWithImpl<
  $Res,
  $Val extends FinalPaymentPreviewModel
>
    implements $FinalPaymentPreviewModelCopyWith<$Res> {
  _$FinalPaymentPreviewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FinalPaymentPreviewModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alreadyPaid = null,
    Object? lines = null,
    Object? confirmedDeposit = null,
    Object? amountDue = null,
    Object? amountDueFormatted = freezed,
    Object? customsImmediateDue = freezed,
    Object? dueAt = freezed,
    Object? deadlineDays = null,
  }) {
    return _then(
      _value.copyWith(
            alreadyPaid: null == alreadyPaid
                ? _value.alreadyPaid
                : alreadyPaid // ignore: cast_nullable_to_non_nullable
                      as bool,
            lines: null == lines
                ? _value.lines
                : lines // ignore: cast_nullable_to_non_nullable
                      as List<FeeLineModel>,
            confirmedDeposit: null == confirmedDeposit
                ? _value.confirmedDeposit
                : confirmedDeposit // ignore: cast_nullable_to_non_nullable
                      as int,
            amountDue: null == amountDue
                ? _value.amountDue
                : amountDue // ignore: cast_nullable_to_non_nullable
                      as int,
            amountDueFormatted: freezed == amountDueFormatted
                ? _value.amountDueFormatted
                : amountDueFormatted // ignore: cast_nullable_to_non_nullable
                      as String?,
            customsImmediateDue: freezed == customsImmediateDue
                ? _value.customsImmediateDue
                : customsImmediateDue // ignore: cast_nullable_to_non_nullable
                      as int?,
            dueAt: freezed == dueAt
                ? _value.dueAt
                : dueAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            deadlineDays: null == deadlineDays
                ? _value.deadlineDays
                : deadlineDays // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FinalPaymentPreviewModelImplCopyWith<$Res>
    implements $FinalPaymentPreviewModelCopyWith<$Res> {
  factory _$$FinalPaymentPreviewModelImplCopyWith(
    _$FinalPaymentPreviewModelImpl value,
    $Res Function(_$FinalPaymentPreviewModelImpl) then,
  ) = __$$FinalPaymentPreviewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'already_paid') bool alreadyPaid,
    List<FeeLineModel> lines,
    @JsonKey(name: 'confirmed_deposit') int confirmedDeposit,
    @JsonKey(name: 'amount_due') int amountDue,
    @JsonKey(name: 'amount_due_formatted') String? amountDueFormatted,
    @JsonKey(name: 'customs_immediate_due') int? customsImmediateDue,
    @JsonKey(name: 'due_at') String? dueAt,
    @JsonKey(name: 'deadline_days') int deadlineDays,
  });
}

/// @nodoc
class __$$FinalPaymentPreviewModelImplCopyWithImpl<$Res>
    extends
        _$FinalPaymentPreviewModelCopyWithImpl<
          $Res,
          _$FinalPaymentPreviewModelImpl
        >
    implements _$$FinalPaymentPreviewModelImplCopyWith<$Res> {
  __$$FinalPaymentPreviewModelImplCopyWithImpl(
    _$FinalPaymentPreviewModelImpl _value,
    $Res Function(_$FinalPaymentPreviewModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FinalPaymentPreviewModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? alreadyPaid = null,
    Object? lines = null,
    Object? confirmedDeposit = null,
    Object? amountDue = null,
    Object? amountDueFormatted = freezed,
    Object? customsImmediateDue = freezed,
    Object? dueAt = freezed,
    Object? deadlineDays = null,
  }) {
    return _then(
      _$FinalPaymentPreviewModelImpl(
        alreadyPaid: null == alreadyPaid
            ? _value.alreadyPaid
            : alreadyPaid // ignore: cast_nullable_to_non_nullable
                  as bool,
        lines: null == lines
            ? _value._lines
            : lines // ignore: cast_nullable_to_non_nullable
                  as List<FeeLineModel>,
        confirmedDeposit: null == confirmedDeposit
            ? _value.confirmedDeposit
            : confirmedDeposit // ignore: cast_nullable_to_non_nullable
                  as int,
        amountDue: null == amountDue
            ? _value.amountDue
            : amountDue // ignore: cast_nullable_to_non_nullable
                  as int,
        amountDueFormatted: freezed == amountDueFormatted
            ? _value.amountDueFormatted
            : amountDueFormatted // ignore: cast_nullable_to_non_nullable
                  as String?,
        customsImmediateDue: freezed == customsImmediateDue
            ? _value.customsImmediateDue
            : customsImmediateDue // ignore: cast_nullable_to_non_nullable
                  as int?,
        dueAt: freezed == dueAt
            ? _value.dueAt
            : dueAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        deadlineDays: null == deadlineDays
            ? _value.deadlineDays
            : deadlineDays // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FinalPaymentPreviewModelImpl extends _FinalPaymentPreviewModel {
  const _$FinalPaymentPreviewModelImpl({
    @JsonKey(name: 'already_paid') this.alreadyPaid = false,
    final List<FeeLineModel> lines = const <FeeLineModel>[],
    @JsonKey(name: 'confirmed_deposit') this.confirmedDeposit = 0,
    @JsonKey(name: 'amount_due') this.amountDue = 0,
    @JsonKey(name: 'amount_due_formatted') this.amountDueFormatted,
    @JsonKey(name: 'customs_immediate_due') this.customsImmediateDue,
    @JsonKey(name: 'due_at') this.dueAt,
    @JsonKey(name: 'deadline_days') this.deadlineDays = 0,
  }) : _lines = lines,
       super._();

  factory _$FinalPaymentPreviewModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FinalPaymentPreviewModelImplFromJson(json);

  @override
  @JsonKey(name: 'already_paid')
  final bool alreadyPaid;
  final List<FeeLineModel> _lines;
  @override
  @JsonKey()
  List<FeeLineModel> get lines {
    if (_lines is EqualUnmodifiableListView) return _lines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lines);
  }

  @override
  @JsonKey(name: 'confirmed_deposit')
  final int confirmedDeposit;
  @override
  @JsonKey(name: 'amount_due')
  final int amountDue;
  @override
  @JsonKey(name: 'amount_due_formatted')
  final String? amountDueFormatted;
  @override
  @JsonKey(name: 'customs_immediate_due')
  final int? customsImmediateDue;
  @override
  @JsonKey(name: 'due_at')
  final String? dueAt;
  @override
  @JsonKey(name: 'deadline_days')
  final int deadlineDays;

  @override
  String toString() {
    return 'FinalPaymentPreviewModel(alreadyPaid: $alreadyPaid, lines: $lines, confirmedDeposit: $confirmedDeposit, amountDue: $amountDue, amountDueFormatted: $amountDueFormatted, customsImmediateDue: $customsImmediateDue, dueAt: $dueAt, deadlineDays: $deadlineDays)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FinalPaymentPreviewModelImpl &&
            (identical(other.alreadyPaid, alreadyPaid) ||
                other.alreadyPaid == alreadyPaid) &&
            const DeepCollectionEquality().equals(other._lines, _lines) &&
            (identical(other.confirmedDeposit, confirmedDeposit) ||
                other.confirmedDeposit == confirmedDeposit) &&
            (identical(other.amountDue, amountDue) ||
                other.amountDue == amountDue) &&
            (identical(other.amountDueFormatted, amountDueFormatted) ||
                other.amountDueFormatted == amountDueFormatted) &&
            (identical(other.customsImmediateDue, customsImmediateDue) ||
                other.customsImmediateDue == customsImmediateDue) &&
            (identical(other.dueAt, dueAt) || other.dueAt == dueAt) &&
            (identical(other.deadlineDays, deadlineDays) ||
                other.deadlineDays == deadlineDays));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    alreadyPaid,
    const DeepCollectionEquality().hash(_lines),
    confirmedDeposit,
    amountDue,
    amountDueFormatted,
    customsImmediateDue,
    dueAt,
    deadlineDays,
  );

  /// Create a copy of FinalPaymentPreviewModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FinalPaymentPreviewModelImplCopyWith<_$FinalPaymentPreviewModelImpl>
  get copyWith =>
      __$$FinalPaymentPreviewModelImplCopyWithImpl<
        _$FinalPaymentPreviewModelImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FinalPaymentPreviewModelImplToJson(this);
  }
}

abstract class _FinalPaymentPreviewModel extends FinalPaymentPreviewModel {
  const factory _FinalPaymentPreviewModel({
    @JsonKey(name: 'already_paid') final bool alreadyPaid,
    final List<FeeLineModel> lines,
    @JsonKey(name: 'confirmed_deposit') final int confirmedDeposit,
    @JsonKey(name: 'amount_due') final int amountDue,
    @JsonKey(name: 'amount_due_formatted') final String? amountDueFormatted,
    @JsonKey(name: 'customs_immediate_due') final int? customsImmediateDue,
    @JsonKey(name: 'due_at') final String? dueAt,
    @JsonKey(name: 'deadline_days') final int deadlineDays,
  }) = _$FinalPaymentPreviewModelImpl;
  const _FinalPaymentPreviewModel._() : super._();

  factory _FinalPaymentPreviewModel.fromJson(Map<String, dynamic> json) =
      _$FinalPaymentPreviewModelImpl.fromJson;

  @override
  @JsonKey(name: 'already_paid')
  bool get alreadyPaid;
  @override
  List<FeeLineModel> get lines;
  @override
  @JsonKey(name: 'confirmed_deposit')
  int get confirmedDeposit;
  @override
  @JsonKey(name: 'amount_due')
  int get amountDue;
  @override
  @JsonKey(name: 'amount_due_formatted')
  String? get amountDueFormatted;
  @override
  @JsonKey(name: 'customs_immediate_due')
  int? get customsImmediateDue;
  @override
  @JsonKey(name: 'due_at')
  String? get dueAt;
  @override
  @JsonKey(name: 'deadline_days')
  int get deadlineDays;

  /// Create a copy of FinalPaymentPreviewModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FinalPaymentPreviewModelImplCopyWith<_$FinalPaymentPreviewModelImpl>
  get copyWith => throw _privateConstructorUsedError;
}
