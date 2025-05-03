import 'package:cajoo/feature/home/presentation/views/home_view.dart';
import 'package:cajoo/feature/profile/presentation/views/profile_view.dart';
import 'package:cajoo/feature/uplode_photo/presentation/views/uplode_photo_view.dart';
import 'package:flutter/material.dart';

class MainViewBody extends StatelessWidget {
  const MainViewBody({super.key, required this.currentViewIndex});
  final int currentViewIndex;

  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      index: currentViewIndex,
      children: const [HomeView(), ProfileView(), UploadPhotoView()],
    );
  }
}
