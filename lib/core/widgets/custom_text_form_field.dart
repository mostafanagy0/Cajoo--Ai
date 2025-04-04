import 'package:cajoo/core/theming/colors.dart';
import 'package:cajoo/core/theming/styles.dart';
import 'package:flutter/material.dart';

class CustomTextFormFeild extends StatelessWidget {
  const CustomTextFormFeild({
    super.key,
    required this.hintText,
    this.onChanged,
    this.onFieldSubmitted,
    this.suffixIcon,
    this.isObscureText,
    required this.validator,
    required this.controller,
  });
  final String hintText;
  final Function(String)? onChanged;
  final Function(String)? onFieldSubmitted;
  final Widget? suffixIcon;
  final bool? isObscureText;
  final Function(String?) validator;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (value) {
        return validator(value);
      },
      onChanged: onChanged,
      onFieldSubmitted: onFieldSubmitted,
      obscureText: isObscureText ?? false,
      decoration: InputDecoration(
          fillColor: const Color(0xfff5f9fe),
          filled: true,
          hintText: hintText,
          suffixIcon: suffixIcon,
          hintStyle: TextStyles.font16Weight400,
          border: getBorderStyle(),
          focusedBorder: getBorderStyle(),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: const BorderSide(color: Colors.transparent),
          )),
    );
  }
}

OutlineInputBorder getBorderStyle() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(14),
    borderSide: const BorderSide(color: AppColor.primaryColor),
  );
}
