import 'package:cajoo/core/networking/api_constants.dart';
import 'package:cajoo/feature/forget_password/data/models/forget_passwors_request_model.dart';
import 'package:cajoo/feature/login/data/models/login_requist_body.dart';
import 'package:cajoo/feature/login/data/models/login_response.dart';
import 'package:cajoo/feature/signup/data/models/signup_request_body.dart';
import 'package:cajoo/feature/signup/data/models/signup_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST('https://cashwe-aged-firefly-6248.fly.dev/api/vi/auth/login')
  Future<LoginResponse> login(
    @Body() LoginRequistBody loginRequistBody,
  );

  @POST('https://cashwe-aged-firefly-6248.fly.dev/api/vi/auth/register')
  Future<SignupResponse> signup(
    @Body() SignupRequestBody signupRequestBody,
  );

  @POST('https://cashwe-aged-firefly-6248.fly.dev/api/vi/auth/forgetPassword')
  Future<String> forgetPassword(
    @Body() ForgetPassworsRequestModel forgetPassworsRequestModel,
  );
}
