import 'package:cajoo/core/theming/colors.dart';
import 'package:flutter/material.dart';

Widget buildArrowBox() {
  return Container(
    height: 40,
    width: 40,
    padding: const EdgeInsets.all(2),
    decoration: BoxDecoration(
      color: AppColor.primaryColor,
      border: Border.all(color: Colors.grey),
      borderRadius: BorderRadius.circular(6),
    ),
    child: const Icon(
      Icons.arrow_forward_ios,
      size: 12,
      color: Colors.white,
    ),
  );
}
