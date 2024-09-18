import 'package:dio/dio.dart';
import '../errors/api_error_model.dart';

class ServerException implements Exception {
  final ApiErrorModel error;

  ServerException({required this.error});
}

void handleDioException(DioException e) {
  switch (e.type) {
    case DioExceptionType.cancel:
      throw ServerException(
        error: ApiErrorModel.fromJson(e.response!.data),
      );
    case DioExceptionType.connectionTimeout:
      throw ServerException(
        error: ApiErrorModel.fromJson(e.response!.data),
      );
    case DioExceptionType.sendTimeout:
      throw ServerException(
        error: ApiErrorModel.fromJson(e.response!.data),
      );
    case DioExceptionType.receiveTimeout:
      throw ServerException(
        error: ApiErrorModel.fromJson(e.response!.data),
      );
    case DioExceptionType.badCertificate:
      throw ServerException(
        error: ApiErrorModel.fromJson(e.response!.data),
      );
    case DioExceptionType.connectionError:
      throw ServerException(
        error: ApiErrorModel.fromJson(e.response!.data),
      );
    case DioExceptionType.unknown:
      throw ServerException(
        error: ApiErrorModel.fromJson(e.response?.data),
      );
    case DioExceptionType.badResponse:
      _handleBadResponse(e);
  }
}

void _handleBadResponse(DioException e) {
  switch (e.response!.statusCode) {
    case 400: //bad request
      throw ServerException(
        error: ApiErrorModel.fromJson(e.response!.data),
      );
    case 401: //unauthorized
      throw ServerException(
        error: ApiErrorModel.fromJson(e.response!.data),
      );
    case 403: //forbidden
      throw ServerException(
        error: ApiErrorModel.fromJson(e.response!.data),
      );
    case 404: //not found
      throw ServerException(
        error: ApiErrorModel.fromJson(e.response!.data),
      );
    case 409: //conflict
      throw ServerException(
        error: ApiErrorModel.fromJson(e.response!.data),
      );
    case 429: //too many requests
      throw ServerException(
        error: ApiErrorModel.fromJson(e.response!.data),
      );
    case 500: //internal server error
      throw ServerException(
        error: ApiErrorModel.fromJson(e.response!.data),
      );
    default: //unhandled error
      throw ServerException(
        error: ApiErrorModel.fromJson(e.response!.data),
      );
  }
}
