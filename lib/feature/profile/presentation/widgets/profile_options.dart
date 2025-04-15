import 'package:cajoo/core/helpers/extention.dart';
import 'package:cajoo/core/routing/routes.dart';
import 'package:cajoo/core/utils/assets.dart';
import 'package:cajoo/feature/profile/presentation/widgets/custom_profile_option.dart';
import 'package:flutter/material.dart';

class ProfileOptions extends StatelessWidget {
  const ProfileOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomProfileOption(
          icon: Assets.imagesEditeoutline,
          title: 'Edit Profile',
          onTap: () {},
        ),
        const SizedBox(
          height: 12,
        ),
        CustomProfileOption(
          icon: Assets.imagesIcBaselineHistory,
          title: 'History',
          onTap: () {},
        ),
        const SizedBox(
          height: 12,
        ),
        CustomProfileOption(
          icon: Assets.imagesHelpOutline,
          title: 'Help & support',
          onTap: () {
            context.pushNamed(Routes.helpandsupport);
          },
        ),
        const SizedBox(
          height: 12,
        ),
        CustomProfileOption(
          icon: Assets.imagesLogoutOutline,
          title: 'Logout',
          onTap: () {},
        ),
        const SizedBox(
          height: 12,
        ),
      ],
    );
  }
}
