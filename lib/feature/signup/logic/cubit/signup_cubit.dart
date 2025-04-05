import 'package:bloc/bloc.dart';
import 'package:cajoo/feature/signup/data/models/signup_request_body.dart';
import 'package:cajoo/feature/signup/data/repos/signup_repo_imp.dart';
import 'package:cajoo/feature/signup/logic/cubit/signup_state.dart';
import 'package:flutter/material.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit(this.signupRepoImp) : super(const SignupState.initial());
  final SignupRepoImp signupRepoImp;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitSignupstate() async {
    emit(const SignupState.loading());
    final response = await signupRepoImp.signup(SignupRequestBody(
        email: emailController.text,
        password: passwordController.text,
        passwordConfirm: confirmPasswordController.text,
        username: usernameController.text));
    return response.fold(
      (apiError) {
        emit(SignupState.error(error: apiError));
      },
      (success) {
        emit(SignupState.success(success));

        emailController.clear();
        passwordController.clear();
        confirmPasswordController.clear();
        usernameController.clear();
      },
    );
  }
}

