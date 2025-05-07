import 'package:cajoo/core/helpers/extention.dart';
import 'package:cajoo/core/routing/routes.dart';
import 'package:cajoo/core/theming/styles.dart';
import 'package:cajoo/core/widgets/custom_buttom.dart';
import 'package:cajoo/feature/signup/logic/cubit/signup_cubit.dart';
import 'package:cajoo/feature/signup/presentation/widget/have_account_widget.dart';
import 'package:cajoo/feature/signup/presentation/widget/signup_bloc_listener.dart';
import 'package:cajoo/feature/signup/presentation/widget/signup_form.dart';
import 'package:cajoo/feature/signup/presentation/widget/terms_and_conditions_widget.dart';
import 'package:cajoo/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupViewBody extends StatefulWidget {
  const SignupViewBody({super.key});

  @override
  State<SignupViewBody> createState() => _SignupViewBodyState();
}

class _SignupViewBodyState extends State<SignupViewBody> {
  bool isTermsAccepted = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 32),
          Center(
            child: Text(
              S.of(context).SignUp,
              style: TextStyles.font34Weight500Semibold,
            ),
          ),
          const SizedBox(height: 70),
          Container(
            height: 740,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(36),
                topRight: Radius.circular(36),
              ),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Column(
                children: [
                  const SignupForm(),
                  const SizedBox(height: 8),
                  TermsAndConditionsWidget(
                    onChecked: (value) {
                      setState(() {
                        isTermsAccepted = value;
                      });
                    },
                  ),
                  const SizedBox(height: 8),
                  const SizedBox(height: 100),
                  CustomButtom(
                    text: S.of(context).CreatAccount,
                    onTap: () {
                      validateThenDoSignup(context);
                    },
                  ),
                  const SizedBox(height: 12),
                  HaveAccountWidget(
                    textOne: S.of(context).Doyouhaveaccount,
                    textTwo: S.of(context).Login,
                    onTap: () {
                      context.pushNamed(Routes.loginView);
                    },
                  ),
                  const SignupBlocListener()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  void validateThenDoSignup(BuildContext context) {
    if (!isTermsAccepted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(S.of(context).ImagreetoTheTarms)),
      );
      return;
    }

    if (context.read<SignupCubit>().formKey.currentState!.validate()) {
      context.read<SignupCubit>().emitSignupstate();
    }
  }
}
