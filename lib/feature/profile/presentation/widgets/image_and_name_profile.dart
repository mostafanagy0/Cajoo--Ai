import 'package:cajoo/core/helpers/shered_pref_helper_.dart';
import 'package:cajoo/core/theming/styles.dart';
import 'package:cajoo/core/utils/assets.dart';
import 'package:flutter/material.dart';

class ImageAndNameProfile extends StatefulWidget {
  const ImageAndNameProfile({
    super.key,
  });

  @override
  State<ImageAndNameProfile> createState() => _ImageAndNameProfileState();
}

class _ImageAndNameProfileState extends State<ImageAndNameProfile> {
  String userName = '';
  @override
  void initState() {
    getUserName();
    super.initState();
  }

  Future<void> getUserName() async {
    userName = await SharedPrefHelper.getString('username');
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: SizedBox(
            height: 96,
            width: 96,
            child: CircleAvatar(
              backgroundColor: const Color(0xFFFFFFFF),
              child: Image.asset(
                Assets.imagesOnbording1,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          userName,
          style: TextStyles.font32Weight600.copyWith(fontSize: 18),
        )
      ],
    );
  }
}
