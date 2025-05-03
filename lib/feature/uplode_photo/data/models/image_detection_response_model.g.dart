// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_detection_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImageDetectionResponseModel _$ImageDetectionResponseModelFromJson(
        Map<String, dynamic> json) =>
    ImageDetectionResponseModel(
      status: json['status'] as String,
      data: DetectionData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ImageDetectionResponseModelToJson(
        ImageDetectionResponseModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

DetectionData _$DetectionDataFromJson(Map<String, dynamic> json) =>
    DetectionData(
      imageUrl: json['imageUrl'] as String,
      detection:
          DetectionResult.fromJson(json['detection'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DetectionDataToJson(DetectionData instance) =>
    <String, dynamic>{
      'imageUrl': instance.imageUrl,
      'detection': instance.detection,
    };

DetectionResult _$DetectionResultFromJson(Map<String, dynamic> json) =>
    DetectionResult(
      detections: (json['detections'] as List<dynamic>)
          .map((e) => Detection.fromJson(e as Map<String, dynamic>))
          .toList(),
      imageUrl: json['imageUrl'] as String?,
      image: json['image'] as String?,
      user: json['user'] as String?,
      id: json['id'] as String?,
      underscoreId: json['_id'] as String?,
      createdAt: json['createdAt'] as String?,
    );

Map<String, dynamic> _$DetectionResultToJson(DetectionResult instance) =>
    <String, dynamic>{
      'detections': instance.detections,
      'imageUrl': instance.imageUrl,
      'image': instance.image,
      'user': instance.user,
      'id': instance.id,
      '_id': instance.underscoreId,
      'createdAt': instance.createdAt,
    };

Detection _$DetectionFromJson(Map<String, dynamic> json) => Detection(
      className: json['class'] as String,
      confidence: (json['confidence'] as num).toDouble(),
      bbox: Bbox.fromJson(json['bbox'] as Map<String, dynamic>),
      id: json['id'] as String?,
      underscoreId: json['_id'] as String?,
    );

Map<String, dynamic> _$DetectionToJson(Detection instance) => <String, dynamic>{
      'class': instance.className,
      'confidence': instance.confidence,
      'bbox': instance.bbox,
      'id': instance.id,
      '_id': instance.underscoreId,
    };

Bbox _$BboxFromJson(Map<String, dynamic> json) => Bbox(
      xmin: (json['xmin'] as num).toDouble(),
      ymin: (json['ymin'] as num).toDouble(),
      xmax: (json['xmax'] as num).toDouble(),
      ymax: (json['ymax'] as num).toDouble(),
    );

Map<String, dynamic> _$BboxToJson(Bbox instance) => <String, dynamic>{
      'xmin': instance.xmin,
      'ymin': instance.ymin,
      'xmax': instance.xmax,
      'ymax': instance.ymax,
    };
