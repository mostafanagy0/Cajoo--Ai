import 'package:json_annotation/json_annotation.dart';

part 'image_detection_request_model.g.dart';

@JsonSerializable()
class ImageDetectionRequestModel {
  final String image;

  ImageDetectionRequestModel({required this.image});

  Map<String, dynamic> toJson() => _$ImageDetectionRequestModelToJson(this);
}
