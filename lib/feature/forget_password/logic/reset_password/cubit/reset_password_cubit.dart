import 'package:bloc/bloc.dart';
import 'package:cajoo/feature/forget_password/data/models/reset_password_request_model.dart';
import 'package:cajoo/feature/forget_password/data/repos/forget_password_repo_imp.dart';
import 'package:cajoo/feature/forget_password/logic/reset_password/cubit/reset_password_state.dart';
import 'package:flutter/material.dart';

class ResetPasswordCubit extends Cubit<ResetPasswordState> {
  ResetPasswordCubit(this.forgetPasswordRepoImp)
      : super(const ResetPasswordState.initial());
  final ForgetPasswordRepoImp forgetPasswordRepoImp;
  TextEditingController emailController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confermPasswordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  Future<void> resetPassword() async {
    emit(const ResetPasswordState.loading());
    final result = await forgetPasswordRepoImp.resetPassword(
        ResetPasswordRequestModel(
            email: emailController.text,
            newPassword: newPasswordController.text,
            passwordConfirm: confermPasswordController.text));
    result.fold(
      (failure) {
        emit(ResetPasswordState.error(error: failure));
      },
      (success) {
        emit(const ResetPasswordState.success('Succsee Reset Password'));
      },
    );
  }
}
