class ForgetPassworsRequestModel {
  final String email;
  ForgetPassworsRequestModel({required this.email});

  Map<String, dynamic> toJson() => {
        'email': email,
      };
}
