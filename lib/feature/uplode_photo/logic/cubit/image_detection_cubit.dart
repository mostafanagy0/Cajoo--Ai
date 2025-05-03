import 'dart:io';

import 'package:cajoo/feature/uplode_photo/data/repos/uploade_image_repo_impl.dart';
import 'package:cajoo/feature/uplode_photo/logic/cubit/image_detection_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ImageDetectionCubit extends Cubit<ImageDetectionState> {
  final UploadImageRepoImpl uploadImageRepoImpl;

  ImageDetectionCubit(this.uploadImageRepoImpl)
      : super(const ImageDetectionState.initial());

  Future<void> detectImage(File image) async {
    try {
      emit(const ImageDetectionState.loading());
      print(
          "Sending image: ${image.path}, Size: ${await image.length()} bytes");
      final failureOrSuccess = await uploadImageRepoImpl.imageDetection(image);
      failureOrSuccess.fold(
        (failure) {
          print("Image detection failed: ${failure.message}");
          emit(ImageDetectionState.failure(failure.message));
        },
        (response) {
          print("Image detection success: ${response.toJson()}");
          emit(ImageDetectionState.success(response));
        },
      );
    } catch (e) {
      print("Unexpected error during image detection: $e");
      emit(ImageDetectionState.failure('خطأ غير متوقع: $e'));
    }
  }
}
