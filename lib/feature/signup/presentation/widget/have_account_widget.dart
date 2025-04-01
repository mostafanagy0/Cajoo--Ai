import 'package:cajoo/core/theming/styles.dart';
import 'package:flutter/material.dart';

class HaveAccountWidget extends StatelessWidget {
  const HaveAccountWidget(
      {super.key,
      required this.textOne,
      required this.textTwo,
      required this.onTap});
  final String textOne;
  final String textTwo;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(
        textOne,
        style:
            TextStyles.font14Weight400.copyWith(color: const Color(0xFF3B4054)),
      ),
      GestureDetector(
        onTap: onTap,
        child: Text(
          textTwo,
          style: TextStyles.font14Weight400.copyWith(
            color: const Color(0xff7f1f4c),
            decoration: TextDecoration.underline,
          ),
        ),
      ),
    ]);
  }
}
