import 'package:cajoo/core/networking/api_error_model.dart';
import 'package:cajoo/feature/signup/data/models/signup_request_body.dart';
import 'package:cajoo/feature/signup/data/models/signup_response.dart';
import 'package:dartz/dartz.dart';

abstract class SignUpRepo {
  Future<Either<ApiErrorModel, SignupResponse>> signup(
    SignupRequestBody signupRequestBody,
  );
}
