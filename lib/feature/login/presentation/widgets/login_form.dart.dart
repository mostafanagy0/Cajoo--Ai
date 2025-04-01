import 'package:cajoo/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool isObscureText = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 50),
        const CustomTextFormFeild(
          hintText: 'Email',
        ),
        const SizedBox(height: 16),
        CustomTextFormFeild(
          isObscureText: isObscureText,
          hintText: 'Password',
          suffixIcon: GestureDetector(
              onTap: () {
                isObscureText = !isObscureText;
                setState(() {});
              },
              child: Icon(isObscureText
                  ? Icons.visibility_off_outlined
                  : Icons.visibility_outlined)),
        ),
      ],
    );
  }
}
