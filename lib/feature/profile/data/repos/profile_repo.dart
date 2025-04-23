import 'package:cajoo/core/errors/server_failure.dart';
import 'package:cajoo/feature/profile/data/models/get%20profile/get_profile_model.dart';
import 'package:dartz/dartz.dart';

abstract class ProfileRepo {
  Future<Either<ServerFailure, GetProfileModel>> getProfile();
  Future<Either<ServerFailure, Unit>> deleteMyAccount();
}
