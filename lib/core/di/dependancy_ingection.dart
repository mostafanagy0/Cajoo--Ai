import 'package:cajoo/core/networking/api_service.dart';
import 'package:cajoo/core/networking/dio_factory.dart';
import 'package:cajoo/feature/forget_password/data/repos/forget_password_repo_imp.dart';
import 'package:cajoo/feature/forget_password/logic/forget_password_cubit/forgetpassword_cubit.dart';
import 'package:cajoo/feature/forget_password/logic/reset_password/cubit/reset_password_cubit.dart';
import 'package:cajoo/feature/forget_password/logic/verify_reset_code/cubit/verify_reset_code_cubit.dart';
import 'package:cajoo/feature/history/data/repos/history_repo_impl.dart';
import 'package:cajoo/feature/history/logic/cubit/get_history_cubit.dart';
import 'package:cajoo/feature/login/data/repos/login_repo_imp.dart';
import 'package:cajoo/feature/login/logic/cubit/login_cubit.dart';
import 'package:cajoo/feature/profile/data/repos/profile_repo_impl.dart';
import 'package:cajoo/feature/profile/logic/cubit/delet_account_cubit.dart';
import 'package:cajoo/feature/profile/logic/cubit/update_profile_cubit.dart';
import 'package:cajoo/feature/profile/logic/get_Profile/get_profile_cubit.dart';
import 'package:cajoo/feature/signup/data/repos/signup_repo_imp.dart';
import 'package:cajoo/feature/signup/logic/cubit/signup_cubit.dart';
import 'package:cajoo/feature/uplode_photo/data/repos/uploade_image_repo_impl.dart';
import 'package:cajoo/feature/uplode_photo/logic/cubit/image_detection_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<Dio>(() => dio);
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

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
  getIt.registerFactory<VerifyResetCodeCubit>(
      () => VerifyResetCodeCubit(getIt()));

  // reset password
  getIt.registerFactory<ResetPasswordCubit>(() => ResetPasswordCubit(getIt()));

  // profile (get profile, delete account, update profile)
  getIt.registerLazySingleton<ProfileRepoImpl>(
      () => ProfileRepoImpl(apiService: getIt(), dio: getIt()));
  getIt.registerFactory<GetProfileCubit>(() => GetProfileCubit(getIt()));
  getIt.registerFactory<DeleteAccountCubit>(() => DeleteAccountCubit(getIt()));
  getIt.registerFactory<UpdateProfileCubit>(
      () => UpdateProfileCubit(profileRepoImpl: getIt()));

  // upload image
  getIt.registerLazySingleton<UploadImageRepoImpl>(
      () => UploadImageRepoImpl(dio: getIt()));
  getIt
      .registerFactory<ImageDetectionCubit>(() => ImageDetectionCubit(getIt()));

  // get history
  getIt.registerLazySingleton<HistoryRepoImpl>(
      () => HistoryRepoImpl(apiService: getIt()));
  getIt.registerFactory<GetHistoryCubit>(() => GetHistoryCubit(getIt()));
}
