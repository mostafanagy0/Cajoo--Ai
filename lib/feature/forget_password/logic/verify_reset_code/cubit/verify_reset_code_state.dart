import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_reset_code_state.freezed.dart';

@freezed
class VerifyResetCodeState<T> with _$VerifyResetCodeState {
  const factory VerifyResetCodeState.initial() = _VerifyResetCodeInitial;
  const factory VerifyResetCodeState.loading() = VerifyResetCodeLoading;
  const factory VerifyResetCodeState.success(String message) =
      VerifyResetCodeSuccess<T>;
  const factory VerifyResetCodeState.error({required String error}) =
      VerifyResetCodeError;
}
