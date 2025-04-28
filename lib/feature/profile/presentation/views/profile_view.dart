import 'package:cajoo/core/theming/styles.dart';
import 'package:cajoo/feature/profile/presentation/widgets/image_and_name_profile.dart';
import 'package:cajoo/feature/profile/presentation/widgets/language_option_widget.dart';
import 'package:cajoo/feature/profile/presentation/widgets/profile_options.dart';
import 'package:cajoo/generated/l10n.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
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
                S.of(context).MyProfile,
                style: TextStyles.font32Weight600.copyWith(fontSize: 18),
              ),
            )),
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: SingleChildScrollView(
            child: Column(
              children: [
                ImageAndNameProfile(),
                SizedBox(
                  height: 8,
                ),
                ProfileOptions(),
                LanguageOptionWidget()
              ],
            ),
          ),
        ));
  }
}
