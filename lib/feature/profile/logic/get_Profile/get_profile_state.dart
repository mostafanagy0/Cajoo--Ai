import 'package:cajoo/core/errors/server_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_profile_state.freezed.dart';

@freezed
class GetProfileState<T> with _$GetProfileState<T> {
  const factory GetProfileState.initial() = _GetProfileStateInitial;
  const factory GetProfileState.loading() = GetProfileStateLoading;
  const factory GetProfileState.success(T data) = GetProfileStateSuccess<T>;
  const factory GetProfileState.error({required ServerFailure error}) =
      GetProfileStateError;
}
