import 'package:json_annotation/json_annotation.dart';

part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  final String message;
  final String userToken;
  @JsonKey(name: 'data')
  final UserData userData;

  LoginResponse(
      {required this.message, required this.userToken, required this.userData});
  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}

@JsonSerializable()
class UserData {
  @JsonKey(name: '_id')
  final String id;
  final String username;
  final String email;

  UserData({
    required this.id,
    required this.username,
    required this.email,
  });
  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);

      
  Map<String, dynamic> toJson() => _$UserDataToJson(this);
}
