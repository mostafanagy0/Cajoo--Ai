import 'package:cajoo/core/networking/api_error_model.dart';
import 'package:cajoo/core/networking/api_service.dart';
import 'package:cajoo/feature/signup/data/models/signup_request_body.dart';
import 'package:cajoo/feature/signup/data/models/signup_response.dart';
import 'package:cajoo/feature/signup/data/repos/signup_repo.dart';
import 'package:dartz/dartz.dart';

class SignupRepoImp extends SignUpRepo {
  final ApiService apiService;

  SignupRepoImp({required this.apiService});
  @override
  Future<Either<ApiErrorModel, SignupResponse>> signup(
      SignupRequestBody signupRequestBody) async {
    try {
      final response = await apiService.signup(signupRequestBody);
      return right(response);
    } catch (e) {
      if (e is ApiErrorModel) {
        return left(e);
      } else {
        return left(
            ApiErrorModel(message: "Something went wrong", errorsType: []));
      }
    }
  }
}
