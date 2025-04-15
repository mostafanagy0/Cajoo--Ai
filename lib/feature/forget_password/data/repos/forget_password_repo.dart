import 'package:cajoo/core/networking/api_error_model.dart';
import 'package:cajoo/feature/forget_password/data/models/forget_password_response.dart';
import 'package:cajoo/feature/forget_password/data/models/forget_passwors_request_model.dart';
import 'package:cajoo/feature/forget_password/data/models/reset_password_request_model.dart';
import 'package:cajoo/feature/forget_password/data/models/reset_password_response.dart';
import 'package:cajoo/feature/forget_password/data/models/verify_reset_code_request_model.dart';
import 'package:cajoo/feature/forget_password/data/models/verify_reset_code_response.dart';
import 'package:dartz/dartz.dart';

abstract class ForgetPasswordRepo {
  Future<Either<ApiErrorModel, ForgetPasswordResponse>> sendForgetPasswordEmail(
      ForgetPassworsRequestModel forgetPassworsRequestModel);

  Future<Either<ApiErrorModel, VerifyResetCodeResponse>> verifyResetCode(
      VerifyResetCodeRequestModel verefyResetCodeRequestModel);
  Future<Either<ApiErrorModel, ResetPasswordResponse>> resetPassword(
      ResetPasswordRequestModel resetPasswordRequestModel);
}
