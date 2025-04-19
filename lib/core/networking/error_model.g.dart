// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ErrorModel _$ErrorModelFromJson(Map<String, dynamic> json) => ErrorModel(
      type: json['type'] as String,
      value: json['value'] as String,
      msg: json['msg'] as String,
      path: json['path'] as String,
      location: json['location'] as String,
    );

Map<String, dynamic> _$ErrorModelToJson(ErrorModel instance) =>
    <String, dynamic>{
      'type': instance.type,
      'value': instance.value,
      'msg': instance.msg,
      'path': instance.path,
      'location': instance.location,
    };

ErrorResponse _$ErrorResponseFromJson(Map<String, dynamic> json) =>
    ErrorResponse(
      status: (json['status'] as num).toInt(),
      message: json['message'] as String,
      errors: (json['errors'] as List<dynamic>)
          .map((e) => ErrorModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ErrorResponseToJson(ErrorResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'errors': instance.errors,
    };
