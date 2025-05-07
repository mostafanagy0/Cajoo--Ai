import 'package:cajoo/core/errors/server_failure.dart';
import 'package:cajoo/core/helpers/extention.dart';
import 'package:cajoo/core/theming/colors.dart';
import 'package:cajoo/feature/login/logic/cubit/login_cubit.dart';
import 'package:cajoo/feature/login/logic/cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/styles.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(
              context: context,
              barrierDismissible: false, // منع إغلاق الـ dialog بالضغط خارجها
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: AppColor.primaryColor,
                ),
              ),
            );
          },
          success: (loginResponse) {
            context.pop();
            Navigator.pushNamedAndRemoveUntil(
              context,
              Routes.mainView,
              (route) => false,
            );
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
      SnackBar(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              serverFailure.message,
              style: TextStyles.font16Weight400.copyWith(color: Colors.white),
            ),
            const SizedBox(height: 8),
            if (serverFailure.errors != null &&
                serverFailure.errors!.isNotEmpty)
              ...serverFailure.errors!.map((error) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 4.0),
                  child: Text(
                    "${error.path}: ${error.msg}",
                    style: TextStyles.font14Weight400
                        .copyWith(color: Colors.white),
                  ),
                );
              }),
          ],
        ),
      ),
    );
  }
}
