import 'package:json_annotation/json_annotation.dart';

part 'image_detection_response_model.g.dart';

@JsonSerializable()
class ImageDetectionResponseModel {
  final String status;
  final DetectionData data;

  ImageDetectionResponseModel({required this.status, required this.data});

  factory ImageDetectionResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ImageDetectionResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$ImageDetectionResponseModelToJson(this);
}

@JsonSerializable()
class DetectionData {
  @JsonKey(name: 'imageUrl')
  final String imageUrl;
  final DetectionResult detection;

  DetectionData({required this.imageUrl, required this.detection});

  factory DetectionData.fromJson(Map<String, dynamic> json) =>
      _$DetectionDataFromJson(json);

  Map<String, dynamic> toJson() => _$DetectionDataToJson(this);
}

@JsonSerializable()
class DetectionResult {
  final List<Detection> detections;
  @JsonKey(name: 'imageUrl')
  final String? imageUrl; // nullable عشان ممكن يكون موجود أو لأ
  final String? image; // nullable عشان ممكن يكون موجود أو لأ
  final String? user;
  final String? id;
  @JsonKey(name: '_id')
  final String? underscoreId;
  final String? createdAt;

  DetectionResult({
    required this.detections,
    this.imageUrl,
    this.image,
    this.user,
    this.id,
    this.underscoreId,
    this.createdAt,
  });

  factory DetectionResult.fromJson(Map<String, dynamic> json) =>
      _$DetectionResultFromJson(json);

  Map<String, dynamic> toJson() => _$DetectionResultToJson(this);
}

@JsonSerializable()
class Detection {
  @JsonKey(name: 'class') // تعديل من class_name إلى class
  final String className;
  final double confidence;
  final Bbox bbox;
  final String? id;
  @JsonKey(name: '_id')
  final String? underscoreId;

  Detection({
    required this.className,
    required this.confidence,
    required this.bbox,
    this.id,
    this.underscoreId,
  });

  factory Detection.fromJson(Map<String, dynamic> json) =>
      _$DetectionFromJson(json);

  Map<String, dynamic> toJson() => _$DetectionToJson(this);
}

@JsonSerializable()
class Bbox {
  final double xmin;
  final double ymin;
  final double xmax;
  final double ymax;

  Bbox({
    required this.xmin,
    required this.ymin,
    required this.xmax,
    required this.ymax,
  });

  factory Bbox.fromJson(Map<String, dynamic> json) => _$BboxFromJson(json);

  Map<String, dynamic> toJson() => _$BboxToJson(this);
}
