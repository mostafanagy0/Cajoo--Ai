import 'package:cajoo/core/networking/dio_factory.dart';
import 'package:cajoo/feature/forget_password/data/repos/forget_password_repo_imp.dart';
import 'package:cajoo/feature/forget_password/logic/forget_password_cubit/forgetpassword_cubit.dart';
import 'package:cajoo/feature/forget_password/logic/verify_reset_code/cubit/verify_reset_code_cubit.dart';
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
  //getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // login
  getIt.registerLazySingleton<LoginRepoImp>(
      () => LoginRepoImp(apiService: getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  // signup
  getIt.registerLazySingleton<SignupRepoImp>(
      () => SignupRepoImp(apiService: getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));

  // forget password

  getIt.registerLazySingleton<ForgetPasswordRepoImp>(
      () => ForgetPasswordRepoImp(apiService: getIt()));
  getIt
      .registerFactory<ForgetpasswordCubit>(() => ForgetpasswordCubit(getIt()));
  // verify reset code
  getIt.registerLazySingleton<ForgetPasswordRepoImp>(
      () => ForgetPasswordRepoImp(apiService: getIt()));
  getIt.registerFactory<VerifyResetCodeCubit>(
      () => VerifyResetCodeCubit(getIt()));
}
