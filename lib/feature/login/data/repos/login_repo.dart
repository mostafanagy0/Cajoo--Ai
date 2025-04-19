import 'package:cajoo/core/errors/server_failure.dart';
import 'package:cajoo/feature/login/data/models/login_requist_body.dart';
import 'package:cajoo/feature/login/data/models/login_response.dart';
import 'package:dartz/dartz.dart';

abstract class LoginRepo {
  Future<Either<ServerFailure, LoginResponse>> login(
      LoginRequistBody loginRequistBody);
}
