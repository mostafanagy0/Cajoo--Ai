import 'package:cajoo/core/helpers/extention.dart';
import 'package:cajoo/core/routing/routes.dart';
import 'package:cajoo/core/theming/styles.dart';
import 'package:cajoo/core/widgets/custom_buttom.dart';
import 'package:cajoo/feature/login/logic/cubit/login_cubit.dart';
import 'package:cajoo/feature/login/presentation/widgets/forget_password_widget.dart';
import 'package:cajoo/feature/login/presentation/widgets/login_bloc_listener.dart';
import 'package:cajoo/feature/login/presentation/widgets/login_form.dart.dart';
import 'package:cajoo/feature/signup/presentation/widget/have_account_widget.dart';
import 'package:cajoo/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 29.5,
          ),
          Center(
            child: Text(
              S.of(context).Login,
              style: TextStyles.font34Weight500Semibold,
            ),
          ),
          const SizedBox(
            height: 70,
          ),
          Container(
            height: 700,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(36),
                  topRight: Radius.circular(36),
                ),
                color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Column(
                children: [
                  const LoginForm(),
                  const SizedBox(height: 8),
                  const ForgetPasswordWidget(),
                  const SizedBox(height: 100),
                  CustomButtom(
                    onTap: () {
                      validateThenDoLogin(context);
                    },
                    text: S.of(context).Login,
                  ),
                  const SizedBox(height: 12),
                  HaveAccountWidget(
                    textOne: S.of(context).Donothaveaccount,
                    textTwo: S.of(context).SignUp,
                    onTap: () {
                      context.pushNamed(Routes.signUpView);
                    },
                  ),
                  const LoginBlocListener(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginState();
    }
  }
}
