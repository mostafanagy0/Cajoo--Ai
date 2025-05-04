import 'package:cajoo/core/theming/colors.dart';
import 'package:cajoo/core/theming/styles.dart';
import 'package:cajoo/core/utils/assets.dart';
import 'package:cajoo/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HistoryHeadWidget extends StatelessWidget {
  const HistoryHeadWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          S.of(context).History,
          style:
              TextStyles.font20Weight400.copyWith(fontWeight: FontWeight.w700),
        ),
        const Spacer(),
        Row(
          children: [
            Text(S.of(context).Recent,
                style: TextStyles.font16Weight500
                    .copyWith(fontSize: 12, color: AppColor.primaryColor)),
            const SizedBox(
              width: 4,
            ),
            SvgPicture.asset(Assets.imagesArow)
          ],
        )
      ],
    );
  }
}
