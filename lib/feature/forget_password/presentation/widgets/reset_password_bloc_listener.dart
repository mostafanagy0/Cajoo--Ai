import 'package:cajoo/core/errors/server_failure.dart';
import 'package:cajoo/core/helpers/extention.dart';
import 'package:cajoo/core/routing/routes.dart';
import 'package:cajoo/core/theming/colors.dart';
import 'package:cajoo/feature/forget_password/logic/reset_password/cubit/reset_password_cubit.dart';
import 'package:cajoo/feature/forget_password/logic/reset_password/cubit/reset_password_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResetPasswordBlocListener extends StatelessWidget {
  const ResetPasswordBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ResetPasswordCubit, ResetPasswordState>(
      listenWhen: (previous, current) =>
          current is ResetPasswordLoding ||
          current is ResetPasswordSuccess ||
          current is ResetPasswordError,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: AppColor.primaryColor,
                ),
              ),
            );
          },
          success: (resetPasswordMessage) {
            context.pop();
            showSuccessMessage(context, resetPasswordMessage);
            context.pushReplacementNamed(Routes.loginView);
          },
          error: (serverFailure) {
            setupErrorState(context, serverFailure);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void setupErrorState(BuildContext context, ServerFailure serverFailure) {
    context.pop();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(serverFailure.message)),
    );
  }

  void showSuccessMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }
}
