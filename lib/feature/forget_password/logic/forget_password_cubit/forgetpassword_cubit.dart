import 'package:bloc/bloc.dart';
import 'package:cajoo/feature/forget_password/data/models/forget_passwors_request_model.dart';
import 'package:cajoo/feature/forget_password/data/repos/forget_password_repo_imp.dart';
import 'package:cajoo/feature/forget_password/logic/forget_password_cubit/forget_password_state.dart';
import 'package:flutter/material.dart';

class ForgetpasswordCubit extends Cubit<ForgetPasswordState> {
  ForgetpasswordCubit(this.forgetPasswordRepoImp)
      : super(const ForgetPasswordState.initial());
  final ForgetPasswordRepoImp forgetPasswordRepoImp;
  TextEditingController emailController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  Future<void> sendForgetPasswordEmail() async {
    emit(const ForgetPasswordState.loading());
    final result = await forgetPasswordRepoImp.sendForgetPasswordEmail(
        ForgetPassworsRequestModel(email: emailController.text));
    result.fold(
      (failure) {
        emit(ForgetPasswordState.error(failure: failure));
      },
      (success) {
        emit(ForgetPasswordState.success(success.message));
        emailController.clear();
      },
    );
  }
}
