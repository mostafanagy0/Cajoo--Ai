import 'package:cajoo/core/theming/colors.dart';
import 'package:cajoo/core/theming/styles.dart';
import 'package:flutter/material.dart';

class ResendOtpWidget extends StatelessWidget {
  const ResendOtpWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: 'Didn’t get OTP?',
        style: TextStyles.font16Weight400.copyWith(color: Colors.black),
        children: [
          TextSpan( 
            text: ' Resend OTP',
            style: TextStyles.font16Weight400.copyWith(
                color: AppColor.primaryColor,
                decoration: TextDecoration.underline),
          ),
        ],
      ),
    );
  }
}
