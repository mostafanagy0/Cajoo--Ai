import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NavigationBarItem extends StatelessWidget {
  const NavigationBarItem({super.key, required this.image, required this.title});
  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(image),
        const SizedBox(
          height: 5,
        ),
        Text(
          title,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: Color(0xFF9882B9),
          ),
        ),
      ],
    );
  }
}

