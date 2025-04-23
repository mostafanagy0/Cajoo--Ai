import 'package:cajoo/core/theming/styles.dart';
import 'package:flutter/material.dart';

class HelloWidget extends StatelessWidget {
  const HelloWidget({
    super.key,
    required this.userName,
  });

  final String userName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 100,
          ),
          Text(
            'Hello,',
            style: TextStyles.font20Weight400
                .copyWith(color: const Color(0xFFD0D6E2)),
          ),
          Text(
            userName,
            style: TextStyles.font20Weight400
                .copyWith(color: const Color(0xFFD0D6E2)),
          ),
        ],
      ),
    );
  }
}
