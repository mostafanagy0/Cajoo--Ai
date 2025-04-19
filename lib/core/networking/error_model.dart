import 'package:json_annotation/json_annotation.dart';

part 'error_model.g.dart';

@JsonSerializable()
class ErrorModel {
  final String type;
  final String value;
  final String msg;
  final String path;
  final String location;

  ErrorModel({
    required this.type,
    required this.value,
    required this.msg,
    required this.path,
    required this.location,
  });

  factory ErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ErrorModelFromJson(json);

  Map<String, dynamic> toJson() => _$ErrorModelToJson(this);
}

@JsonSerializable()
class ErrorResponse {
  final int status;
  final String message;
  final List<ErrorModel> errors;

  ErrorResponse({
    required this.status,
    required this.message,
    required this.errors,
  });

  factory ErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$ErrorResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ErrorResponseToJson(this);
}
