import 'package:cajoo/core/theming/colors.dart';
import 'package:cajoo/feature/signup/presentation/widget/signup_view_body.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: SignupViewBody(),
    );
  }
}
