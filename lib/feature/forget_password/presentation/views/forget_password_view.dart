import 'package:cajoo/core/helpers/app_regex.dart';
import 'package:cajoo/core/theming/styles.dart';
import 'package:cajoo/core/widgets/custom_buttom.dart';
import 'package:cajoo/core/widgets/custom_text_form_field.dart';
import 'package:cajoo/feature/forget_password/logic/forget_password_cubit/forgetpassword_cubit.dart';
import 'package:cajoo/feature/forget_password/presentation/widgets/forget_password_bloc_listener.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    final forgetPasswordCubit = context.read<ForgetpasswordCubit>();
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFFFFF),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Form(
          key: forgetPasswordCubit.formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 36,
              ),
              Text(
                'Forger password',
                style: TextStyles.font32Weight600,
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Center(
                  child: Text(
                    'Enter your email address so that the new password can be sent to it.',
                    style: TextStyles.font14Weight400,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(
                height: 28,
              ),
              CustomTextFormFeild(
                hintText: 'Email',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  if (!AppRegex.isEmailValid(value)) {
                    return 'Please enter a valid email';
                  }
                },
                controller: forgetPasswordCubit.emailController,
              ),
              const SizedBox(
                height: 40,
              ),
              CustomButtom(
                text: 'Submit',
                onTap: () {
                  validateThenDoSubmit(context);
                },
              ),
              const ForgetPasswordBlocListener()
            ],
          ),
        ),
      ),
    );
  }

  void validateThenDoSubmit(BuildContext context) {
    if (context.read<ForgetpasswordCubit>().formKey.currentState!.validate()) {
      context.read<ForgetpasswordCubit>().sendForgetPasswordEmail();
    }
  }
}
