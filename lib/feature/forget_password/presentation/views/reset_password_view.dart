import 'package:cajoo/core/theming/styles.dart';
import 'package:cajoo/core/widgets/custom_buttom.dart';
import 'package:cajoo/feature/forget_password/logic/reset_password/cubit/reset_password_cubit.dart';
import 'package:cajoo/feature/forget_password/presentation/widgets/reset_password_bloc_listener.dart';
import 'package:cajoo/feature/forget_password/presentation/widgets/resst_password_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFFFFFFF),
      appBar: AppBar(
        backgroundColor: const Color(0XFFFFFFFF),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Text(
                'Reset Password',
                style: TextStyles.font32Weight600,
              ),
              const SizedBox(height: 16),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    'Create a new password to securely regain access to your account',
                    style: TextStyles.font14Weight400,
                    textAlign: TextAlign.center,
                  )),
              const SizedBox(
                height: 20,
              ),
              const ResstPasswordForm(),
              const SizedBox(height: 36),
              CustomButtom(
                text: 'Continue',
                onTap: () {
                  validateThenDoContinue(context);
                },
              ),
              const ResetPasswordBlocListener()
            ],
          ),
        ),
      ),
    );
  }

  void validateThenDoContinue(BuildContext context) {
    if (context.read<ResetPasswordCubit>().formKey.currentState!.validate()) {
      context.read<ResetPasswordCubit>().resetPassword();
    }
  }
}
