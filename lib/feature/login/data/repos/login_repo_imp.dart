import 'package:cajoo/core/constants/shered_pref_keys.dart';
import 'package:cajoo/core/errors/server_failure.dart';
import 'package:cajoo/core/helpers/shered_pref_helper_.dart';
import 'package:cajoo/core/networking/api_service.dart';
import 'package:cajoo/core/networking/dio_factory.dart';
import 'package:cajoo/feature/login/data/models/login_requist_body.dart';
import 'package:cajoo/feature/login/data/models/login_response.dart';
import 'package:cajoo/feature/login/data/repos/login_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class LoginRepoImp extends LoginRepo {
  final ApiService apiService;

  LoginRepoImp({required this.apiService});

  @override
  Future<Either<ServerFailure, LoginResponse>> login(
      LoginRequistBody loginRequistBody) async {
    try {
      final response = await apiService.login(loginRequistBody);

      if (response.userToken.isNotEmpty) {
        await SharedPrefHelper.setSecuredString(
            SharedPrefKeys.authToken, response.userToken);
        DioFactory.setTokenIntoHeaderAfterLogin(response.userToken);
      }
      return Right(response);
    } catch (e) {
      if (e is ServerFailure) {
        return Left(e);
      } else if (e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      } else {
        return Left(ServerFailure.fromMessage("Unexpected error occurred"));
      }
    }
  }
}
