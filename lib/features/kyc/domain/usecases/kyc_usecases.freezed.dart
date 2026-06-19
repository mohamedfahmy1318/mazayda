// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kyc_usecases.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$UploadDocParams {
  KycDocType get type => throw _privateConstructorUsedError;
  String get filePath => throw _privateConstructorUsedError;

  /// Create a copy of UploadDocParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UploadDocParamsCopyWith<UploadDocParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadDocParamsCopyWith<$Res> {
  factory $UploadDocParamsCopyWith(
    UploadDocParams value,
    $Res Function(UploadDocParams) then,
  ) = _$UploadDocParamsCopyWithImpl<$Res, UploadDocParams>;
  @useResult
  $Res call({KycDocType type, String filePath});
}

/// @nodoc
class _$UploadDocParamsCopyWithImpl<$Res, $Val extends UploadDocParams>
    implements $UploadDocParamsCopyWith<$Res> {
  _$UploadDocParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UploadDocParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? type = null, Object? filePath = null}) {
    return _then(
      _value.copyWith(
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as KycDocType,
            filePath: null == filePath
                ? _value.filePath
                : filePath // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UploadDocParamsImplCopyWith<$Res>
    implements $UploadDocParamsCopyWith<$Res> {
  factory _$$UploadDocParamsImplCopyWith(
    _$UploadDocParamsImpl value,
    $Res Function(_$UploadDocParamsImpl) then,
  ) = __$$UploadDocParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({KycDocType type, String filePath});
}

/// @nodoc
class __$$UploadDocParamsImplCopyWithImpl<$Res>
    extends _$UploadDocParamsCopyWithImpl<$Res, _$UploadDocParamsImpl>
    implements _$$UploadDocParamsImplCopyWith<$Res> {
  __$$UploadDocParamsImplCopyWithImpl(
    _$UploadDocParamsImpl _value,
    $Res Function(_$UploadDocParamsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UploadDocParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? type = null, Object? filePath = null}) {
    return _then(
      _$UploadDocParamsImpl(
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as KycDocType,
        filePath: null == filePath
            ? _value.filePath
            : filePath // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$UploadDocParamsImpl implements _UploadDocParams {
  const _$UploadDocParamsImpl({required this.type, required this.filePath});

  @override
  final KycDocType type;
  @override
  final String filePath;

  @override
  String toString() {
    return 'UploadDocParams(type: $type, filePath: $filePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadDocParamsImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.filePath, filePath) ||
                other.filePath == filePath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, filePath);

  /// Create a copy of UploadDocParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadDocParamsImplCopyWith<_$UploadDocParamsImpl> get copyWith =>
      __$$UploadDocParamsImplCopyWithImpl<_$UploadDocParamsImpl>(
        this,
        _$identity,
      );
}

abstract class _UploadDocParams implements UploadDocParams {
  const factory _UploadDocParams({
    required final KycDocType type,
    required final String filePath,
  }) = _$UploadDocParamsImpl;

  @override
  KycDocType get type;
  @override
  String get filePath;

  /// Create a copy of UploadDocParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UploadDocParamsImplCopyWith<_$UploadDocParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
