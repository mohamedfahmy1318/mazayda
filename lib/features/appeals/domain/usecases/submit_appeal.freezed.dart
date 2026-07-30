// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'submit_appeal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SubmitAppealParams {
  String get auctionId =>
      throw _privateConstructorUsedError; // مطلوب — الطعن دايمًا على مزاد
  String get subject => throw _privateConstructorUsedError;
  String get reason => throw _privateConstructorUsedError;

  /// Create a copy of SubmitAppealParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubmitAppealParamsCopyWith<SubmitAppealParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmitAppealParamsCopyWith<$Res> {
  factory $SubmitAppealParamsCopyWith(
    SubmitAppealParams value,
    $Res Function(SubmitAppealParams) then,
  ) = _$SubmitAppealParamsCopyWithImpl<$Res, SubmitAppealParams>;
  @useResult
  $Res call({String auctionId, String subject, String reason});
}

/// @nodoc
class _$SubmitAppealParamsCopyWithImpl<$Res, $Val extends SubmitAppealParams>
    implements $SubmitAppealParamsCopyWith<$Res> {
  _$SubmitAppealParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubmitAppealParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? auctionId = null,
    Object? subject = null,
    Object? reason = null,
  }) {
    return _then(
      _value.copyWith(
            auctionId: null == auctionId
                ? _value.auctionId
                : auctionId // ignore: cast_nullable_to_non_nullable
                      as String,
            subject: null == subject
                ? _value.subject
                : subject // ignore: cast_nullable_to_non_nullable
                      as String,
            reason: null == reason
                ? _value.reason
                : reason // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SubmitAppealParamsImplCopyWith<$Res>
    implements $SubmitAppealParamsCopyWith<$Res> {
  factory _$$SubmitAppealParamsImplCopyWith(
    _$SubmitAppealParamsImpl value,
    $Res Function(_$SubmitAppealParamsImpl) then,
  ) = __$$SubmitAppealParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String auctionId, String subject, String reason});
}

/// @nodoc
class __$$SubmitAppealParamsImplCopyWithImpl<$Res>
    extends _$SubmitAppealParamsCopyWithImpl<$Res, _$SubmitAppealParamsImpl>
    implements _$$SubmitAppealParamsImplCopyWith<$Res> {
  __$$SubmitAppealParamsImplCopyWithImpl(
    _$SubmitAppealParamsImpl _value,
    $Res Function(_$SubmitAppealParamsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SubmitAppealParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? auctionId = null,
    Object? subject = null,
    Object? reason = null,
  }) {
    return _then(
      _$SubmitAppealParamsImpl(
        auctionId: null == auctionId
            ? _value.auctionId
            : auctionId // ignore: cast_nullable_to_non_nullable
                  as String,
        subject: null == subject
            ? _value.subject
            : subject // ignore: cast_nullable_to_non_nullable
                  as String,
        reason: null == reason
            ? _value.reason
            : reason // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$SubmitAppealParamsImpl implements _SubmitAppealParams {
  const _$SubmitAppealParamsImpl({
    required this.auctionId,
    required this.subject,
    required this.reason,
  });

  @override
  final String auctionId;
  // مطلوب — الطعن دايمًا على مزاد
  @override
  final String subject;
  @override
  final String reason;

  @override
  String toString() {
    return 'SubmitAppealParams(auctionId: $auctionId, subject: $subject, reason: $reason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitAppealParamsImpl &&
            (identical(other.auctionId, auctionId) ||
                other.auctionId == auctionId) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @override
  int get hashCode => Object.hash(runtimeType, auctionId, subject, reason);

  /// Create a copy of SubmitAppealParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitAppealParamsImplCopyWith<_$SubmitAppealParamsImpl> get copyWith =>
      __$$SubmitAppealParamsImplCopyWithImpl<_$SubmitAppealParamsImpl>(
        this,
        _$identity,
      );
}

abstract class _SubmitAppealParams implements SubmitAppealParams {
  const factory _SubmitAppealParams({
    required final String auctionId,
    required final String subject,
    required final String reason,
  }) = _$SubmitAppealParamsImpl;

  @override
  String get auctionId; // مطلوب — الطعن دايمًا على مزاد
  @override
  String get subject;
  @override
  String get reason;

  /// Create a copy of SubmitAppealParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmitAppealParamsImplCopyWith<_$SubmitAppealParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
