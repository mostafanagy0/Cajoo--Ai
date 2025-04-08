import 'package:cajoo/core/theming/colors.dart';
import 'package:cajoo/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class CustomCodeWidget extends StatefulWidget {
  const CustomCodeWidget({super.key, required this.otpController});
  final TextEditingController? otpController;

  @override
  State<CustomCodeWidget> createState() => _CustomCodeWidgetState();
}

class _CustomCodeWidgetState extends State<CustomCodeWidget> {
  late final TextEditingController _otpController;
  @override
  void initState() {
    _otpController = widget.otpController ?? TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    if (widget.otpController == null) _otpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      controller: _otpController,
      cursorColor: AppColor.primaryColor,
      textStyle: TextStyles.font32Weight600,
      animationType: AnimationType.fade,
      appContext: context,
      length: 5,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      keyboardType: TextInputType.number,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(12),
        fieldHeight: 70,
        fieldWidth: 56,
        activeFillColor: Colors.white,
        selectedFillColor: const Color(0xFFEAEFF5),
        inactiveFillColor: const Color(0xFFEAEFF5),
        activeColor: const Color(0xFFEAEFF5),
        selectedColor: const Color(0xFFEAEFF5),
        inactiveColor: const Color(0xFFEAEFF5),
      ),
      enableActiveFill: true,
    );
  }
}
