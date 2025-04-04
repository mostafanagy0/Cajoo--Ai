import 'package:cajoo/core/helpers/app_regex.dart';
import 'package:cajoo/core/widgets/custom_text_form_field.dart';
import 'package:cajoo/feature/login/logic/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool isObscureText = true;
  @override
  Widget build(BuildContext context) {
    //to dont rebuild cubit

    final loginCubit = context.read<LoginCubit>();
    return Form(
      key: loginCubit.formKey,
      child: Column(
        children: [
          const SizedBox(height: 50),
          CustomTextFormFeild(
            controller: loginCubit.emailController,
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return 'Please enter a valid email';
              }
              return null;
            },
            hintText: 'Email',
          ),
          const SizedBox(height: 16),
          CustomTextFormFeild(
            controller: loginCubit.passwordController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid password';
              }
              return null;
            },
            isObscureText: isObscureText,
            hintText: 'Password',
            suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    isObscureText = !isObscureText;
                  });
                },
                child: Icon(isObscureText
                    ? Icons.visibility_off_outlined
                    : Icons.visibility_outlined)),
          ),
        ],
      ),
    );
  }
}
