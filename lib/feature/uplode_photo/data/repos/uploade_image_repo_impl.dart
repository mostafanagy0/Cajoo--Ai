import 'dart:io';

import 'package:cajoo/core/errors/server_failure.dart';
import 'package:cajoo/core/networking/api_constants.dart';
import 'package:cajoo/feature/uplode_photo/data/models/image_detection_response_model.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:http_parser/http_parser.dart';

class UploadImageRepoImpl {
  final Dio dio;

  UploadImageRepoImpl({required this.dio});

  Future<Either<ServerFailure, ImageDetectionResponseModel>> imageDetection(
      File image) async {
    try {
      // تحويل الصورة يدويًا إلى MultipartFile
      final multipartFile = await MultipartFile.fromFile(
        image.path,
        filename: 'image.jpg',
        contentType: MediaType('image', 'jpeg'),
      );

      // إنشاء FormData
      final formData = FormData.fromMap({
        'image': multipartFile,
      });

      // إرسال الطلب يدويًا باستخدام Dio
      final response = await dio.post(
        ApiConstants.imagedetection,
        data: formData,
        options: Options(
          headers: {
            'Accept': 'application/json',
            'Authorization': dio.options.headers['Authorization'],
            'Content-Type': Headers.multipartFormDataContentType,
          },
        ),
      );

      // تحويل الاستجابة إلى ImageDetectionResponseModel
      final responseModel = ImageDetectionResponseModel.fromJson(response.data);
      return Right(responseModel);
    } catch (e) {
      if (e is DioException) {
        if (e.response?.statusCode == 400) {
          return Left(
              ServerFailure('السيرفر لم يستقبل الصورة أو فشل في معالجتها'));
        }
        return Left(ServerFailure('خطأ في الاتصال بالسيرفر: ${e.message}'));
      }
      return Left(ServerFailure('خطأ غير متوقع: $e'));
    }
  }
}
