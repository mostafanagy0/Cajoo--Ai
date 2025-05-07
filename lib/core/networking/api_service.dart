import 'dart:io';

import 'package:cajoo/core/networking/api_constants.dart';
import 'package:cajoo/feature/forget_password/data/models/forget_password_response.dart';
import 'package:cajoo/feature/forget_password/data/models/forget_passwors_request_model.dart';
import 'package:cajoo/feature/forget_password/data/models/reset_password_request_model.dart';
import 'package:cajoo/feature/forget_password/data/models/reset_password_response.dart';
import 'package:cajoo/feature/forget_password/data/models/verify_reset_code_request_model.dart';
import 'package:cajoo/feature/forget_password/data/models/verify_reset_code_response.dart';
import 'package:cajoo/feature/history/data/models/history_model.dart';
import 'package:cajoo/feature/login/data/models/login_requist_body.dart';
import 'package:cajoo/feature/login/data/models/login_response.dart';
import 'package:cajoo/feature/profile/data/models/get_profile/get_profile_model.dart';
import 'package:cajoo/feature/profile/data/models/update_profile/update_profile_response.dart';
import 'package:cajoo/feature/signup/data/models/signup_request_body.dart';
import 'package:cajoo/feature/signup/data/models/signup_response.dart';
import 'package:cajoo/feature/uplode_photo/data/models/image_detection_response_model.dart';
import 'package:dio/dio.dart';
import 'package:http_parser/http_parser.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST('https://cashwa-nodejs-server.fly.dev/api/vi/auth/login')
  Future<LoginResponse> login(
    @Body() LoginRequistBody loginRequistBody,
  );

  @POST(ApiConstants.signup)
  Future<SignupResponse> signup(
    @Body() SignupRequestBody signupRequestBody,
  );

  @POST(ApiConstants.forgetPassword)
  Future<ForgetPasswordResponse> forgetPassword(
    @Body() ForgetPassworsRequestModel forgetPassworsRequestModel,
  );

  @POST(ApiConstants.verifyResetCode)
  Future<VerifyResetCodeResponse> verifyResetCode(
    @Body() VerifyResetCodeRequestModel verifyResetCodeRequestModel,
  );

  @POST(ApiConstants.resetPassword)
  Future<ResetPasswordResponse> resetPassword(
    @Body() ResetPasswordRequestModel resetPasswordRequestModel,
  );

  @GET(ApiConstants.getProfile)
  Future<GetProfileModel> getProfile();

  @DELETE(ApiConstants.logout)
  Future<void> deleteMyAccount();

  @POST(ApiConstants.imagedetection)
  @MultiPart()
  Future<ImageDetectionResponseModel> imageDetection(
    @Part(name: 'image', contentType: 'image/jpeg') File image,
  );
  @GET(ApiConstants.getHistory)
  Future<HistoryResponse> getHistory();

  @PATCH(ApiConstants.updateProfile)
  @MultiPart()
  Future<UpdateProfileResponse> updateProfile(
    @Part(name: 'username') String username,
    @Part(name: 'profileImage') File profileImage,
  );
}
