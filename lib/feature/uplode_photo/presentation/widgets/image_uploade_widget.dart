import 'dart:io';

import 'package:cajoo/core/theming/styles.dart';
import 'package:cajoo/core/utils/assets.dart';
import 'package:cajoo/feature/uplode_photo/logic/cubit/image_detection_cubit.dart';
import 'package:cajoo/feature/uplode_photo/logic/cubit/image_detection_state.dart';
import 'package:cajoo/feature/uplode_photo/presentation/widgets/accuracy_widget.dart';
import 'package:cajoo/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:skeletonizer/skeletonizer.dart';

import 'image_with_bound_box.dart';

class ImageUploadWidget extends StatefulWidget {
  const ImageUploadWidget({super.key});

  @override
  State<ImageUploadWidget> createState() => _ImageUploadWidgetState();
}

class _ImageUploadWidgetState extends State<ImageUploadWidget> {
  File? imageFile;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ImageDetectionCubit, ImageDetectionState>(
      listener: (context, state) {
        state.when(
          initial: () {},
          loading: () {},
          success: (response) {},
          failure: (message) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(message)),
            );
          },
        );
      },
      builder: (context, state) {
        return Column(
          children: [
            const SizedBox(height: 16),
            Center(
              child: Skeletonizer(
                enabled: state is ImageDetectionLoading,
                child: GestureDetector(
                  onTap: () async {
                    final picker = ImagePicker();
                    final image =
                        await picker.pickImage(source: ImageSource.gallery);
                    if (image != null &&
                        (image.path.endsWith('.jpg') ||
                            image.path.endsWith('.jpeg') ||
                            image.path.endsWith('.png'))) {
                      var imageFile = File(image.path);
                      if (await imageFile.exists() &&
                          await imageFile.length() > 0) {
                        setState(() => this.imageFile = imageFile);
                        context
                            .read<ImageDetectionCubit>()
                            .detectImage(imageFile);
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text("Please select a valid image")),
                        );
                      }
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content:
                                Text("Only JPG or PNG images are supported")),
                      );
                    }
                  },
                  child: Container(
                    width: 345,
                    height: 215,
                    decoration: const BoxDecoration(
                      color: Color(0xFFF4F2F7),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      boxShadow: [
                        BoxShadow(color: Colors.black12, blurRadius: 4),
                      ],
                    ),
                    child: imageFile != null
                        ? ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                            child: state is ImageDetectionSuccess
                                ? ImageWithBoundingBox(
                                    response: state.response,
                                  )
                                : Image.file(
                                    imageFile!,
                                    fit: BoxFit.cover,
                                    width: double.infinity,
                                    height: double.infinity,
                                  ),
                          )
                        : Center(
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  S.of(context).UploadPhoto,
                                  style: TextStyles.font24Weight700Bold,
                                ),
                                const SizedBox(width: 20),
                                SvgPicture.asset(Assets.imagesCloud),
                              ],
                            ),
                          ),
                  ),
                ),
              ),
            ),
            Container(
              width: 345,
              height: 55,
              decoration: const BoxDecoration(
                color: Color(0xFFECEBEF),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black12,
                      blurRadius: 4,
                      offset: Offset(0, 2)),
                ],
              ),
              child: state is ImageDetectionSuccess
                  ? AccuracyWidget(
                      detections: state.response.data.detection.detections)
                  : const AccuracyWidget(),
            ),
          ],
        );
      },
    );
  }
}
