// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_history_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetHistoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<HistoryItem> history) success,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<HistoryItem> history)? success,
    TResult? Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<HistoryItem> history)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetHistoryInitial value) initial,
    required TResult Function(GetHistoryLoading value) loading,
    required TResult Function(GetHistorySuccess value) success,
    required TResult Function(GetHistoryFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetHistoryInitial value)? initial,
    TResult? Function(GetHistoryLoading value)? loading,
    TResult? Function(GetHistorySuccess value)? success,
    TResult? Function(GetHistoryFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetHistoryInitial value)? initial,
    TResult Function(GetHistoryLoading value)? loading,
    TResult Function(GetHistorySuccess value)? success,
    TResult Function(GetHistoryFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetHistoryStateCopyWith<$Res> {
  factory $GetHistoryStateCopyWith(
          GetHistoryState value, $Res Function(GetHistoryState) then) =
      _$GetHistoryStateCopyWithImpl<$Res, GetHistoryState>;
}

/// @nodoc
class _$GetHistoryStateCopyWithImpl<$Res, $Val extends GetHistoryState>
    implements $GetHistoryStateCopyWith<$Res> {
  _$GetHistoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetHistoryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetHistoryInitialImplCopyWith<$Res> {
  factory _$$GetHistoryInitialImplCopyWith(_$GetHistoryInitialImpl value,
          $Res Function(_$GetHistoryInitialImpl) then) =
      __$$GetHistoryInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetHistoryInitialImplCopyWithImpl<$Res>
    extends _$GetHistoryStateCopyWithImpl<$Res, _$GetHistoryInitialImpl>
    implements _$$GetHistoryInitialImplCopyWith<$Res> {
  __$$GetHistoryInitialImplCopyWithImpl(_$GetHistoryInitialImpl _value,
      $Res Function(_$GetHistoryInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetHistoryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetHistoryInitialImpl implements GetHistoryInitial {
  const _$GetHistoryInitialImpl();

  @override
  String toString() {
    return 'GetHistoryState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetHistoryInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<HistoryItem> history) success,
    required TResult Function(String message) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<HistoryItem> history)? success,
    TResult? Function(String message)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<HistoryItem> history)? success,
    TResult Function(String message)? failure,
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
    required TResult Function(GetHistoryInitial value) initial,
    required TResult Function(GetHistoryLoading value) loading,
    required TResult Function(GetHistorySuccess value) success,
    required TResult Function(GetHistoryFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetHistoryInitial value)? initial,
    TResult? Function(GetHistoryLoading value)? loading,
    TResult? Function(GetHistorySuccess value)? success,
    TResult? Function(GetHistoryFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetHistoryInitial value)? initial,
    TResult Function(GetHistoryLoading value)? loading,
    TResult Function(GetHistorySuccess value)? success,
    TResult Function(GetHistoryFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class GetHistoryInitial implements GetHistoryState {
  const factory GetHistoryInitial() = _$GetHistoryInitialImpl;
}

/// @nodoc
abstract class _$$GetHistoryLoadingImplCopyWith<$Res> {
  factory _$$GetHistoryLoadingImplCopyWith(_$GetHistoryLoadingImpl value,
          $Res Function(_$GetHistoryLoadingImpl) then) =
      __$$GetHistoryLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetHistoryLoadingImplCopyWithImpl<$Res>
    extends _$GetHistoryStateCopyWithImpl<$Res, _$GetHistoryLoadingImpl>
    implements _$$GetHistoryLoadingImplCopyWith<$Res> {
  __$$GetHistoryLoadingImplCopyWithImpl(_$GetHistoryLoadingImpl _value,
      $Res Function(_$GetHistoryLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetHistoryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetHistoryLoadingImpl implements GetHistoryLoading {
  const _$GetHistoryLoadingImpl();

  @override
  String toString() {
    return 'GetHistoryState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetHistoryLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<HistoryItem> history) success,
    required TResult Function(String message) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<HistoryItem> history)? success,
    TResult? Function(String message)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<HistoryItem> history)? success,
    TResult Function(String message)? failure,
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
    required TResult Function(GetHistoryInitial value) initial,
    required TResult Function(GetHistoryLoading value) loading,
    required TResult Function(GetHistorySuccess value) success,
    required TResult Function(GetHistoryFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetHistoryInitial value)? initial,
    TResult? Function(GetHistoryLoading value)? loading,
    TResult? Function(GetHistorySuccess value)? success,
    TResult? Function(GetHistoryFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetHistoryInitial value)? initial,
    TResult Function(GetHistoryLoading value)? loading,
    TResult Function(GetHistorySuccess value)? success,
    TResult Function(GetHistoryFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class GetHistoryLoading implements GetHistoryState {
  const factory GetHistoryLoading() = _$GetHistoryLoadingImpl;
}

/// @nodoc
abstract class _$$GetHistorySuccessImplCopyWith<$Res> {
  factory _$$GetHistorySuccessImplCopyWith(_$GetHistorySuccessImpl value,
          $Res Function(_$GetHistorySuccessImpl) then) =
      __$$GetHistorySuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<HistoryItem> history});
}

/// @nodoc
class __$$GetHistorySuccessImplCopyWithImpl<$Res>
    extends _$GetHistoryStateCopyWithImpl<$Res, _$GetHistorySuccessImpl>
    implements _$$GetHistorySuccessImplCopyWith<$Res> {
  __$$GetHistorySuccessImplCopyWithImpl(_$GetHistorySuccessImpl _value,
      $Res Function(_$GetHistorySuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? history = null,
  }) {
    return _then(_$GetHistorySuccessImpl(
      null == history
          ? _value._history
          : history // ignore: cast_nullable_to_non_nullable
              as List<HistoryItem>,
    ));
  }
}

/// @nodoc

class _$GetHistorySuccessImpl implements GetHistorySuccess {
  const _$GetHistorySuccessImpl(final List<HistoryItem> history)
      : _history = history;

  final List<HistoryItem> _history;
  @override
  List<HistoryItem> get history {
    if (_history is EqualUnmodifiableListView) return _history;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_history);
  }

  @override
  String toString() {
    return 'GetHistoryState.success(history: $history)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetHistorySuccessImpl &&
            const DeepCollectionEquality().equals(other._history, _history));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_history));

  /// Create a copy of GetHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetHistorySuccessImplCopyWith<_$GetHistorySuccessImpl> get copyWith =>
      __$$GetHistorySuccessImplCopyWithImpl<_$GetHistorySuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<HistoryItem> history) success,
    required TResult Function(String message) failure,
  }) {
    return success(history);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<HistoryItem> history)? success,
    TResult? Function(String message)? failure,
  }) {
    return success?.call(history);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<HistoryItem> history)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(history);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetHistoryInitial value) initial,
    required TResult Function(GetHistoryLoading value) loading,
    required TResult Function(GetHistorySuccess value) success,
    required TResult Function(GetHistoryFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetHistoryInitial value)? initial,
    TResult? Function(GetHistoryLoading value)? loading,
    TResult? Function(GetHistorySuccess value)? success,
    TResult? Function(GetHistoryFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetHistoryInitial value)? initial,
    TResult Function(GetHistoryLoading value)? loading,
    TResult Function(GetHistorySuccess value)? success,
    TResult Function(GetHistoryFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class GetHistorySuccess implements GetHistoryState {
  const factory GetHistorySuccess(final List<HistoryItem> history) =
      _$GetHistorySuccessImpl;

  List<HistoryItem> get history;

  /// Create a copy of GetHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetHistorySuccessImplCopyWith<_$GetHistorySuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetHistoryFailureImplCopyWith<$Res> {
  factory _$$GetHistoryFailureImplCopyWith(_$GetHistoryFailureImpl value,
          $Res Function(_$GetHistoryFailureImpl) then) =
      __$$GetHistoryFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$GetHistoryFailureImplCopyWithImpl<$Res>
    extends _$GetHistoryStateCopyWithImpl<$Res, _$GetHistoryFailureImpl>
    implements _$$GetHistoryFailureImplCopyWith<$Res> {
  __$$GetHistoryFailureImplCopyWithImpl(_$GetHistoryFailureImpl _value,
      $Res Function(_$GetHistoryFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$GetHistoryFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetHistoryFailureImpl implements GetHistoryFailure {
  const _$GetHistoryFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'GetHistoryState.failure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetHistoryFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of GetHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetHistoryFailureImplCopyWith<_$GetHistoryFailureImpl> get copyWith =>
      __$$GetHistoryFailureImplCopyWithImpl<_$GetHistoryFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<HistoryItem> history) success,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<HistoryItem> history)? success,
    TResult? Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<HistoryItem> history)? success,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetHistoryInitial value) initial,
    required TResult Function(GetHistoryLoading value) loading,
    required TResult Function(GetHistorySuccess value) success,
    required TResult Function(GetHistoryFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetHistoryInitial value)? initial,
    TResult? Function(GetHistoryLoading value)? loading,
    TResult? Function(GetHistorySuccess value)? success,
    TResult? Function(GetHistoryFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetHistoryInitial value)? initial,
    TResult Function(GetHistoryLoading value)? loading,
    TResult Function(GetHistorySuccess value)? success,
    TResult Function(GetHistoryFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class GetHistoryFailure implements GetHistoryState {
  const factory GetHistoryFailure(final String message) =
      _$GetHistoryFailureImpl;

  String get message;

  /// Create a copy of GetHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetHistoryFailureImplCopyWith<_$GetHistoryFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
