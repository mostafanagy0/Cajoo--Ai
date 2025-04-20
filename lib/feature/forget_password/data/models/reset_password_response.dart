import 'package:json_annotation/json_annotation.dart';

part 'reset_password_response.g.dart';

@JsonSerializable()
class ResetPasswordResponse {
  final UserData data;
  final String userToken;

  ResetPasswordResponse({required this.data, required this.userToken});

  factory ResetPasswordResponse.fromJson(Map<String, dynamic> json) =>
      _$ResetPasswordResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ResetPasswordResponseToJson(this);
}

@JsonSerializable()
class UserData {
  @JsonKey(name: '_id')
  final String id;
  final String username;
  final String email;
  final String? password;
  final String? profileImage;
  final String? createdAt;
  final String? updatedAt;
  @JsonKey(name: '__v')
  final int? v;

  UserData({
    required this.id,
    required this.username,
    required this.email,
    this.password,
    this.profileImage,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);

  Map<String, dynamic> toJson() => _$UserDataToJson(this);
}
