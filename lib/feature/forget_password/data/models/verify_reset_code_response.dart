class VerifyResetCodeResponse {
  final String message;

  VerifyResetCodeResponse({required this.message});

  factory VerifyResetCodeResponse.fromJson(String json) {
    return VerifyResetCodeResponse(
      message: json,
    );
  }
}
