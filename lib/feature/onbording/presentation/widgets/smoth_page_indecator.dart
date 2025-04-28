import 'package:cajoo/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SmothPageIndicator extends StatelessWidget {
  const SmothPageIndicator({
    super.key,
    required this.controller,
  });

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
        effect: const SlideEffect(
            spacing: 8.0,
            radius: 4.0,
            dotWidth: 32,
            dotHeight: 4.0,
            paintStyle: PaintingStyle.stroke,
            strokeWidth: 1.5,
            activeDotColor: AppColor.primaryColor),
        controller: controller,
        count: 3);
  }
}
