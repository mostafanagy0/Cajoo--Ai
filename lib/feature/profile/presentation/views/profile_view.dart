import 'package:cajoo/core/theming/styles.dart';
import 'package:cajoo/feature/profile/presentation/widgets/image_and_name_profile.dart';
import 'package:cajoo/feature/profile/presentation/widgets/language_option_widget.dart';
import 'package:cajoo/feature/profile/presentation/widgets/profile_options.dart';
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
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
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
        ));
  }
}
