import 'package:json_annotation/json_annotation.dart';

part 'login_requist_body.g.dart';

@JsonSerializable()
class LoginRequistBody {
  final String email;
  final String password;

  LoginRequistBody({required this.email, required this.password});
  Map<String, dynamic> toJson() => _$LoginRequistBodyToJson(this);
}
