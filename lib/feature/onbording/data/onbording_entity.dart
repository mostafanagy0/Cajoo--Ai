import 'package:cajoo/core/utils/assets.dart';
import 'package:cajoo/generated/l10n.dart';
import 'package:flutter/material.dart';

class OnbordingEntity {
  final String title;
  final String description;
  final String image;

  OnbordingEntity({
    required this.title,
    required this.description,
    required this.image,
  });
}

List<OnbordingEntity> getOnbordingData(BuildContext context) => [
      OnbordingEntity(
        title: S.of(context).onbordingtitel1,
        description: S.of(context).onbordingdescription1,
        image: Assets.imagesOnbording1,
      ),
      OnbordingEntity(
        title: S.of(context).onbordingtitel2,
        description: S.of(context).onbordingdescription2,
        image: Assets.imagesOnbording2,
      ),
      OnbordingEntity(
        title: S.of(context).onbordingtitel3,
        description: S.of(context).onbordingdescription3,
        image: Assets.imagesOnbording3,
      ),
    ];
