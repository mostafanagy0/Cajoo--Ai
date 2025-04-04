import 'package:cajoo/core/networking/api_error_model.dart';
import 'package:cajoo/feature/login/data/models/login_requist_body.dart';
import 'package:cajoo/feature/login/data/models/login_response.dart';
import 'package:dartz/dartz.dart';

abstract class LoginRepo {
  Future<Either<ApiErrorModel, LoginResponse>> login(
      LoginRequistBody loginRequistBody);
}
