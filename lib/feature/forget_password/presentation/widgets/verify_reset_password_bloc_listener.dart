import 'package:cajoo/core/helpers/extention.dart';
import 'package:cajoo/core/networking/api_error_model.dart';
import 'package:cajoo/core/theming/colors.dart';
import 'package:cajoo/core/theming/styles.dart';
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
          current is VerifyResetCodeSuccess ||
          current is VerifyResetCodeError,
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
            showSuccessDialog(
                context,
                VerifyResetCodeResponse(
                  message: message,
                ));
          },
          error: (apiError) {
            setupErrorState(
                context,
                ApiErrorModel(
                  message: apiError,
                  errorsType: [],
                ));
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void showSuccessDialog(BuildContext context, VerifyResetCodeResponse model) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(
          Icons.check_circle,
          color: Colors.green,
          size: 32,
        ),
        content: Text(
          model.message,
          style: TextStyles.font14Weight400,
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  void setupErrorState(BuildContext context, ApiErrorModel apiErrorModel) {}
}
