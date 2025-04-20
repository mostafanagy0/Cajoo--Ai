import 'package:cajoo/core/errors/server_failure.dart';
import 'package:cajoo/core/networking/api_service.dart';
import 'package:cajoo/feature/forget_password/data/models/forget_password_response.dart';
import 'package:cajoo/feature/forget_password/data/models/forget_passwors_request_model.dart';
import 'package:cajoo/feature/forget_password/data/models/reset_password_request_model.dart';
import 'package:cajoo/feature/forget_password/data/models/reset_password_response.dart';
import 'package:cajoo/feature/forget_password/data/models/verify_reset_code_request_model.dart';
import 'package:cajoo/feature/forget_password/data/models/verify_reset_code_response.dart';
import 'package:cajoo/feature/forget_password/data/repos/forget_password_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class ForgetPasswordRepoImp extends ForgetPasswordRepo {
  final ApiService apiService;

  ForgetPasswordRepoImp({required this.apiService});
  @override
  Future<Either<ServerFailure, ForgetPasswordResponse>> sendForgetPasswordEmail(
      ForgetPassworsRequestModel forgetPassworsRequestModel) async {
    try {
      final response =
          await apiService.forgetPassword(forgetPassworsRequestModel);

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

  @override
  Future<Either<ServerFailure, VerifyResetCodeResponse>> verifyResetCode(
      VerifyResetCodeRequestModel verefyResetCodeRequestModel) async {
    try {
      final response =
          await apiService.verifyResetCode(verefyResetCodeRequestModel);
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

  @override
  Future<Either<ServerFailure, ResetPasswordResponse>> resetPassword(
      ResetPasswordRequestModel resetPasswordRequestModel) async {
    try {
      final response =
          await apiService.resetPassword(resetPasswordRequestModel);
      return right(response);
    } catch (e) {
      if (e is ServerFailure) {
        return Left(e);
      } else if (e is DioException) {
        return Left(
            ServerFailure.fromDioError(e)); 
      } else {
        return Left(ServerFailure.fromMessage("Unexpected error occurred"));
      }
    }
  }
}
