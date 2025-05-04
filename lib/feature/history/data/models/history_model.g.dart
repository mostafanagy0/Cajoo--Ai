// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HistoryResponse _$HistoryResponseFromJson(Map<String, dynamic> json) =>
    HistoryResponse(
      success: json['success'] as bool,
      count: (json['count'] as num).toInt(),
      data: (json['data'] as List<dynamic>)
          .map((e) => HistoryItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HistoryResponseToJson(HistoryResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'count': instance.count,
      'data': instance.data.map((e) => e.toJson()).toList(),
    };

HistoryItem _$HistoryItemFromJson(Map<String, dynamic> json) => HistoryItem(
      id: json['_id'] as String,
      user: json['user'] as String,
      detections: (json['detections'] as List<dynamic>)
          .map((e) => Detection.fromJson(e as Map<String, dynamic>))
          .toList(),
      image: json['image'] as String,
      imageUrl: json['imageUrl'] as String,
      createdAt: json['createdAt'] as String,
    );

Map<String, dynamic> _$HistoryItemToJson(HistoryItem instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'user': instance.user,
      'detections': instance.detections.map((e) => e.toJson()).toList(),
      'image': instance.image,
      'imageUrl': instance.imageUrl,
      'createdAt': instance.createdAt,
    };

Detection _$DetectionFromJson(Map<String, dynamic> json) => Detection(
      bbox: BBox.fromJson(json['bbox'] as Map<String, dynamic>),
      id: json['id'] as String,
      className: json['class'] as String,
      confidence: (json['confidence'] as num).toDouble(),
    );

Map<String, dynamic> _$DetectionToJson(Detection instance) => <String, dynamic>{
      'bbox': instance.bbox,
      'id': instance.id,
      'class': instance.className,
      'confidence': instance.confidence,
    };

BBox _$BBoxFromJson(Map<String, dynamic> json) => BBox(
      xmax: (json['xmax'] as num).toDouble(),
      xmin: (json['xmin'] as num).toDouble(),
      ymax: (json['ymax'] as num).toDouble(),
      ymin: (json['ymin'] as num).toDouble(),
    );

Map<String, dynamic> _$BBoxToJson(BBox instance) => <String, dynamic>{
      'xmax': instance.xmax,
      'xmin': instance.xmin,
      'ymax': instance.ymax,
      'ymin': instance.ymin,
    };
