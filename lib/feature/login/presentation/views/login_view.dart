import 'package:cajoo/core/theming/colors.dart';
import 'package:cajoo/feature/login/presentation/widgets/login_view_body.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.primaryColor,
        body: LoginViewBody(),
      ),
    );
  }
}
