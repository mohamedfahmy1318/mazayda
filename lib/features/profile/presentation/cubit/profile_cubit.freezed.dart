// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Profile profile, bool saving) loaded,
    required TResult Function(String message) error,
    required TResult Function() loggedOut,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Profile profile, bool saving)? loaded,
    TResult? Function(String message)? error,
    TResult? Function()? loggedOut,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Profile profile, bool saving)? loaded,
    TResult Function(String message)? error,
    TResult Function()? loggedOut,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileLoading value) loading,
    required TResult Function(ProfileLoaded value) loaded,
    required TResult Function(ProfileError value) error,
    required TResult Function(ProfileLoggedOut value) loggedOut,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileLoading value)? loading,
    TResult? Function(ProfileLoaded value)? loaded,
    TResult? Function(ProfileError value)? error,
    TResult? Function(ProfileLoggedOut value)? loggedOut,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileLoading value)? loading,
    TResult Function(ProfileLoaded value)? loaded,
    TResult Function(ProfileError value)? error,
    TResult Function(ProfileLoggedOut value)? loggedOut,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
    ProfileState value,
    $Res Function(ProfileState) then,
  ) = _$ProfileStateCopyWithImpl<$Res, ProfileState>;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ProfileLoadingImplCopyWith<$Res> {
  factory _$$ProfileLoadingImplCopyWith(
    _$ProfileLoadingImpl value,
    $Res Function(_$ProfileLoadingImpl) then,
  ) = __$$ProfileLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileLoadingImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileLoadingImpl>
    implements _$$ProfileLoadingImplCopyWith<$Res> {
  __$$ProfileLoadingImplCopyWithImpl(
    _$ProfileLoadingImpl _value,
    $Res Function(_$ProfileLoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProfileLoadingImpl implements ProfileLoading {
  const _$ProfileLoadingImpl();

  @override
  String toString() {
    return 'ProfileState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProfileLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Profile profile, bool saving) loaded,
    required TResult Function(String message) error,
    required TResult Function() loggedOut,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Profile profile, bool saving)? loaded,
    TResult? Function(String message)? error,
    TResult? Function()? loggedOut,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Profile profile, bool saving)? loaded,
    TResult Function(String message)? error,
    TResult Function()? loggedOut,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileLoading value) loading,
    required TResult Function(ProfileLoaded value) loaded,
    required TResult Function(ProfileError value) error,
    required TResult Function(ProfileLoggedOut value) loggedOut,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileLoading value)? loading,
    TResult? Function(ProfileLoaded value)? loaded,
    TResult? Function(ProfileError value)? error,
    TResult? Function(ProfileLoggedOut value)? loggedOut,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileLoading value)? loading,
    TResult Function(ProfileLoaded value)? loaded,
    TResult Function(ProfileError value)? error,
    TResult Function(ProfileLoggedOut value)? loggedOut,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ProfileLoading implements ProfileState {
  const factory ProfileLoading() = _$ProfileLoadingImpl;
}

/// @nodoc
abstract class _$$ProfileLoadedImplCopyWith<$Res> {
  factory _$$ProfileLoadedImplCopyWith(
    _$ProfileLoadedImpl value,
    $Res Function(_$ProfileLoadedImpl) then,
  ) = __$$ProfileLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Profile profile, bool saving});
}

/// @nodoc
class __$$ProfileLoadedImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileLoadedImpl>
    implements _$$ProfileLoadedImplCopyWith<$Res> {
  __$$ProfileLoadedImplCopyWithImpl(
    _$ProfileLoadedImpl _value,
    $Res Function(_$ProfileLoadedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? profile = null, Object? saving = null}) {
    return _then(
      _$ProfileLoadedImpl(
        null == profile
            ? _value.profile
            : profile // ignore: cast_nullable_to_non_nullable
                  as Profile,
        saving: null == saving
            ? _value.saving
            : saving // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$ProfileLoadedImpl implements ProfileLoaded {
  const _$ProfileLoadedImpl(this.profile, {this.saving = false});

  @override
  final Profile profile;
  @override
  @JsonKey()
  final bool saving;

  @override
  String toString() {
    return 'ProfileState.loaded(profile: $profile, saving: $saving)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileLoadedImpl &&
            (identical(other.profile, profile) || other.profile == profile) &&
            (identical(other.saving, saving) || other.saving == saving));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profile, saving);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileLoadedImplCopyWith<_$ProfileLoadedImpl> get copyWith =>
      __$$ProfileLoadedImplCopyWithImpl<_$ProfileLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Profile profile, bool saving) loaded,
    required TResult Function(String message) error,
    required TResult Function() loggedOut,
  }) {
    return loaded(profile, saving);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Profile profile, bool saving)? loaded,
    TResult? Function(String message)? error,
    TResult? Function()? loggedOut,
  }) {
    return loaded?.call(profile, saving);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Profile profile, bool saving)? loaded,
    TResult Function(String message)? error,
    TResult Function()? loggedOut,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(profile, saving);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileLoading value) loading,
    required TResult Function(ProfileLoaded value) loaded,
    required TResult Function(ProfileError value) error,
    required TResult Function(ProfileLoggedOut value) loggedOut,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileLoading value)? loading,
    TResult? Function(ProfileLoaded value)? loaded,
    TResult? Function(ProfileError value)? error,
    TResult? Function(ProfileLoggedOut value)? loggedOut,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileLoading value)? loading,
    TResult Function(ProfileLoaded value)? loaded,
    TResult Function(ProfileError value)? error,
    TResult Function(ProfileLoggedOut value)? loggedOut,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ProfileLoaded implements ProfileState {
  const factory ProfileLoaded(final Profile profile, {final bool saving}) =
      _$ProfileLoadedImpl;

  Profile get profile;
  bool get saving;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileLoadedImplCopyWith<_$ProfileLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProfileErrorImplCopyWith<$Res> {
  factory _$$ProfileErrorImplCopyWith(
    _$ProfileErrorImpl value,
    $Res Function(_$ProfileErrorImpl) then,
  ) = __$$ProfileErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ProfileErrorImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileErrorImpl>
    implements _$$ProfileErrorImplCopyWith<$Res> {
  __$$ProfileErrorImplCopyWithImpl(
    _$ProfileErrorImpl _value,
    $Res Function(_$ProfileErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$ProfileErrorImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$ProfileErrorImpl implements ProfileError {
  const _$ProfileErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ProfileState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileErrorImplCopyWith<_$ProfileErrorImpl> get copyWith =>
      __$$ProfileErrorImplCopyWithImpl<_$ProfileErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Profile profile, bool saving) loaded,
    required TResult Function(String message) error,
    required TResult Function() loggedOut,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Profile profile, bool saving)? loaded,
    TResult? Function(String message)? error,
    TResult? Function()? loggedOut,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Profile profile, bool saving)? loaded,
    TResult Function(String message)? error,
    TResult Function()? loggedOut,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileLoading value) loading,
    required TResult Function(ProfileLoaded value) loaded,
    required TResult Function(ProfileError value) error,
    required TResult Function(ProfileLoggedOut value) loggedOut,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileLoading value)? loading,
    TResult? Function(ProfileLoaded value)? loaded,
    TResult? Function(ProfileError value)? error,
    TResult? Function(ProfileLoggedOut value)? loggedOut,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileLoading value)? loading,
    TResult Function(ProfileLoaded value)? loaded,
    TResult Function(ProfileError value)? error,
    TResult Function(ProfileLoggedOut value)? loggedOut,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ProfileError implements ProfileState {
  const factory ProfileError(final String message) = _$ProfileErrorImpl;

  String get message;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileErrorImplCopyWith<_$ProfileErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProfileLoggedOutImplCopyWith<$Res> {
  factory _$$ProfileLoggedOutImplCopyWith(
    _$ProfileLoggedOutImpl value,
    $Res Function(_$ProfileLoggedOutImpl) then,
  ) = __$$ProfileLoggedOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileLoggedOutImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileLoggedOutImpl>
    implements _$$ProfileLoggedOutImplCopyWith<$Res> {
  __$$ProfileLoggedOutImplCopyWithImpl(
    _$ProfileLoggedOutImpl _value,
    $Res Function(_$ProfileLoggedOutImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProfileLoggedOutImpl implements ProfileLoggedOut {
  const _$ProfileLoggedOutImpl();

  @override
  String toString() {
    return 'ProfileState.loggedOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProfileLoggedOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Profile profile, bool saving) loaded,
    required TResult Function(String message) error,
    required TResult Function() loggedOut,
  }) {
    return loggedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(Profile profile, bool saving)? loaded,
    TResult? Function(String message)? error,
    TResult? Function()? loggedOut,
  }) {
    return loggedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Profile profile, bool saving)? loaded,
    TResult Function(String message)? error,
    TResult Function()? loggedOut,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileLoading value) loading,
    required TResult Function(ProfileLoaded value) loaded,
    required TResult Function(ProfileError value) error,
    required TResult Function(ProfileLoggedOut value) loggedOut,
  }) {
    return loggedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileLoading value)? loading,
    TResult? Function(ProfileLoaded value)? loaded,
    TResult? Function(ProfileError value)? error,
    TResult? Function(ProfileLoggedOut value)? loggedOut,
  }) {
    return loggedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileLoading value)? loading,
    TResult Function(ProfileLoaded value)? loaded,
    TResult Function(ProfileError value)? error,
    TResult Function(ProfileLoggedOut value)? loggedOut,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut(this);
    }
    return orElse();
  }
}

abstract class ProfileLoggedOut implements ProfileState {
  const factory ProfileLoggedOut() = _$ProfileLoggedOutImpl;
}
