import 'package:bloc/bloc.dart';
import 'package:cajoo/feature/forget_password/data/models/verify_reset_code_request_model.dart';
import 'package:cajoo/feature/forget_password/data/repos/forget_password_repo_imp.dart';
import 'package:cajoo/feature/forget_password/logic/verify_reset_code/cubit/verify_reset_code_state.dart';

class VerifyResetCodeCubit extends Cubit<VerifyResetCodeState> {
  VerifyResetCodeCubit(this.forgetPasswordRepoImp)
      : super(const VerifyResetCodeState.initial());
  final ForgetPasswordRepoImp forgetPasswordRepoImp;

  Future<void> verifyResetCode(
      VerifyResetCodeRequestModel verifyResetCodeRequestModel) async {
    emit(const VerifyResetCodeState.loading());
    final result = await forgetPasswordRepoImp
        .verifyResetCode(verifyResetCodeRequestModel);
    result.fold(
      (failure) {
        emit(VerifyResetCodeState.error(
            error: failure.message ?? "Unknown Error"));
      },
      (success) {
        emit(VerifyResetCodeState.success(success.message));
      },
    );
  }
}
