import 'package:cajoo/core/theming/styles.dart';
import 'package:cajoo/core/utils/assets.dart';
import 'package:cajoo/feature/profile/presentation/widgets/custom_profile_option.dart';
import 'package:cajoo/feature/profile/presentation/widgets/image_and_name_profile.dart';
import 'package:cajoo/feature/profile/presentation/widgets/langage_botton.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFFFFFFF),
        appBar: AppBar(
            backgroundColor: const Color(0xFFFFFFFF),
            automaticallyImplyLeading: false,
            title: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'My Profile',
                style: TextStyles.font32Weight600.copyWith(fontSize: 18),
              ),
            )),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const ImageAndNameProfile(),
              const SizedBox(
                height: 8,
              ),
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
                onTap: () {},
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
          ),
        ));
  }
}
