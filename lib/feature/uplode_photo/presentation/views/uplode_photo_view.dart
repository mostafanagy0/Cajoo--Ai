import 'package:cajoo/core/helpers/extention.dart';
import 'package:cajoo/core/routing/routes.dart';
import 'package:cajoo/core/widgets/build_app_bar.dart';
import 'package:cajoo/feature/uplode_photo/presentation/widgets/custom_segmented_tab_bar.dart';
import 'package:cajoo/feature/uplode_photo/presentation/widgets/image_uploade_widget.dart';
import 'package:flutter/material.dart';

class UplodePhotoView extends StatefulWidget {
  const UplodePhotoView({super.key});

  @override
  State<UplodePhotoView> createState() => _UplodePhotoViewState();
}

class _UplodePhotoViewState extends State<UplodePhotoView>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        onBack: () {
          context.pushNamed(Routes.mainView);
        },
      ),
      backgroundColor: Colors.white,
      body: const Column(
        children: [
          ImageUploadWidget(),
          SizedBox(height: 60),
          Expanded(child: CustomSegmentedTab()),
        ],
      ),
    );
  }
}
