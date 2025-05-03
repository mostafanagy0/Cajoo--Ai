import 'dart:io';

import 'package:cajoo/core/errors/server_failure.dart';
import 'package:cajoo/feature/uplode_photo/data/models/image_detection_response_model.dart';
import 'package:dartz/dartz.dart';

abstract class UploadImageRepo {
  Future<Either<ServerFailure, ImageDetectionResponseModel>> imageDetection(
    File image,
  );
}
