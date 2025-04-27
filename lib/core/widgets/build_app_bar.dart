import 'package:cajoo/core/theming/colors.dart';
import 'package:cajoo/core/utils/assets.dart';
import 'package:flutter/material.dart';

buildAppBar() {
  return AppBar(
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
    backgroundColor: AppColor.primaryColor,
    title: Center(child: Image.asset(Assets.imagesCAJO)),
  );
}
