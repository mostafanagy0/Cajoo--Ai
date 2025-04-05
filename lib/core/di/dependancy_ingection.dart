import 'package:cajoo/core/networking/api_service.dart';
import 'package:cajoo/core/networking/dio_factory.dart';
import 'package:cajoo/feature/login/data/repos/login_repo_imp.dart';
import 'package:cajoo/feature/login/logic/cubit/login_cubit.dart';
import 'package:cajoo/feature/signup/data/repos/signup_repo_imp.dart';
import 'package:cajoo/feature/signup/logic/cubit/signup_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // login
  getIt.registerLazySingleton<LoginRepoImp>(
      () => LoginRepoImp(apiService: getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  // signup
  getIt.registerLazySingleton<SignupRepoImp>(
      () => SignupRepoImp(apiService: getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));
}
