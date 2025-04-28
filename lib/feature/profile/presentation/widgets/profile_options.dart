import 'package:cajoo/core/helpers/extention.dart';
import 'package:cajoo/core/routing/routes.dart';
import 'package:cajoo/core/utils/assets.dart';
import 'package:cajoo/feature/profile/presentation/widgets/custom_profile_option.dart';
import 'package:cajoo/feature/profile/presentation/widgets/logout_bloc_provider.dart';
import 'package:cajoo/generated/l10n.dart';
import 'package:flutter/material.dart';

class ProfileOptions extends StatelessWidget {
  const ProfileOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomProfileOption(
          icon: Assets.imagesEditeoutline,
          title: S.of(context).EditProfile,
          onTap: () {
            context.pushNamed(Routes.editeprofile);
          },
        ),
        const SizedBox(
          height: 12,
        ),
        CustomProfileOption(
          icon: Assets.imagesIcBaselineHistory,
          title: S.of(context).History,
          onTap: () {
            context.pushNamed(Routes.history);
          },
        ),
        const SizedBox(
          height: 12,
        ),
        CustomProfileOption(
          icon: Assets.imagesHelpOutline,
          title: S.of(context).Helpsupport,
          onTap: () {
            context.pushNamed(Routes.helpandsupport);
          },
        ),
        const SizedBox(
          height: 12,
        ),
        const LogoutBlocProvider(),
        const SizedBox(
          height: 12,
        ),
      ],
    );
  }
}
