// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kyc_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$KycState {
  KycViewStatus get status => throw _privateConstructorUsedError;
  KycStatus? get kyc => throw _privateConstructorUsedError;
  List<Wilaya> get wilayas => throw _privateConstructorUsedError;
  List<Commune> get communes =>
      throw _privateConstructorUsedError; // أنواع المستندات اللي بترفع حاليًا (loading)
  Set<KycDocType> get uploading =>
      throw _privateConstructorUsedError; // أنواع المستندات اللي اترفعت بنجاح
  Set<KycDocType> get uploaded => throw _privateConstructorUsedError;
  bool get submitting => throw _privateConstructorUsedError;
  bool get submitted => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  Map<String, List<String>>? get fieldErrors =>
      throw _privateConstructorUsedError;

  /// Create a copy of KycState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $KycStateCopyWith<KycState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KycStateCopyWith<$Res> {
  factory $KycStateCopyWith(KycState value, $Res Function(KycState) then) =
      _$KycStateCopyWithImpl<$Res, KycState>;
  @useResult
  $Res call({
    KycViewStatus status,
    KycStatus? kyc,
    List<Wilaya> wilayas,
    List<Commune> communes,
    Set<KycDocType> uploading,
    Set<KycDocType> uploaded,
    bool submitting,
    bool submitted,
    String? error,
    Map<String, List<String>>? fieldErrors,
  });
}

/// @nodoc
class _$KycStateCopyWithImpl<$Res, $Val extends KycState>
    implements $KycStateCopyWith<$Res> {
  _$KycStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of KycState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? kyc = freezed,
    Object? wilayas = null,
    Object? communes = null,
    Object? uploading = null,
    Object? uploaded = null,
    Object? submitting = null,
    Object? submitted = null,
    Object? error = freezed,
    Object? fieldErrors = freezed,
  }) {
    return _then(
      _value.copyWith(
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as KycViewStatus,
            kyc: freezed == kyc
                ? _value.kyc
                : kyc // ignore: cast_nullable_to_non_nullable
                      as KycStatus?,
            wilayas: null == wilayas
                ? _value.wilayas
                : wilayas // ignore: cast_nullable_to_non_nullable
                      as List<Wilaya>,
            communes: null == communes
                ? _value.communes
                : communes // ignore: cast_nullable_to_non_nullable
                      as List<Commune>,
            uploading: null == uploading
                ? _value.uploading
                : uploading // ignore: cast_nullable_to_non_nullable
                      as Set<KycDocType>,
            uploaded: null == uploaded
                ? _value.uploaded
                : uploaded // ignore: cast_nullable_to_non_nullable
                      as Set<KycDocType>,
            submitting: null == submitting
                ? _value.submitting
                : submitting // ignore: cast_nullable_to_non_nullable
                      as bool,
            submitted: null == submitted
                ? _value.submitted
                : submitted // ignore: cast_nullable_to_non_nullable
                      as bool,
            error: freezed == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                      as String?,
            fieldErrors: freezed == fieldErrors
                ? _value.fieldErrors
                : fieldErrors // ignore: cast_nullable_to_non_nullable
                      as Map<String, List<String>>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$KycStateImplCopyWith<$Res>
    implements $KycStateCopyWith<$Res> {
  factory _$$KycStateImplCopyWith(
    _$KycStateImpl value,
    $Res Function(_$KycStateImpl) then,
  ) = __$$KycStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    KycViewStatus status,
    KycStatus? kyc,
    List<Wilaya> wilayas,
    List<Commune> communes,
    Set<KycDocType> uploading,
    Set<KycDocType> uploaded,
    bool submitting,
    bool submitted,
    String? error,
    Map<String, List<String>>? fieldErrors,
  });
}

/// @nodoc
class __$$KycStateImplCopyWithImpl<$Res>
    extends _$KycStateCopyWithImpl<$Res, _$KycStateImpl>
    implements _$$KycStateImplCopyWith<$Res> {
  __$$KycStateImplCopyWithImpl(
    _$KycStateImpl _value,
    $Res Function(_$KycStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of KycState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? kyc = freezed,
    Object? wilayas = null,
    Object? communes = null,
    Object? uploading = null,
    Object? uploaded = null,
    Object? submitting = null,
    Object? submitted = null,
    Object? error = freezed,
    Object? fieldErrors = freezed,
  }) {
    return _then(
      _$KycStateImpl(
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as KycViewStatus,
        kyc: freezed == kyc
            ? _value.kyc
            : kyc // ignore: cast_nullable_to_non_nullable
                  as KycStatus?,
        wilayas: null == wilayas
            ? _value._wilayas
            : wilayas // ignore: cast_nullable_to_non_nullable
                  as List<Wilaya>,
        communes: null == communes
            ? _value._communes
            : communes // ignore: cast_nullable_to_non_nullable
                  as List<Commune>,
        uploading: null == uploading
            ? _value._uploading
            : uploading // ignore: cast_nullable_to_non_nullable
                  as Set<KycDocType>,
        uploaded: null == uploaded
            ? _value._uploaded
            : uploaded // ignore: cast_nullable_to_non_nullable
                  as Set<KycDocType>,
        submitting: null == submitting
            ? _value.submitting
            : submitting // ignore: cast_nullable_to_non_nullable
                  as bool,
        submitted: null == submitted
            ? _value.submitted
            : submitted // ignore: cast_nullable_to_non_nullable
                  as bool,
        error: freezed == error
            ? _value.error
            : error // ignore: cast_nullable_to_non_nullable
                  as String?,
        fieldErrors: freezed == fieldErrors
            ? _value._fieldErrors
            : fieldErrors // ignore: cast_nullable_to_non_nullable
                  as Map<String, List<String>>?,
      ),
    );
  }
}

/// @nodoc

class _$KycStateImpl implements _KycState {
  const _$KycStateImpl({
    this.status = KycViewStatus.initial,
    this.kyc,
    final List<Wilaya> wilayas = const <Wilaya>[],
    final List<Commune> communes = const <Commune>[],
    final Set<KycDocType> uploading = const <KycDocType>{},
    final Set<KycDocType> uploaded = const <KycDocType>{},
    this.submitting = false,
    this.submitted = false,
    this.error,
    final Map<String, List<String>>? fieldErrors,
  }) : _wilayas = wilayas,
       _communes = communes,
       _uploading = uploading,
       _uploaded = uploaded,
       _fieldErrors = fieldErrors;

  @override
  @JsonKey()
  final KycViewStatus status;
  @override
  final KycStatus? kyc;
  final List<Wilaya> _wilayas;
  @override
  @JsonKey()
  List<Wilaya> get wilayas {
    if (_wilayas is EqualUnmodifiableListView) return _wilayas;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_wilayas);
  }

  final List<Commune> _communes;
  @override
  @JsonKey()
  List<Commune> get communes {
    if (_communes is EqualUnmodifiableListView) return _communes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_communes);
  }

  // أنواع المستندات اللي بترفع حاليًا (loading)
  final Set<KycDocType> _uploading;
  // أنواع المستندات اللي بترفع حاليًا (loading)
  @override
  @JsonKey()
  Set<KycDocType> get uploading {
    if (_uploading is EqualUnmodifiableSetView) return _uploading;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_uploading);
  }

  // أنواع المستندات اللي اترفعت بنجاح
  final Set<KycDocType> _uploaded;
  // أنواع المستندات اللي اترفعت بنجاح
  @override
  @JsonKey()
  Set<KycDocType> get uploaded {
    if (_uploaded is EqualUnmodifiableSetView) return _uploaded;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_uploaded);
  }

  @override
  @JsonKey()
  final bool submitting;
  @override
  @JsonKey()
  final bool submitted;
  @override
  final String? error;
  final Map<String, List<String>>? _fieldErrors;
  @override
  Map<String, List<String>>? get fieldErrors {
    final value = _fieldErrors;
    if (value == null) return null;
    if (_fieldErrors is EqualUnmodifiableMapView) return _fieldErrors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'KycState(status: $status, kyc: $kyc, wilayas: $wilayas, communes: $communes, uploading: $uploading, uploaded: $uploaded, submitting: $submitting, submitted: $submitted, error: $error, fieldErrors: $fieldErrors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KycStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.kyc, kyc) || other.kyc == kyc) &&
            const DeepCollectionEquality().equals(other._wilayas, _wilayas) &&
            const DeepCollectionEquality().equals(other._communes, _communes) &&
            const DeepCollectionEquality().equals(
              other._uploading,
              _uploading,
            ) &&
            const DeepCollectionEquality().equals(other._uploaded, _uploaded) &&
            (identical(other.submitting, submitting) ||
                other.submitting == submitting) &&
            (identical(other.submitted, submitted) ||
                other.submitted == submitted) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality().equals(
              other._fieldErrors,
              _fieldErrors,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    status,
    kyc,
    const DeepCollectionEquality().hash(_wilayas),
    const DeepCollectionEquality().hash(_communes),
    const DeepCollectionEquality().hash(_uploading),
    const DeepCollectionEquality().hash(_uploaded),
    submitting,
    submitted,
    error,
    const DeepCollectionEquality().hash(_fieldErrors),
  );

  /// Create a copy of KycState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$KycStateImplCopyWith<_$KycStateImpl> get copyWith =>
      __$$KycStateImplCopyWithImpl<_$KycStateImpl>(this, _$identity);
}

abstract class _KycState implements KycState {
  const factory _KycState({
    final KycViewStatus status,
    final KycStatus? kyc,
    final List<Wilaya> wilayas,
    final List<Commune> communes,
    final Set<KycDocType> uploading,
    final Set<KycDocType> uploaded,
    final bool submitting,
    final bool submitted,
    final String? error,
    final Map<String, List<String>>? fieldErrors,
  }) = _$KycStateImpl;

  @override
  KycViewStatus get status;
  @override
  KycStatus? get kyc;
  @override
  List<Wilaya> get wilayas;
  @override
  List<Commune> get communes; // أنواع المستندات اللي بترفع حاليًا (loading)
  @override
  Set<KycDocType> get uploading; // أنواع المستندات اللي اترفعت بنجاح
  @override
  Set<KycDocType> get uploaded;
  @override
  bool get submitting;
  @override
  bool get submitted;
  @override
  String? get error;
  @override
  Map<String, List<String>>? get fieldErrors;

  /// Create a copy of KycState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$KycStateImplCopyWith<_$KycStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
