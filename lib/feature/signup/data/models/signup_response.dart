import 'package:json_annotation/json_annotation.dart';

part 'signup_response.g.dart';

@JsonSerializable()
class SignupResponse {
  final String msg;
  final String userToken;
  @JsonKey(name: 'data')
  final UserData userData;

  factory SignupResponse.fromJson(Map<String, dynamic> json) =>
      _$SignupResponseFromJson(json);

  SignupResponse(
      {required this.msg, required this.userToken, required this.userData});
}

@JsonSerializable()
class UserData {
  @JsonKey(name: '_id')
  final String id;
  final String username;
  final String email;

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);

  UserData({
    required this.id,
    required this.username,
    required this.email,
  });

  Map<String, dynamic> toJson() => _$UserDataToJson(this);
}
