import 'dart:io';

import 'package:cajoo/core/theming/colors.dart';
import 'package:cajoo/core/theming/styles.dart';
import 'package:cajoo/core/utils/assets.dart';
import 'package:cajoo/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ImageUploadWidget extends StatefulWidget {
  const ImageUploadWidget({super.key});

  @override
  State<ImageUploadWidget> createState() => _ImageUploadWidgetState();
}

class _ImageUploadWidgetState extends State<ImageUploadWidget> {
  File? imageFile;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 16),
        Center(
          child: Skeletonizer(
            enabled: isLoading,
            child: GestureDetector(
              onTap: () async {
                final ImagePicker picker = ImagePicker();
                try {
                  isLoading = true;
                  setState(() {});
                  final XFile? image =
                      await picker.pickImage(source: ImageSource.gallery);
                  isLoading = false;
                  setState(() {});
                  if (image != null) {
                    imageFile = File(image.path);
                  }
                } catch (e) {
                  // Handle error or show message
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
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 4,
                    ),
                  ],
                ),
                child: imageFile != null
                    ? ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                        child: Image.file(
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
                            Text(S.of(context).UploadPhoto,
                                style: TextStyles.font24Weight700Bold),
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
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Text(
                  'Anthracnose',
                  style: TextStyles.font16Weight400.copyWith(
                    fontWeight: FontWeight.w700,
                    color: AppColor.primaryColor,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Text(
                  ' ${S.of(context).AIAccuracy} 90%',
                  style: TextStyles.font14Weight400.copyWith(
                    fontSize: 12,
                    color: const Color(0xFF008000),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
