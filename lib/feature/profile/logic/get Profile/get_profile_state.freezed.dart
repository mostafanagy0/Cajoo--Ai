// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetProfileState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(ServerFailure error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(ServerFailure error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(ServerFailure error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProfileStateInitial<T> value) initial,
    required TResult Function(GetProfileStateLoading<T> value) loading,
    required TResult Function(GetProfileStateSuccess<T> value) success,
    required TResult Function(GetProfileStateError<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProfileStateInitial<T> value)? initial,
    TResult? Function(GetProfileStateLoading<T> value)? loading,
    TResult? Function(GetProfileStateSuccess<T> value)? success,
    TResult? Function(GetProfileStateError<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProfileStateInitial<T> value)? initial,
    TResult Function(GetProfileStateLoading<T> value)? loading,
    TResult Function(GetProfileStateSuccess<T> value)? success,
    TResult Function(GetProfileStateError<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetProfileStateCopyWith<T, $Res> {
  factory $GetProfileStateCopyWith(
          GetProfileState<T> value, $Res Function(GetProfileState<T>) then) =
      _$GetProfileStateCopyWithImpl<T, $Res, GetProfileState<T>>;
}

/// @nodoc
class _$GetProfileStateCopyWithImpl<T, $Res, $Val extends GetProfileState<T>>
    implements $GetProfileStateCopyWith<T, $Res> {
  _$GetProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetProfileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetProfileStateInitialImplCopyWith<T, $Res> {
  factory _$$GetProfileStateInitialImplCopyWith(
          _$GetProfileStateInitialImpl<T> value,
          $Res Function(_$GetProfileStateInitialImpl<T>) then) =
      __$$GetProfileStateInitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$GetProfileStateInitialImplCopyWithImpl<T, $Res>
    extends _$GetProfileStateCopyWithImpl<T, $Res,
        _$GetProfileStateInitialImpl<T>>
    implements _$$GetProfileStateInitialImplCopyWith<T, $Res> {
  __$$GetProfileStateInitialImplCopyWithImpl(
      _$GetProfileStateInitialImpl<T> _value,
      $Res Function(_$GetProfileStateInitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of GetProfileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetProfileStateInitialImpl<T> implements _GetProfileStateInitial<T> {
  const _$GetProfileStateInitialImpl();

  @override
  String toString() {
    return 'GetProfileState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProfileStateInitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(ServerFailure error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(ServerFailure error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(ServerFailure error)? error,
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
    required TResult Function(_GetProfileStateInitial<T> value) initial,
    required TResult Function(GetProfileStateLoading<T> value) loading,
    required TResult Function(GetProfileStateSuccess<T> value) success,
    required TResult Function(GetProfileStateError<T> value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProfileStateInitial<T> value)? initial,
    TResult? Function(GetProfileStateLoading<T> value)? loading,
    TResult? Function(GetProfileStateSuccess<T> value)? success,
    TResult? Function(GetProfileStateError<T> value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProfileStateInitial<T> value)? initial,
    TResult Function(GetProfileStateLoading<T> value)? loading,
    TResult Function(GetProfileStateSuccess<T> value)? success,
    TResult Function(GetProfileStateError<T> value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _GetProfileStateInitial<T> implements GetProfileState<T> {
  const factory _GetProfileStateInitial() = _$GetProfileStateInitialImpl<T>;
}

/// @nodoc
abstract class _$$GetProfileStateLoadingImplCopyWith<T, $Res> {
  factory _$$GetProfileStateLoadingImplCopyWith(
          _$GetProfileStateLoadingImpl<T> value,
          $Res Function(_$GetProfileStateLoadingImpl<T>) then) =
      __$$GetProfileStateLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$GetProfileStateLoadingImplCopyWithImpl<T, $Res>
    extends _$GetProfileStateCopyWithImpl<T, $Res,
        _$GetProfileStateLoadingImpl<T>>
    implements _$$GetProfileStateLoadingImplCopyWith<T, $Res> {
  __$$GetProfileStateLoadingImplCopyWithImpl(
      _$GetProfileStateLoadingImpl<T> _value,
      $Res Function(_$GetProfileStateLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of GetProfileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetProfileStateLoadingImpl<T> implements GetProfileStateLoading<T> {
  const _$GetProfileStateLoadingImpl();

  @override
  String toString() {
    return 'GetProfileState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProfileStateLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(ServerFailure error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(ServerFailure error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(ServerFailure error)? error,
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
    required TResult Function(_GetProfileStateInitial<T> value) initial,
    required TResult Function(GetProfileStateLoading<T> value) loading,
    required TResult Function(GetProfileStateSuccess<T> value) success,
    required TResult Function(GetProfileStateError<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProfileStateInitial<T> value)? initial,
    TResult? Function(GetProfileStateLoading<T> value)? loading,
    TResult? Function(GetProfileStateSuccess<T> value)? success,
    TResult? Function(GetProfileStateError<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProfileStateInitial<T> value)? initial,
    TResult Function(GetProfileStateLoading<T> value)? loading,
    TResult Function(GetProfileStateSuccess<T> value)? success,
    TResult Function(GetProfileStateError<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class GetProfileStateLoading<T> implements GetProfileState<T> {
  const factory GetProfileStateLoading() = _$GetProfileStateLoadingImpl<T>;
}

/// @nodoc
abstract class _$$GetProfileStateSuccessImplCopyWith<T, $Res> {
  factory _$$GetProfileStateSuccessImplCopyWith(
          _$GetProfileStateSuccessImpl<T> value,
          $Res Function(_$GetProfileStateSuccessImpl<T>) then) =
      __$$GetProfileStateSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$GetProfileStateSuccessImplCopyWithImpl<T, $Res>
    extends _$GetProfileStateCopyWithImpl<T, $Res,
        _$GetProfileStateSuccessImpl<T>>
    implements _$$GetProfileStateSuccessImplCopyWith<T, $Res> {
  __$$GetProfileStateSuccessImplCopyWithImpl(
      _$GetProfileStateSuccessImpl<T> _value,
      $Res Function(_$GetProfileStateSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of GetProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetProfileStateSuccessImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$GetProfileStateSuccessImpl<T> implements GetProfileStateSuccess<T> {
  const _$GetProfileStateSuccessImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'GetProfileState<$T>.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProfileStateSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  /// Create a copy of GetProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProfileStateSuccessImplCopyWith<T, _$GetProfileStateSuccessImpl<T>>
      get copyWith => __$$GetProfileStateSuccessImplCopyWithImpl<T,
          _$GetProfileStateSuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(ServerFailure error) error,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(ServerFailure error)? error,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(ServerFailure error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProfileStateInitial<T> value) initial,
    required TResult Function(GetProfileStateLoading<T> value) loading,
    required TResult Function(GetProfileStateSuccess<T> value) success,
    required TResult Function(GetProfileStateError<T> value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProfileStateInitial<T> value)? initial,
    TResult? Function(GetProfileStateLoading<T> value)? loading,
    TResult? Function(GetProfileStateSuccess<T> value)? success,
    TResult? Function(GetProfileStateError<T> value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProfileStateInitial<T> value)? initial,
    TResult Function(GetProfileStateLoading<T> value)? loading,
    TResult Function(GetProfileStateSuccess<T> value)? success,
    TResult Function(GetProfileStateError<T> value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class GetProfileStateSuccess<T> implements GetProfileState<T> {
  const factory GetProfileStateSuccess(final T data) =
      _$GetProfileStateSuccessImpl<T>;

  T get data;

  /// Create a copy of GetProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetProfileStateSuccessImplCopyWith<T, _$GetProfileStateSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetProfileStateErrorImplCopyWith<T, $Res> {
  factory _$$GetProfileStateErrorImplCopyWith(
          _$GetProfileStateErrorImpl<T> value,
          $Res Function(_$GetProfileStateErrorImpl<T>) then) =
      __$$GetProfileStateErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ServerFailure error});
}

/// @nodoc
class __$$GetProfileStateErrorImplCopyWithImpl<T, $Res>
    extends _$GetProfileStateCopyWithImpl<T, $Res,
        _$GetProfileStateErrorImpl<T>>
    implements _$$GetProfileStateErrorImplCopyWith<T, $Res> {
  __$$GetProfileStateErrorImplCopyWithImpl(_$GetProfileStateErrorImpl<T> _value,
      $Res Function(_$GetProfileStateErrorImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of GetProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$GetProfileStateErrorImpl<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ServerFailure,
    ));
  }
}

/// @nodoc

class _$GetProfileStateErrorImpl<T> implements GetProfileStateError<T> {
  const _$GetProfileStateErrorImpl({required this.error});

  @override
  final ServerFailure error;

  @override
  String toString() {
    return 'GetProfileState<$T>.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProfileStateErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of GetProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProfileStateErrorImplCopyWith<T, _$GetProfileStateErrorImpl<T>>
      get copyWith => __$$GetProfileStateErrorImplCopyWithImpl<T,
          _$GetProfileStateErrorImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(ServerFailure error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(ServerFailure error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(ServerFailure error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProfileStateInitial<T> value) initial,
    required TResult Function(GetProfileStateLoading<T> value) loading,
    required TResult Function(GetProfileStateSuccess<T> value) success,
    required TResult Function(GetProfileStateError<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProfileStateInitial<T> value)? initial,
    TResult? Function(GetProfileStateLoading<T> value)? loading,
    TResult? Function(GetProfileStateSuccess<T> value)? success,
    TResult? Function(GetProfileStateError<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProfileStateInitial<T> value)? initial,
    TResult Function(GetProfileStateLoading<T> value)? loading,
    TResult Function(GetProfileStateSuccess<T> value)? success,
    TResult Function(GetProfileStateError<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetProfileStateError<T> implements GetProfileState<T> {
  const factory GetProfileStateError({required final ServerFailure error}) =
      _$GetProfileStateErrorImpl<T>;

  ServerFailure get error;

  /// Create a copy of GetProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetProfileStateErrorImplCopyWith<T, _$GetProfileStateErrorImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
