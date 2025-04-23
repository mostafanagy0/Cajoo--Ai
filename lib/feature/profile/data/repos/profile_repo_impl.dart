import 'package:cajoo/core/errors/server_failure.dart';
import 'package:cajoo/core/networking/api_service.dart';
import 'package:cajoo/feature/profile/data/models/get_profile_model.dart';
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
      return right(response);
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
