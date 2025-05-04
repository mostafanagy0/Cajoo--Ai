import 'package:json_annotation/json_annotation.dart';

part 'history_model.g.dart';

@JsonSerializable(explicitToJson: true)
class HistoryResponse {
  final bool success;
  final int count;
  final List<HistoryItem> data;

  HistoryResponse({
    required this.success,
    required this.count,
    required this.data,
  });

  factory HistoryResponse.fromJson(Map<String, dynamic> json) =>
      _$HistoryResponseFromJson(json);
  Map<String, dynamic> toJson() => _$HistoryResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class HistoryItem {
  @JsonKey(name: '_id')
  final String id;

  final String user;
  final List<Detection> detections;
  final String image;
  final String imageUrl;
  final String createdAt;

  HistoryItem({
    required this.id,
    required this.user,
    required this.detections,
    required this.image,
    required this.imageUrl,
    required this.createdAt,
  });

  factory HistoryItem.fromJson(Map<String, dynamic> json) =>
      _$HistoryItemFromJson(json);
  Map<String, dynamic> toJson() => _$HistoryItemToJson(this);
}

@JsonSerializable()
class Detection {
  final BBox bbox;
  final String id;

  @JsonKey(name: 'class')
  final String className;

  final double confidence;

  Detection({
    required this.bbox,
    required this.id,
    required this.className,
    required this.confidence,
  });

  factory Detection.fromJson(Map<String, dynamic> json) =>
      _$DetectionFromJson(json);
  Map<String, dynamic> toJson() => _$DetectionToJson(this);
}

@JsonSerializable()
class BBox {
  final double xmax;
  final double xmin;
  final double ymax;
  final double ymin;

  BBox({
    required this.xmax,
    required this.xmin,
    required this.ymax,
    required this.ymin,
  });

  factory BBox.fromJson(Map<String, dynamic> json) => _$BBoxFromJson(json);
  Map<String, dynamic> toJson() => _$BBoxToJson(this);
}
