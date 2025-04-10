import 'package:cajoo/core/helpers/extention.dart';
import 'package:cajoo/core/routing/routes.dart';
import 'package:cajoo/core/theming/colors.dart';
import 'package:cajoo/feature/forget_password/data/models/verify_reset_code_response.dart';
import 'package:cajoo/feature/forget_password/logic/verify_reset_code/cubit/verify_reset_code_cubit.dart';
import 'package:cajoo/feature/forget_password/logic/verify_reset_code/cubit/verify_reset_code_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VerifyResetPasswordBlocListener extends StatelessWidget {
  const VerifyResetPasswordBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<VerifyResetCodeCubit, VerifyResetCodeState>(
      listenWhen: (previous, current) =>
          current is VerifyResetCodeLoading ||
          current is VerifyResetCodeSuccess,
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
          success: (message) {
            context.pop();
            showSuccessMessage(
                context,
                VerifyResetCodeResponse(
                  message: message,
                ));
            context.pushReplacementNamed(Routes.resetpassword);
          },
          // error: (apiError) {
          //   context.pop();
          //   setupErrorState(
          //       context,
          //       ApiErrorModel(
          //         message: apiError,
          //         errorsType: [],
          //       ));
          // },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void showSuccessMessage(BuildContext context, VerifyResetCodeResponse model) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(model.message)),
    );
  }

  // void setupErrorState(BuildContext context, ApiErrorModel apiErrorModel) {}
}
