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
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: AppColor.primaryColor,
                ),
              ),
            );
          },
          success: (loginResponse) {
            context.pop();
            context.pushReplacementNamed(Routes.mainView);
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
    context.pop(); // لإغلاق أي حوار مفتوح حاليًا
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(
          Icons.error,
          color: Colors.red,
          size: 32,
        ),
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // عرض رسالة الخطأ العامة
            Text(
              serverFailure.message,
              style: TextStyles.font16Weight400,
            ),
            const SizedBox(height: 16),

            // إذا كان هناك أخطاء إضافية (مثل الأخطاء الخاصة بكل حقل)
            if (serverFailure.errors != null &&
                serverFailure.errors!.isNotEmpty)
              ...serverFailure.errors!.map((error) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    "${error.path}: ${error.msg}",
                    style:
                        TextStyles.font14Weight400.copyWith(color: Colors.red),
                  ),
                );
              }),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.pop(); // إغلاق الحوار عند الضغط على "Got it"
            },
            child: const Text('Got it'),
          ),
        ],
      ),
    );
  }
}
