import 'package:json_annotation/json_annotation.dart';

part 'reset_password_request_model.g.dart';

@JsonSerializable()
class ResetPasswordRequestModel {
  final String email;
  final String newPassword;
  final String passwordConfirm;

  ResetPasswordRequestModel(
      {required this.email,
      required this.newPassword,
      required this.passwordConfirm});

  Map<String, dynamic> toJson() => _$ResetPasswordRequestModelToJson(this);
}
