import 'package:cajoo/core/errors/server_failure.dart';
import 'package:cajoo/core/helpers/extention.dart';
import 'package:cajoo/core/theming/colors.dart';
import 'package:cajoo/feature/forget_password/logic/forget_password_cubit/forget_password_state.dart';
import 'package:cajoo/feature/forget_password/logic/forget_password_cubit/forgetpassword_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/styles.dart';

class ForgetPasswordBlocListener extends StatelessWidget {
  const ForgetPasswordBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ForgetpasswordCubit, ForgetPasswordState>(
      listenWhen: (previous, current) =>
          current is ForgetLoading ||
          current is ForgetSuccess ||
          current is ForgetError,
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
        }, success: (sendpassword) {
          context.pop();
          showSuccessDialog(context);
        }, error: (serverFailure) {
          setupErrorState(context, serverFailure);
        });
      },
      child: const SizedBox.shrink(),
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
            child: const Text(
              'Got it',
              // style: TextStyles.font14BlueSemiBold,
            ),
          ),
        ],
      ),
    );
  }

  void showSuccessDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('code sent to your email'),
          content: const SingleChildScrollView(),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: AppColor.primaryColor,
                disabledForegroundColor: Colors.grey.withOpacity(0.38),
              ),
              onPressed: () {
                context.pushNamed(Routes.enterOtp);
              },
              child: const Text('Continue'),
            ),
          ],
        );
      },
    );
  }
}
