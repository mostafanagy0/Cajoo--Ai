import 'package:cajoo/core/helpers/app_regex.dart';
import 'package:cajoo/core/widgets/custom_text_form_field.dart';
import 'package:cajoo/feature/signup/logic/cubit/signup_cubit.dart';
import 'package:cajoo/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  bool isObscureText = true;
  @override
  Widget build(BuildContext context) {
    final signupCubit = context.read<SignupCubit>();
    return Form(
      key: signupCubit.formKey,
      child: Column(
        children: [
          const SizedBox(height: 50),
          CustomTextFormFeild(
            controller: signupCubit.usernameController,
            validator: (valu) {
              if (valu == null || valu.isEmpty) {
                return S.of(context).Pleaseenteravalidusername;
              }
              return null;
            },
            hintText: S.of(context).Name,
          ),
          const SizedBox(height: 16),
          CustomTextFormFeild(
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return S.of(context).Pleaseenteravalidemail;
              }
              return null;
            },
            controller: signupCubit.emailController,
            hintText: S.of(context).Email,
          ),
          const SizedBox(height: 16),
          CustomTextFormFeild(
            controller: signupCubit.passwordController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return S.of(context).Pleaseenteravalidpassword;
              }
              return null;
            },
            hintText: S.of(context).Password,
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
            controller: signupCubit.confirmPasswordController,
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isPasswordValid(value)) {
                return S.of(context).Pleaseenteravalidpassword;
              }
              return null;
            },
            hintText: S.of(context).ConfirmPassword,
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
