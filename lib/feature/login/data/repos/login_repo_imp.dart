import 'package:cajoo/core/networking/api_error_model.dart';
import 'package:cajoo/core/networking/api_service.dart';
import 'package:cajoo/feature/login/data/models/login_requist_body.dart';
import 'package:cajoo/feature/login/data/models/login_response.dart';
import 'package:cajoo/feature/login/data/repos/login_repo.dart';
import 'package:dartz/dartz.dart';

class LoginRepoImp extends LoginRepo {
  final ApiService apiService;

  LoginRepoImp({required this.apiService});
  @override
  Future<Either<ApiErrorModel, LoginResponse>> login(
      LoginRequistBody loginRequistBody) async {
    try {
      final response = await apiService.login(loginRequistBody);
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
