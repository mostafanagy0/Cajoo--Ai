import 'package:cajoo/core/theming/styles.dart';
import 'package:cajoo/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UpLodePhotoWidget extends StatelessWidget {
  const UpLodePhotoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 230,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Container(
          width: 330,
          height: 270,
          decoration: BoxDecoration(
            color: const Color(0xFFF4F2F7),
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                // color: Colors.grey.shade300,
                blurRadius: 10,
                offset: Offset(0, 2),
              )
            ],
          ),
          child: Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Upload Photo", style: TextStyles.font24Weight700Bold),
                const SizedBox(
                  width: 20,
                ),
                SvgPicture.asset(Assets.imagesCloud),
                const SizedBox(height: 8),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
