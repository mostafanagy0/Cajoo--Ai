

import 'package:json_annotation/json_annotation.dart';

part 'signup_request_body.g.dart';

@JsonSerializable()
class SignupRequestBody {
  final String username;
  final String email;
  final String password;
  final String passwordConfirm;

  SignupRequestBody(
      {required this.username,
      required this.email,
      required this.password,
      required this.passwordConfirm});

  Map<String, dynamic> toJson() => _$SignupRequestBodyToJson(this);
}
