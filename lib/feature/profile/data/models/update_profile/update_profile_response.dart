import 'package:json_annotation/json_annotation.dart';

part 'update_profile_response.g.dart';

@JsonSerializable()
class UpdateProfileResponse {
  final String status;
  final UserModel data;

  UpdateProfileResponse({
    required this.status,
    required this.data,
  });

  factory UpdateProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$UpdateProfileResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateProfileResponseToJson(this);
}

@JsonSerializable()
class UserModel {
  @JsonKey(name: '_id')
  final String id;
  final String username;
  final String email;
  final String password;
  final bool passwordRestVerified;
  final String createdAt;
  final String updatedAt;
  @JsonKey(name: '__v')
  final int v;
  final String? profileImage;

  UserModel({
    required this.id,
    required this.username,
    required this.email,
    required this.password,
    required this.passwordRestVerified,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
    this.profileImage,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
