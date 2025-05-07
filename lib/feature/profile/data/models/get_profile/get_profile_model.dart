import 'package:json_annotation/json_annotation.dart';

part 'get_profile_model.g.dart';

@JsonSerializable()
class GetProfileModel {
  @JsonKey(name: 'status')
  final String? status;
  final UserData? data;

  GetProfileModel({this.status, this.data});

  factory GetProfileModel.fromJson(Map<String, dynamic> json) =>
      _$GetProfileModelFromJson(json);

  Map<String, dynamic> toJson() => _$GetProfileModelToJson(this);
}

@JsonSerializable()
class UserData {
  @JsonKey(name: '_id')
  final String? id;
  final String? username;
  final String? email;
  final String? password;
  final bool? passwordRestVerified;
  final String? createdAt;
  final String? updatedAt;
  final String? profileImage;
  @JsonKey(name: '__v')
  final int? version;

  UserData({
    this.id,
    this.username,
    this.email,
    this.password,
    this.passwordRestVerified,
    this.createdAt,
    this.updatedAt,
    this.profileImage,
    this.version,
  });

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);

  Map<String, dynamic> toJson() => _$UserDataToJson(this);
}
