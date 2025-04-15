import 'package:cajoo/core/helpers/app_regex.dart';
import 'package:cajoo/core/widgets/custom_text_form_field.dart';
import 'package:cajoo/feature/forget_password/logic/reset_password/cubit/reset_password_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResstPasswordForm extends StatefulWidget {
  const ResstPasswordForm({super.key});

  @override
  State<ResstPasswordForm> createState() => _ResstPasswordFormState();
}

class _ResstPasswordFormState extends State<ResstPasswordForm> {
  bool isObscureText = true;
  @override
  Widget build(BuildContext context) {
    final resetPasswordCubit = context.read<ResetPasswordCubit>();
    return Form(
      key: resetPasswordCubit.formKey,
      child: Column(
        children: [
          CustomTextFormFeild(
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return 'Please enter a valid email';
              }
              return null;
            },
            controller: resetPasswordCubit.emailController,
            hintText: 'Email',
          ),
          const SizedBox(height: 16),
          CustomTextFormFeild(
            controller: resetPasswordCubit.newPasswordController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid new password';
              }
              return null;
            },
            hintText: 'New Password',
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isObscureText = !isObscureText;
                });
              },
              child: Icon(isObscureText
                  ? Icons.visibility_off_outlined
                  : Icons.visibility_outlined),
            ),
            isObscureText: isObscureText,
          ),
          const SizedBox(height: 16),
          CustomTextFormFeild(
            controller: resetPasswordCubit.confermPasswordController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid password';
              }
              return null;
            },
            hintText: 'Confirm Password',
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isObscureText = !isObscureText;
                });
              },
              child: Icon(isObscureText
                  ? Icons.visibility_off_outlined
                  : Icons.visibility_outlined),
            ),
            isObscureText: isObscureText,
          ),
        ],
      ),
    );
  }
}
