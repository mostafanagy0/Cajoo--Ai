import 'package:cajoo/core/di/dependancy_ingection.dart';
import 'package:cajoo/core/helpers/shered_pref_helper_.dart';
import 'package:cajoo/core/theming/colors.dart';
import 'package:cajoo/core/utils/assets.dart';
import 'package:cajoo/feature/home/presentation/widgets/hello_widget.dart';
import 'package:cajoo/feature/home/presentation/widgets/uplode_photo_widget.dart';
import 'package:cajoo/feature/profile/logic/get_Profile/get_profile_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
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
    return Scaffold(
        backgroundColor: const Color(0xFFFFFFFF),
        body: Stack(
          children: [
            Container(
              height: 375,
              color: AppColor.primaryColor.withOpacity(.7),
              child: Image.asset(
                Assets.imagesHomeimage2,
                fit: BoxFit.cover,
              ),
            ),
            BlocProvider(
              create: (context) => getIt<GetProfileCubit>()..getProfile(),
              child: const HelloWidget(),
            ),
            const UpLodePhotoWidget(),
          ],
        ));
  }
}
