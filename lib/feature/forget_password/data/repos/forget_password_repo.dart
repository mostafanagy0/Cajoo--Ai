import 'package:cajoo/core/networking/api_error_model.dart';
import 'package:cajoo/feature/forget_password/data/models/forget_passwors_request_model.dart';
import 'package:dartz/dartz.dart';

abstract class ForgetPasswordRepo {
  Future<Either<ApiErrorModel, String>> sendForgetPasswordEmail(
      ForgetPassworsRequestModel forgetPassworsRequestModel);
}
