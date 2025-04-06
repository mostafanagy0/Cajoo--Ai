import 'package:cajoo/core/helpers/extention.dart';
import 'package:cajoo/core/routing/routes.dart';
import 'package:flutter/material.dart';

class ForgetPasswordWidget extends StatelessWidget {
  const ForgetPasswordWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(Routes.forgetPassword);
      },
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text('Forget Password?'),
        ],
      ),
    );
  }
}
