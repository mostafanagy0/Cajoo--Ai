import 'package:cajoo/core/networking/error_model.dart';
import 'package:dio/dio.dart';

class ServerFailure {
  final String message;
  final List<ErrorModel>? errors;

  ServerFailure(this.message, {this.errors});

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure("Connection Timeout with API server");
      case DioExceptionType.sendTimeout:
        return ServerFailure("Send Timeout with API server");
      case DioExceptionType.receiveTimeout:
        return ServerFailure("Receive Timeout with API server");
      case DioExceptionType.badCertificate:
        return ServerFailure("Bad Certificate");
      case DioExceptionType.badResponse:
        final statusCode = dioError.response?.statusCode;
        final data = dioError.response?.data;

        if (data != null) {
          String apiErrorMessage = data['message'] ?? "Something went wrong";
          List<ErrorModel>? errorsList;

          if (data['errors'] != null) {
            errorsList = List<ErrorModel>.from(
                data['errors'].map((e) => ErrorModel.fromJson(e)));
          }

          return ServerFailure(apiErrorMessage, errors: errorsList);
        } else {
          return ServerFailure("Received invalid status code: $statusCode");
        }
      case DioExceptionType.cancel:
        return ServerFailure("Request to API server was cancelled");
      case DioExceptionType.connectionError:
        return ServerFailure("Connection Error");
      case DioExceptionType.unknown:
        if (dioError.message!.contains("SocketException")) {
          return ServerFailure("No Internet Connection");
        }
        return ServerFailure("Unexpected error occurred");
      default:
        return ServerFailure("Something went wrong");
    }
  }

  factory ServerFailure.fromMessage(String message) {
    return ServerFailure(message);
  }
}
