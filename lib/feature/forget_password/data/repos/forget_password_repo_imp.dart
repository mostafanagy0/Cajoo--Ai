import 'package:cajoo/core/networking/api_error_model.dart';
import 'package:cajoo/core/networking/api_service.dart';
import 'package:cajoo/feature/forget_password/data/models/forget_password_response.dart';
import 'package:cajoo/feature/forget_password/data/models/forget_passwors_request_model.dart';
import 'package:cajoo/feature/forget_password/data/models/verify_reset_code_request_model.dart';
import 'package:cajoo/feature/forget_password/data/models/verify_reset_code_response.dart';
import 'package:cajoo/feature/forget_password/data/repos/forget_password_repo.dart';
import 'package:dartz/dartz.dart';

class ForgetPasswordRepoImp extends ForgetPasswordRepo {
  final ApiService apiService;

  ForgetPasswordRepoImp({required this.apiService});
  @override
  Future<Either<ApiErrorModel, ForgetPasswordResponse>> sendForgetPasswordEmail(
      ForgetPassworsRequestModel forgetPassworsRequestModel) async {
    try {
      final response =
          await apiService.forgetPassword(forgetPassworsRequestModel);

      return Right(response);
    } catch (e) {
      return left(
          ApiErrorModel(message: "Something went wrong", errorsType: []));
    }
  }

  @override
  Future<Either<ApiErrorModel, VerifyResetCodeResponse>> verifyResetCode(
      VerifyResetCodeRequestModel verefyResetCodeRequestModel) async {
    try {
      final response =
          await apiService.verifyResetCode(verefyResetCodeRequestModel);
      return Right(response);
    } catch (e) {
      return left(
          ApiErrorModel(message: "Something went wrong", errorsType: []));
    }
  }
}
