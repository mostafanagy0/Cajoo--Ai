import 'package:cajoo/core/errors/server_failure.dart';
import 'package:cajoo/core/networking/api_service.dart';
import 'package:cajoo/feature/history/data/models/history_model.dart';
import 'package:cajoo/feature/history/data/repos/history_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HistoryRepoImpl extends HistoryRepo {
  final ApiService apiService;

  HistoryRepoImpl({required this.apiService});
  @override
  Future<Either<ServerFailure, HistoryResponse>> getHistory() async {
    try {
      final response = await apiService.getHistory();
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
