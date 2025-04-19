import 'package:cajoo/core/errors/server_failure.dart';
import 'package:cajoo/feature/forget_password/data/models/forget_password_response.dart';
import 'package:cajoo/feature/forget_password/data/models/forget_passwors_request_model.dart';
import 'package:cajoo/feature/forget_password/data/models/reset_password_request_model.dart';
import 'package:cajoo/feature/forget_password/data/models/reset_password_response.dart';
import 'package:cajoo/feature/forget_password/data/models/verify_reset_code_request_model.dart';
import 'package:cajoo/feature/forget_password/data/models/verify_reset_code_response.dart';
import 'package:dartz/dartz.dart';

abstract class ForgetPasswordRepo {
  Future<Either<ServerFailure, ForgetPasswordResponse>> sendForgetPasswordEmail(
      ForgetPassworsRequestModel forgetPassworsRequestModel);

  Future<Either<ServerFailure, VerifyResetCodeResponse>> verifyResetCode(
      VerifyResetCodeRequestModel verefyResetCodeRequestModel);
  Future<Either<ServerFailure, ResetPasswordResponse>> resetPassword(
      ResetPasswordRequestModel resetPasswordRequestModel);
}
