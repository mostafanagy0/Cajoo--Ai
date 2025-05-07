import 'package:cajoo/core/errors/server_failure.dart';
import 'package:cajoo/core/networking/api_constants.dart';
import 'package:cajoo/core/networking/api_service.dart';
import 'package:cajoo/feature/profile/data/models/get_profile/get_profile_model.dart';
import 'package:cajoo/feature/profile/data/models/update_profile/update_profile_request.dart';
import 'package:cajoo/feature/profile/data/models/update_profile/update_profile_response.dart';
import 'package:cajoo/feature/profile/data/repos/profile_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:http_parser/http_parser.dart';

class ProfileRepoImpl extends ProfileRepo {
  final ApiService apiService;
  final Dio dio;

  ProfileRepoImpl({required this.apiService, required this.dio});

  @override
  Future<Either<ServerFailure, GetProfileModel>> getProfile() async {
    try {
      final response = await apiService.getProfile();
      return right(response);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioError(e));
      } else {
        return Left(ServerFailure.fromMessage("Unexpected error occurred"));
      }
    }
  }

  @override
  Future<Either<ServerFailure, Unit>> deleteMyAccount() async {
    try {
      await apiService.deleteMyAccount();
      return right(unit);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure.fromMessage("Unexpected error occurred"));
      }
    }
  }

  @override
  Future<Either<ServerFailure, UpdateProfileResponse>> updateProfile(
    UpdateProfileRequest updateProfileRequest,
  ) async {
    try {
      // تحويل الصورة إلى MultipartFile
      final multipartFile = await MultipartFile.fromFile(
        updateProfileRequest.profileImage.path,
        filename: 'profile_image.jpg',
        contentType: MediaType('image', 'jpeg'),
      );

      // إنشاء FormData
      final formData = FormData.fromMap({
        'username': updateProfileRequest.username,
        'profileImage': multipartFile,
      });

      // إرسال الطلب يدويًا باستخدام Dio
      final response = await dio.patch(
        ApiConstants.updateProfile,
        data: formData,
        options: Options(
          headers: {
            'Accept': 'application/json',
            'Authorization': dio.options.headers['Authorization'],
            'Content-Type': Headers.multipartFormDataContentType,
          },
        ),
      );

      // تحويل الاستجابة إلى UpdateProfileResponse
      final responseModel = UpdateProfileResponse.fromJson(response.data);
      return right(responseModel);
    } catch (e) {
      if (e is DioException) {
        if (e.response?.statusCode == 400) {
          return left(
              ServerFailure('السيرفر لم يستقبل البيانات أو فشل في معالجتها'));
        }
        return left(ServerFailure('خطأ في الاتصال بالسيرفر: ${e.message}'));
      }
      return left(ServerFailure('خطأ غير متوقع: $e'));
    }
  }
}
