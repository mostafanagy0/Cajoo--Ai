import 'package:cajoo/core/helpers/extention.dart';
import 'package:cajoo/core/theming/styles.dart';
import 'package:cajoo/core/widgets/build_app_bar.dart';
import 'package:cajoo/generated/l10n.dart';
import 'package:flutter/material.dart';

class HelpAndSupportView extends StatelessWidget {
  const HelpAndSupportView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(onBack: context.pop),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),
            Text(
              S.of(context).Helpsupport,
              style: TextStyles.font24Weight700Bold.copyWith(fontSize: 20),
            ),
            const SizedBox(
              height: 36.5,
            ),
            Text(
              S.of(context).supportDescription,
              style: TextStyles.font14Weight400,
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              'cagosupport@gmail.com',
              style: TextStyle(
                decoration: TextDecoration.underline,
              ),
            )
          ],
        ),
      ),
    );
  }
}
