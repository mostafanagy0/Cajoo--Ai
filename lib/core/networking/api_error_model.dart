import 'package:json_annotation/json_annotation.dart';

part 'api_error_model.g.dart';

@JsonSerializable()
class ApiErrorModel {
  final String? message;
  @JsonKey(name: 'errors')
  final List<ErrorDetail>? errorsType;

  ApiErrorModel({required this.message, required this.errorsType});
  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);
  Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);
}

@JsonSerializable()
class ErrorDetail {
  final String? msg;

  ErrorDetail({required this.msg});
  factory ErrorDetail.fromJson(Map<String, dynamic> json) =>
      _$ErrorDetailFromJson(json);
  Map<String, dynamic> toJson() => _$ErrorDetailToJson(this);
}
