import 'package:cajoo/core/theming/styles.dart';
import 'package:cajoo/core/widgets/custom_buttom.dart';
import 'package:cajoo/feature/forget_password/data/models/verify_reset_code_request_model.dart';
import 'package:cajoo/feature/forget_password/logic/verify_reset_code/cubit/verify_reset_code_cubit.dart';
import 'package:cajoo/feature/forget_password/presentation/widgets/custom_code_widget.dart';
import 'package:cajoo/feature/forget_password/presentation/widgets/resend_otp_widget.dart';
import 'package:cajoo/feature/forget_password/presentation/widgets/verify_reset_password_bloc_listener.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EnterOtpview extends StatelessWidget {
  EnterOtpview({super.key});
  final TextEditingController otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFFFFFFF),
        appBar: AppBar(
          backgroundColor: const Color(0xFFFFFFFF),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Enter OTP',
                style: TextStyles.font32Weight600,
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Text(
                  'Enter the OTP code we just sentyou on your registered Email',
                  style: TextStyles.font14Weight400,
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              CustomCodeWidget(
                otpController: otpController,
              ),
              const SizedBox(
                height: 51,
              ),
              CustomButtom(
                onTap: () {
                  ThenDoSubmit(context, otpController);
                },
                text: 'Verify',
              ),
              const SizedBox(
                height: 16,
              ),
              const ResendOtpWidget(),
              const VerifyResetPasswordBlocListener()
            ],
          ),
        ));
  }

  void ThenDoSubmit(BuildContext context, TextEditingController otpController) {
    final otp = otpController.text;
    if (otp.isNotEmpty && otp.length == 5) {
      final code = VerifyResetCodeRequestModel(resetCode: otp);
      context.read<VerifyResetCodeCubit>().verifyResetCode(code);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter a valid OTP')),
      );
    }
  }
}
