import 'package:cajoo/core/errors/server_failure.dart';
import 'package:cajoo/feature/history/data/models/history_model.dart';
import 'package:dartz/dartz.dart';

abstract class HistoryRepo {
  Future<Either<ServerFailure, HistoryResponse>> getHistory();
}
