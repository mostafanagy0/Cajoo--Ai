class VerifyResetCodeRequestModel {
  final String resetCode;

  VerifyResetCodeRequestModel({required this.resetCode});

  Map<String, dynamic> toJson() => {
        'resetCode': resetCode,
      };
}
