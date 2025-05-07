import 'package:cajoo/core/errors/server_failure.dart';
import 'package:cajoo/core/networking/api_service.dart';
import 'package:cajoo/feature/profile/data/models/get_profile/get_profile_model.dart';
import 'package:cajoo/feature/profile/data/repos/profile_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class ProfileRepoImpl extends ProfileRepo {
  final ApiService apiService;

  ProfileRepoImpl({required this.apiService});

  @override
  Future<Either<ServerFailure, GetProfileModel>> getProfile() async {
    try {
      final response = await apiService.getProfile();
      print('API Response in Repo: $response');
      return right(response);
    } catch (e) {
      if (e is DioException) {
        print('DioException: ${e.response?.data}');
        return Left(ServerFailure.fromDioError(e));
      } else {
        print('Error: $e');
        return Left(ServerFailure.fromMessage("Unexpected error occurred"));
      }
    }
  }

  @override
  Future<Either<ServerFailure, Unit>> deleteMyAccount() async {
    try {
      await apiService.deleteMyAccount();

      return right(unit);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure.fromMessage("Unexpected error occurred"));
      }
    }
  }
}
