import 'package:cajoo/core/theming/colors.dart';
import 'package:flutter/material.dart';

class CustomTextFormFeild extends StatelessWidget {
  const CustomTextFormFeild(
      {super.key,
      required this.hintText,
      this.onChanged,
      this.onFieldSubmitted});
  final String hintText;
  final Function(String)? onChanged;
  final Function(String)? onFieldSubmitted;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return " This Field is required";
        } else {
          return null;
        }
      },
      onChanged: onChanged,
      onFieldSubmitted: onFieldSubmitted,
      decoration: InputDecoration(
        fillColor: const Color(0xfff5f9fe),
        filled: true,
        hintText: hintText,

        // labelStyle: TextStyles.poppins500style18,
        border: getBorderStyle(),
        focusedBorder: getBorderStyle(),
        enabledBorder: getBorderStyle(),
      ),
    );
  }
}

OutlineInputBorder getBorderStyle() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(14),
    borderSide: const BorderSide(color: AppColor.primaryColor),
  );
}
