import 'package:cajoo/core/theming/styles.dart';
import 'package:cajoo/generated/l10n.dart';
import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    super.key,
    required this.onTap,
  });
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Align(
          alignment: AlignmentDirectional.centerEnd,
          child: Text(
            S.of(context).Skip,
            style: TextStyles.font14Weight400,
          )),
    );
  }
}
