import 'package:json_annotation/json_annotation.dart';

part 'get_profile_model.g.dart';

@JsonSerializable()
class GetProfileModel {
  final String msg;
  final UserData data;

  GetProfileModel({required this.msg, required this.data});

  factory GetProfileModel.fromJson(Map<String, dynamic> json) =>
      _$GetProfileModelFromJson(json);

  Map<String, dynamic> toJson() => _$GetProfileModelToJson(this);
}

@JsonSerializable()
class UserData {
  final String id;
  final String username;
  final String email;
  final String password;
  final bool passwordRestVerified;
  final String createdAt;
  final String updatedAt;

  UserData({
    required this.id,
    required this.username,
    required this.email,
    required this.password,
    required this.passwordRestVerified,
    required this.createdAt,
    required this.updatedAt,
  });

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);

  Map<String, dynamic> toJson() => _$UserDataToJson(this);
}
