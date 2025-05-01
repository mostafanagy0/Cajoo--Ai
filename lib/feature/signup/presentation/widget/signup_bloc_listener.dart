import 'package:cajoo/core/errors/server_failure.dart';
import 'package:cajoo/core/helpers/extention.dart';
import 'package:cajoo/core/routing/routes.dart';
import 'package:cajoo/feature/signup/logic/cubit/signup_cubit.dart';
import 'package:cajoo/feature/signup/logic/cubit/signup_state.dart';
import 'package:cajoo/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class SignupBlocListener extends StatelessWidget {
  const SignupBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignupCubit, SignupState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
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
          success: (signupResponse) {
            context.pop();
            showSuccessDialog(context);
            context.pushNamed(Routes.loginView);
          },
          error: (error) {
            setupErrorState(context, error);
            context.pop();
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void showSuccessDialog(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(S.of(context).youhavesignedupsuccessfully),
        duration: const Duration(seconds: 2),
        backgroundColor: AppColor.primaryColor,
      ),
    );
  }

  void setupErrorState(BuildContext context, ServerFailure serverFailure) {
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
          serverFailure.message,
          style: TextStyles.font16Weight400,
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: Text(
              S.of(context).Gotit,
              //style: TextStyles.font14BlueSemiBold,
            ),
          ),
        ],
      ),
    );
  }
}
