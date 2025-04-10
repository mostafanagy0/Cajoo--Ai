import 'package:cajoo/core/theming/styles.dart';
import 'package:cajoo/core/utils/assets.dart';
import 'package:flutter/material.dart';

class ImageAndNameProfile extends StatelessWidget {
  const ImageAndNameProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: SizedBox(
            height: 96,
            width: 96,
            child: CircleAvatar(
              backgroundColor: const Color(0xFFFFFFFF),
              child: Image.asset(
                Assets.imagesOnbording1,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          'Ahmed Mohamed',
          style: TextStyles.font32Weight600.copyWith(fontSize: 18),
        )
      ],
    );
  }
}
