// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_error_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiErrorModel _$ApiErrorModelFromJson(Map<String, dynamic> json) =>
    ApiErrorModel(
      message: json['message'] as String?,
      errorsType: (json['errors'] as List<dynamic>?)
          ?.map((e) => ErrorDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ApiErrorModelToJson(ApiErrorModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'errors': instance.errorsType,
    };

ErrorDetail _$ErrorDetailFromJson(Map<String, dynamic> json) => ErrorDetail(
      msg: json['msg'] as String?,
    );

Map<String, dynamic> _$ErrorDetailToJson(ErrorDetail instance) =>
    <String, dynamic>{
      'msg': instance.msg,
    };
