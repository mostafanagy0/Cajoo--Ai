import 'package:cajoo/core/errors/server_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reset_password_state.freezed.dart';

@freezed
class ResetPasswordState<T> with _$ResetPasswordState {
  const factory ResetPasswordState.initial() = _ResetPasswordInitial;
  const factory ResetPasswordState.loading() = ResetPasswordLoding;
  const factory ResetPasswordState.success(String message) =
      ResetPasswordSuccess<T>;
  const factory ResetPasswordState.error({required ServerFailure error}) =
      ResetPasswordError;
}
