import 'package:cajoo/core/theming/styles.dart';
import 'package:cajoo/feature/profile/presentation/widgets/build_arow_box.dart';
import 'package:flutter/material.dart';

class CustomProfileOption extends StatelessWidget {
  const CustomProfileOption({
    super.key,
    required this.icon,
    required this.title,
    this.trailingText,
    required this.onTap,
  });
  final String icon;
  final String title;
  final String? trailingText;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      color: Colors.white,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        leading: Image.asset(icon),
        title: Text(
          title,
          style:
              TextStyles.font14Weight400.copyWith(fontWeight: FontWeight.w500),
        ),
        trailing: buildArrowBox(),
        onTap: onTap,
      ),
    );
  }
}
