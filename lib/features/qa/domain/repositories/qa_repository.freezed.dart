// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qa_repository.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AskQuestionParams {
  String get auctionId => throw _privateConstructorUsedError;
  String get question => throw _privateConstructorUsedError;

  /// Create a copy of AskQuestionParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AskQuestionParamsCopyWith<AskQuestionParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AskQuestionParamsCopyWith<$Res> {
  factory $AskQuestionParamsCopyWith(
    AskQuestionParams value,
    $Res Function(AskQuestionParams) then,
  ) = _$AskQuestionParamsCopyWithImpl<$Res, AskQuestionParams>;
  @useResult
  $Res call({String auctionId, String question});
}

/// @nodoc
class _$AskQuestionParamsCopyWithImpl<$Res, $Val extends AskQuestionParams>
    implements $AskQuestionParamsCopyWith<$Res> {
  _$AskQuestionParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AskQuestionParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? auctionId = null, Object? question = null}) {
    return _then(
      _value.copyWith(
            auctionId: null == auctionId
                ? _value.auctionId
                : auctionId // ignore: cast_nullable_to_non_nullable
                      as String,
            question: null == question
                ? _value.question
                : question // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AskQuestionParamsImplCopyWith<$Res>
    implements $AskQuestionParamsCopyWith<$Res> {
  factory _$$AskQuestionParamsImplCopyWith(
    _$AskQuestionParamsImpl value,
    $Res Function(_$AskQuestionParamsImpl) then,
  ) = __$$AskQuestionParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String auctionId, String question});
}

/// @nodoc
class __$$AskQuestionParamsImplCopyWithImpl<$Res>
    extends _$AskQuestionParamsCopyWithImpl<$Res, _$AskQuestionParamsImpl>
    implements _$$AskQuestionParamsImplCopyWith<$Res> {
  __$$AskQuestionParamsImplCopyWithImpl(
    _$AskQuestionParamsImpl _value,
    $Res Function(_$AskQuestionParamsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AskQuestionParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? auctionId = null, Object? question = null}) {
    return _then(
      _$AskQuestionParamsImpl(
        auctionId: null == auctionId
            ? _value.auctionId
            : auctionId // ignore: cast_nullable_to_non_nullable
                  as String,
        question: null == question
            ? _value.question
            : question // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$AskQuestionParamsImpl implements _AskQuestionParams {
  const _$AskQuestionParamsImpl({
    required this.auctionId,
    required this.question,
  });

  @override
  final String auctionId;
  @override
  final String question;

  @override
  String toString() {
    return 'AskQuestionParams(auctionId: $auctionId, question: $question)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AskQuestionParamsImpl &&
            (identical(other.auctionId, auctionId) ||
                other.auctionId == auctionId) &&
            (identical(other.question, question) ||
                other.question == question));
  }

  @override
  int get hashCode => Object.hash(runtimeType, auctionId, question);

  /// Create a copy of AskQuestionParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AskQuestionParamsImplCopyWith<_$AskQuestionParamsImpl> get copyWith =>
      __$$AskQuestionParamsImplCopyWithImpl<_$AskQuestionParamsImpl>(
        this,
        _$identity,
      );
}

abstract class _AskQuestionParams implements AskQuestionParams {
  const factory _AskQuestionParams({
    required final String auctionId,
    required final String question,
  }) = _$AskQuestionParamsImpl;

  @override
  String get auctionId;
  @override
  String get question;

  /// Create a copy of AskQuestionParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AskQuestionParamsImplCopyWith<_$AskQuestionParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
