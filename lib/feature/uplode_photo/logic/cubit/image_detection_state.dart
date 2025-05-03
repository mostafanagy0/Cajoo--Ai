import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cajoo/feature/uplode_photo/data/models/image_detection_response_model.dart';

part 'image_detection_state.freezed.dart';

@freezed
class ImageDetectionState with _$ImageDetectionState {
  const factory ImageDetectionState.initial() = _ImageDetectionInitial;
  const factory ImageDetectionState.loading() = ImageDetectionLoading;
  const factory ImageDetectionState.success(ImageDetectionResponseModel response) = ImageDetectionSuccess;
  const factory ImageDetectionState.failure(String message) = ImageDetectionFailure;
}
