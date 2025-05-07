// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdateProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UpdateProfileResponse response) updateSuccess,
    required TResult Function(String message) updateFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UpdateProfileResponse response)? updateSuccess,
    TResult? Function(String message)? updateFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UpdateProfileResponse response)? updateSuccess,
    TResult Function(String message)? updateFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateProfileInitial value) initial,
    required TResult Function(_UpdateProfileLoading value) loading,
    required TResult Function(_UpdateProfileSuccess value) updateSuccess,
    required TResult Function(_UpdateProfileFailure value) updateFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateProfileInitial value)? initial,
    TResult? Function(_UpdateProfileLoading value)? loading,
    TResult? Function(_UpdateProfileSuccess value)? updateSuccess,
    TResult? Function(_UpdateProfileFailure value)? updateFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateProfileInitial value)? initial,
    TResult Function(_UpdateProfileLoading value)? loading,
    TResult Function(_UpdateProfileSuccess value)? updateSuccess,
    TResult Function(_UpdateProfileFailure value)? updateFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateProfileStateCopyWith<$Res> {
  factory $UpdateProfileStateCopyWith(
          UpdateProfileState value, $Res Function(UpdateProfileState) then) =
      _$UpdateProfileStateCopyWithImpl<$Res, UpdateProfileState>;
}

/// @nodoc
class _$UpdateProfileStateCopyWithImpl<$Res, $Val extends UpdateProfileState>
    implements $UpdateProfileStateCopyWith<$Res> {
  _$UpdateProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateProfileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UpdateProfileInitialImplCopyWith<$Res> {
  factory _$$UpdateProfileInitialImplCopyWith(_$UpdateProfileInitialImpl value,
          $Res Function(_$UpdateProfileInitialImpl) then) =
      __$$UpdateProfileInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateProfileInitialImplCopyWithImpl<$Res>
    extends _$UpdateProfileStateCopyWithImpl<$Res, _$UpdateProfileInitialImpl>
    implements _$$UpdateProfileInitialImplCopyWith<$Res> {
  __$$UpdateProfileInitialImplCopyWithImpl(_$UpdateProfileInitialImpl _value,
      $Res Function(_$UpdateProfileInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateProfileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UpdateProfileInitialImpl implements _UpdateProfileInitial {
  const _$UpdateProfileInitialImpl();

  @override
  String toString() {
    return 'UpdateProfileState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProfileInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UpdateProfileResponse response) updateSuccess,
    required TResult Function(String message) updateFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UpdateProfileResponse response)? updateSuccess,
    TResult? Function(String message)? updateFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UpdateProfileResponse response)? updateSuccess,
    TResult Function(String message)? updateFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateProfileInitial value) initial,
    required TResult Function(_UpdateProfileLoading value) loading,
    required TResult Function(_UpdateProfileSuccess value) updateSuccess,
    required TResult Function(_UpdateProfileFailure value) updateFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateProfileInitial value)? initial,
    TResult? Function(_UpdateProfileLoading value)? loading,
    TResult? Function(_UpdateProfileSuccess value)? updateSuccess,
    TResult? Function(_UpdateProfileFailure value)? updateFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateProfileInitial value)? initial,
    TResult Function(_UpdateProfileLoading value)? loading,
    TResult Function(_UpdateProfileSuccess value)? updateSuccess,
    TResult Function(_UpdateProfileFailure value)? updateFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _UpdateProfileInitial implements UpdateProfileState {
  const factory _UpdateProfileInitial() = _$UpdateProfileInitialImpl;
}

/// @nodoc
abstract class _$$UpdateProfileLoadingImplCopyWith<$Res> {
  factory _$$UpdateProfileLoadingImplCopyWith(_$UpdateProfileLoadingImpl value,
          $Res Function(_$UpdateProfileLoadingImpl) then) =
      __$$UpdateProfileLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateProfileLoadingImplCopyWithImpl<$Res>
    extends _$UpdateProfileStateCopyWithImpl<$Res, _$UpdateProfileLoadingImpl>
    implements _$$UpdateProfileLoadingImplCopyWith<$Res> {
  __$$UpdateProfileLoadingImplCopyWithImpl(_$UpdateProfileLoadingImpl _value,
      $Res Function(_$UpdateProfileLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateProfileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UpdateProfileLoadingImpl implements _UpdateProfileLoading {
  const _$UpdateProfileLoadingImpl();

  @override
  String toString() {
    return 'UpdateProfileState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProfileLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UpdateProfileResponse response) updateSuccess,
    required TResult Function(String message) updateFailure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UpdateProfileResponse response)? updateSuccess,
    TResult? Function(String message)? updateFailure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UpdateProfileResponse response)? updateSuccess,
    TResult Function(String message)? updateFailure,
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
    required TResult Function(_UpdateProfileInitial value) initial,
    required TResult Function(_UpdateProfileLoading value) loading,
    required TResult Function(_UpdateProfileSuccess value) updateSuccess,
    required TResult Function(_UpdateProfileFailure value) updateFailure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateProfileInitial value)? initial,
    TResult? Function(_UpdateProfileLoading value)? loading,
    TResult? Function(_UpdateProfileSuccess value)? updateSuccess,
    TResult? Function(_UpdateProfileFailure value)? updateFailure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateProfileInitial value)? initial,
    TResult Function(_UpdateProfileLoading value)? loading,
    TResult Function(_UpdateProfileSuccess value)? updateSuccess,
    TResult Function(_UpdateProfileFailure value)? updateFailure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _UpdateProfileLoading implements UpdateProfileState {
  const factory _UpdateProfileLoading() = _$UpdateProfileLoadingImpl;
}

/// @nodoc
abstract class _$$UpdateProfileSuccessImplCopyWith<$Res> {
  factory _$$UpdateProfileSuccessImplCopyWith(_$UpdateProfileSuccessImpl value,
          $Res Function(_$UpdateProfileSuccessImpl) then) =
      __$$UpdateProfileSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UpdateProfileResponse response});
}

/// @nodoc
class __$$UpdateProfileSuccessImplCopyWithImpl<$Res>
    extends _$UpdateProfileStateCopyWithImpl<$Res, _$UpdateProfileSuccessImpl>
    implements _$$UpdateProfileSuccessImplCopyWith<$Res> {
  __$$UpdateProfileSuccessImplCopyWithImpl(_$UpdateProfileSuccessImpl _value,
      $Res Function(_$UpdateProfileSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$UpdateProfileSuccessImpl(
      null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as UpdateProfileResponse,
    ));
  }
}

/// @nodoc

class _$UpdateProfileSuccessImpl implements _UpdateProfileSuccess {
  const _$UpdateProfileSuccessImpl(this.response);

  @override
  final UpdateProfileResponse response;

  @override
  String toString() {
    return 'UpdateProfileState.updateSuccess(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProfileSuccessImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  /// Create a copy of UpdateProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProfileSuccessImplCopyWith<_$UpdateProfileSuccessImpl>
      get copyWith =>
          __$$UpdateProfileSuccessImplCopyWithImpl<_$UpdateProfileSuccessImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UpdateProfileResponse response) updateSuccess,
    required TResult Function(String message) updateFailure,
  }) {
    return updateSuccess(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UpdateProfileResponse response)? updateSuccess,
    TResult? Function(String message)? updateFailure,
  }) {
    return updateSuccess?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UpdateProfileResponse response)? updateSuccess,
    TResult Function(String message)? updateFailure,
    required TResult orElse(),
  }) {
    if (updateSuccess != null) {
      return updateSuccess(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateProfileInitial value) initial,
    required TResult Function(_UpdateProfileLoading value) loading,
    required TResult Function(_UpdateProfileSuccess value) updateSuccess,
    required TResult Function(_UpdateProfileFailure value) updateFailure,
  }) {
    return updateSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateProfileInitial value)? initial,
    TResult? Function(_UpdateProfileLoading value)? loading,
    TResult? Function(_UpdateProfileSuccess value)? updateSuccess,
    TResult? Function(_UpdateProfileFailure value)? updateFailure,
  }) {
    return updateSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateProfileInitial value)? initial,
    TResult Function(_UpdateProfileLoading value)? loading,
    TResult Function(_UpdateProfileSuccess value)? updateSuccess,
    TResult Function(_UpdateProfileFailure value)? updateFailure,
    required TResult orElse(),
  }) {
    if (updateSuccess != null) {
      return updateSuccess(this);
    }
    return orElse();
  }
}

abstract class _UpdateProfileSuccess implements UpdateProfileState {
  const factory _UpdateProfileSuccess(final UpdateProfileResponse response) =
      _$UpdateProfileSuccessImpl;

  UpdateProfileResponse get response;

  /// Create a copy of UpdateProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateProfileSuccessImplCopyWith<_$UpdateProfileSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateProfileFailureImplCopyWith<$Res> {
  factory _$$UpdateProfileFailureImplCopyWith(_$UpdateProfileFailureImpl value,
          $Res Function(_$UpdateProfileFailureImpl) then) =
      __$$UpdateProfileFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$UpdateProfileFailureImplCopyWithImpl<$Res>
    extends _$UpdateProfileStateCopyWithImpl<$Res, _$UpdateProfileFailureImpl>
    implements _$$UpdateProfileFailureImplCopyWith<$Res> {
  __$$UpdateProfileFailureImplCopyWithImpl(_$UpdateProfileFailureImpl _value,
      $Res Function(_$UpdateProfileFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$UpdateProfileFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateProfileFailureImpl implements _UpdateProfileFailure {
  const _$UpdateProfileFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'UpdateProfileState.updateFailure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProfileFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of UpdateProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProfileFailureImplCopyWith<_$UpdateProfileFailureImpl>
      get copyWith =>
          __$$UpdateProfileFailureImplCopyWithImpl<_$UpdateProfileFailureImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UpdateProfileResponse response) updateSuccess,
    required TResult Function(String message) updateFailure,
  }) {
    return updateFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UpdateProfileResponse response)? updateSuccess,
    TResult? Function(String message)? updateFailure,
  }) {
    return updateFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UpdateProfileResponse response)? updateSuccess,
    TResult Function(String message)? updateFailure,
    required TResult orElse(),
  }) {
    if (updateFailure != null) {
      return updateFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateProfileInitial value) initial,
    required TResult Function(_UpdateProfileLoading value) loading,
    required TResult Function(_UpdateProfileSuccess value) updateSuccess,
    required TResult Function(_UpdateProfileFailure value) updateFailure,
  }) {
    return updateFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateProfileInitial value)? initial,
    TResult? Function(_UpdateProfileLoading value)? loading,
    TResult? Function(_UpdateProfileSuccess value)? updateSuccess,
    TResult? Function(_UpdateProfileFailure value)? updateFailure,
  }) {
    return updateFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateProfileInitial value)? initial,
    TResult Function(_UpdateProfileLoading value)? loading,
    TResult Function(_UpdateProfileSuccess value)? updateSuccess,
    TResult Function(_UpdateProfileFailure value)? updateFailure,
    required TResult orElse(),
  }) {
    if (updateFailure != null) {
      return updateFailure(this);
    }
    return orElse();
  }
}

abstract class _UpdateProfileFailure implements UpdateProfileState {
  const factory _UpdateProfileFailure(final String message) =
      _$UpdateProfileFailureImpl;

  String get message;

  /// Create a copy of UpdateProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateProfileFailureImplCopyWith<_$UpdateProfileFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}
