import 'package:cajoo/core/utils/assets.dart';

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

List<OnbordingEntity> onbordingData = [
  OnbordingEntity(
    title: 'Fast & Smart Diagnosis',
    description:
        'Snap a photo of your cashew plant, and let AI instantly detect the problem.',
    image: Assets.imagesOnbording1,
  ),
  OnbordingEntity(
    title: 'KNOW THE DISEASE & Fix It',
    description:
        'Get the disease name, causes, and the best solution—all in one tap.',
    image: Assets.imagesOnbording2,
  ),
  OnbordingEntity(
    title: 'Protect Your Farm with Ease',
    description:
        'Receive expert tips to keep your plants healthy and boost productivity.',
    image: Assets.imagesOnbording3,
  ),
];
