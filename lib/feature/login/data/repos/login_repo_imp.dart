import 'package:cajoo/core/errors/server_failure.dart';
import 'package:cajoo/core/networking/api_service.dart';
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
      return Right(response);
    } catch (e) {
      if (e is ServerFailure) {
        // إذا كان الخطأ هو ServerFailure
        return Left(e); // إعادة الخطأ كما هو
      } else if (e is DioException) {
        // إذا كان الخطأ من Dio
        return Left(
            ServerFailure.fromDioError(e)); // تحويل الخطأ إلى ServerFailure
      } else {
        // في حالة حدوث أخطاء غير متوقعة
        return Left(ServerFailure.fromMessage("Unexpected error occurred"));
      }
    }
  }
}
