import 'package:cajoo/core/helpers/extention.dart';
import 'package:cajoo/core/networking/api_error_model.dart';
import 'package:cajoo/core/routing/routes.dart';
import 'package:cajoo/core/theming/colors.dart';
import 'package:cajoo/feature/forget_password/logic/reset_password/cubit/reset_password_cubit.dart';
import 'package:cajoo/feature/forget_password/logic/reset_password/cubit/reset_password_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/theming/styles.dart';

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
        state.whenOrNull(loading: () {
          showDialog(
            context: context,
            builder: (context) => const Center(
              child: CircularProgressIndicator(
                color: AppColor.primaryColor,
              ),
            ),
          );
        }, success: (resetpassword) {
          context.pop();
          showSuccessMessage(context, resetpassword);
          context.pushReplacementNamed(Routes.loginView);
        }, error: (apiError) {
          setupErrorState(
              context,
              ApiErrorModel(
                message: apiError,
                errorsType: [],
              ));
        });
      },
      child: const SizedBox.shrink(),
    );
  }

  void setupErrorState(BuildContext context, ApiErrorModel apiError) {
    context.pop();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(
          Icons.error,
          color: Colors.red,
          size: 32,
        ),
        content: Text(
          apiError.message ?? "Unexpected error",
          style: TextStyles.font16Weight400,
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: const Text(
              'Got it',
              // style: TextStyles.font14BlueSemiBold,
            ),
          ),
        ],
      ),
    );
  }

  void showSuccessMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Succes Reset Password')),
    );
  }
}
