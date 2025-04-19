import 'package:cajoo/core/errors/server_failure.dart';
import 'package:cajoo/feature/signup/data/models/signup_request_body.dart';
import 'package:cajoo/feature/signup/data/models/signup_response.dart';
import 'package:dartz/dartz.dart';

abstract class SignUpRepo {
  Future<Either<ServerFailure, SignupResponse>> signup(
    SignupRequestBody signupRequestBody,
  );
}
