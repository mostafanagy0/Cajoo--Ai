import 'package:cajoo/core/di/dependancy_ingection.dart';
import 'package:cajoo/core/helpers/extention.dart';
import 'package:cajoo/core/routing/routes.dart';
import 'package:cajoo/core/widgets/build_app_bar.dart';
import 'package:cajoo/feature/uplode_photo/logic/cubit/image_detection_cubit.dart';
import 'package:cajoo/feature/uplode_photo/presentation/widgets/custom_segmented_tab_bar.dart';
import 'package:cajoo/feature/uplode_photo/presentation/widgets/image_uploade_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UploadPhotoView extends StatelessWidget {
  const UploadPhotoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        onBack: () => context.pushNamed(Routes.mainView),
      ),
      backgroundColor: Colors.white,
      body: Builder(builder: (context) {
        return BlocProvider(
          create: (context) => getIt<ImageDetectionCubit>(),
          child: const Column(
            children: [
              ImageUploadWidget(),
              SizedBox(height: 60),
              Expanded(child: CustomSegmentedTab()),
            ],
          ),
        );
      }),
    );
  }
}
