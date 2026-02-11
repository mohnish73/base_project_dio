import 'package:dio/dio.dart';
 import '../app_exceptions.dart';

AppException mapDioError(DioException e) {
  switch (e.type) {
    case DioExceptionType.connectionTimeout:
    case DioExceptionType.receiveTimeout:
      return RequestTimeoutException();

    case DioExceptionType.connectionError:
      return NoInternetException();

    case DioExceptionType.badResponse:
      if (e.response?.statusCode == 401) {
        return UnauthorizedException();
      }
      return FetchDataException(
        e.response?.data.toString() ?? 'Something went wrong',
      );

    default:
      return FetchDataException('Unexpected error occurred');
  }
}
