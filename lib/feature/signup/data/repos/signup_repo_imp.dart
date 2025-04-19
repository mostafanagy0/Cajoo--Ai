import 'package:cajoo/core/errors/server_failure.dart';
import 'package:cajoo/core/networking/api_service.dart';
import 'package:cajoo/feature/signup/data/models/signup_request_body.dart';
import 'package:cajoo/feature/signup/data/models/signup_response.dart';
import 'package:cajoo/feature/signup/data/repos/signup_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SignupRepoImp extends SignUpRepo {
  final ApiService apiService;

  SignupRepoImp({required this.apiService});
  @override
  Future<Either<ServerFailure, SignupResponse>> signup(
      SignupRequestBody signupRequestBody) async {
    try {
      final response = await apiService.signup(signupRequestBody);
      return right(response);
    } catch (e) {
      if (e is ServerFailure) {
        return left(e);
      } else if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure.fromMessage("Unexpected error occurred"));
      }
    }
  }
}
