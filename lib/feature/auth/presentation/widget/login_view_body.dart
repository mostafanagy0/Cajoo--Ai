import 'package:cajoo/core/helpers/extention.dart';
import 'package:cajoo/core/routing/routes.dart';
import 'package:cajoo/core/theming/styles.dart';
import 'package:cajoo/core/widgets/custom_buttom.dart';
import 'package:cajoo/core/widgets/custom_text_form_field.dart';
import 'package:cajoo/feature/auth/presentation/widget/forget_password_widget.dart';
import 'package:cajoo/feature/auth/presentation/widget/have_account_widget.dart';
import 'package:flutter/material.dart';

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
              'Login',
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
                  const SizedBox(height: 50),
                  const CustomTextFormFeild(
                    hintText: 'Email',
                  ),
                  const SizedBox(height: 16),
                  const CustomTextFormFeild(
                    hintText: 'Password',
                  ),
                  const SizedBox(height: 8),
                  const ForgetPasswordWidget(),
                  const SizedBox(height: 8),
                  const SizedBox(height: 100),
                  const CustomButtom(
                    text: 'Login',
                  ),
                  const SizedBox(height: 12),
                  HaveAccountWidget(
                    textOne: 'Don’t have account? ',
                    textTwo: 'Sign Up',
                    onTap: () {
                      context.pushNamed(Routes.signUpView);
                    },
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
