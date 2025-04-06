import 'package:freezed_annotation/freezed_annotation.dart';

part 'forget_password_state.freezed.dart';

@freezed
class ForgetPasswordState<T> with _$ForgetPasswordState {
  const factory ForgetPasswordState.initial() = _ForgetInitial;
  const factory ForgetPasswordState.loading() = ForgetLoading;
  const factory ForgetPasswordState.success(String message) = ForgetSuccess<T>;
  const factory ForgetPasswordState.error({required String error}) = ForgetError;
}
