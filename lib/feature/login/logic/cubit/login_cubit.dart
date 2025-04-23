import 'package:bloc/bloc.dart';
import 'package:cajoo/core/helpers/shered_pref_helper_.dart';
import 'package:cajoo/feature/login/data/models/login_requist_body.dart';
import 'package:cajoo/feature/login/data/repos/login_repo_imp.dart';
import 'package:cajoo/feature/login/logic/cubit/login_state.dart';
import 'package:flutter/material.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.loginRepoImp) : super(const LoginState.initial());
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final LoginRepoImp loginRepoImp;

  void emitLoginState() async {
    if (!formKey.currentState!.validate()) {
      return;
    }
    emit(const LoginState.loading());
    final response = await loginRepoImp.login(LoginRequistBody(
        email: emailController.text, password: passwordController.text));
    return response.fold(
      (apiError) {
        emit(LoginState.error(error: apiError));
      },
      (success) async {
        await SharedPrefHelper.setData('username', success.userData.username);
        emit(LoginState.success(success));
        emailController.clear();
        passwordController.clear();
      },
    );
  }
}
