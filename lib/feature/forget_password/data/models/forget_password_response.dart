class ForgetPasswordResponse {
  final String message;

  ForgetPasswordResponse({required this.message});

  factory ForgetPasswordResponse.fromJson(String json) {
    return ForgetPasswordResponse(
      message: json,
    );
  }
}
