import 'package:cajoo/core/helpers/extention.dart';
import 'package:cajoo/core/theming/colors.dart';
import 'package:cajoo/core/theming/styles.dart';
import 'package:cajoo/core/utils/assets.dart';
import 'package:cajoo/core/widgets/build_app_bar.dart';
import 'package:cajoo/feature/history/presentation/widgets/history_item.dart';
import 'package:cajoo/generated/l10n.dart';
import 'package:cajoo/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HistoryView extends StatelessWidget {
  const HistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(onBack: context.pop),
      body: Padding(
        padding: EdgeInsets.only(
            right: isArabic() ? 0 : 24, left: isArabic() ? 24 : 0),
        child: Column(
          children: [
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Text(
                    S.of(context).History,
                    style: TextStyles.font20Weight400
                        .copyWith(fontWeight: FontWeight.w700),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Text(S.of(context).Recent,
                          style: TextStyles.font16Weight500.copyWith(
                              fontSize: 12, color: AppColor.primaryColor)),
                      const SizedBox(
                        width: 4,
                      ),
                      SvgPicture.asset(Assets.imagesArow)
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return const HistoryItem();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
