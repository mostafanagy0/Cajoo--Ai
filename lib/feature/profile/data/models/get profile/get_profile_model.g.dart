// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetProfileModel _$GetProfileModelFromJson(Map<String, dynamic> json) =>
    GetProfileModel(
      msg: json['msg'] as String,
      data: UserData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GetProfileModelToJson(GetProfileModel instance) =>
    <String, dynamic>{
      'msg': instance.msg,
      'data': instance.data,
    };

UserData _$UserDataFromJson(Map<String, dynamic> json) => UserData(
      id: json['id'] as String,
      username: json['username'] as String,
      email: json['email'] as String,
      password: json['password'] as String,
      passwordRestVerified: json['passwordRestVerified'] as bool,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$UserDataToJson(UserData instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'password': instance.password,
      'passwordRestVerified': instance.passwordRestVerified,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
