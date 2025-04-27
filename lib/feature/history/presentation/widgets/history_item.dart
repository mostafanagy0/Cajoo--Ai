import 'package:cajoo/core/theming/styles.dart';
import 'package:cajoo/core/utils/assets.dart';
import 'package:flutter/material.dart';

class HistoryItem extends StatelessWidget {
  const HistoryItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 82,
          width: 100,
          child: Image.asset(Assets.imagesImagetest),
        ),
        Expanded(
          child: SizedBox(
            width: 190,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Anthracnose',
                  style:
                      TextStyles.font16Weight400.copyWith(color: Colors.black),
                ),
                const Text(
                  'Lorem Ipsum is simply dummy text ',
                  style: TextStyle(fontSize: 12),
                )
              ],
            ),
          ),
        ),
        const Spacer(),
        const Text(
          '14/6/2002',
          style: TextStyle(
              color: Color(0xFF6C757D),
              fontSize: 12,
              fontWeight: FontWeight.w400),
        )
      ],
    );
  }
}
