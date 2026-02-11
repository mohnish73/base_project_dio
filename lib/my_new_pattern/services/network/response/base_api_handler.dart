import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import 'api_response.dart';
import '../app_exceptions.dart';

class ApiHandler {
  static Future<ApiResponse<T>> handle<T>({
    required Future<Response<dynamic>> Function() apiCall,
    required T Function(dynamic json) parser,
  }) async {
    try {
      final response = await apiCall();

      if (response.data == null) {
        return ApiResponse.error("Empty server response");
      }

      final statusCode = response.statusCode ?? 0;
      final data = response.data;

      // debugPrint("✅ STATUS CODE: $statusCode");
      // debugPrint("✅ RESPONSE DATA: $data");

      // ----------------------------
      // SUCCESS RANGE (200–299)
      // ----------------------------
      if (statusCode >= 200 && statusCode < 300) {
        try {
          final parsedData = parser(data);
          return ApiResponse.success(parsedData);
        } catch (e, s) {
          debugPrint("❌ PARSER ERROR: $e");
          debugPrintStack(stackTrace: s);
          return ApiResponse.error("Data parsing failed");
        }
      }

      // ----------------------------
      // CLIENT ERRORS (400–499)
      // ----------------------------
      if (statusCode == 400) {
        return ApiResponse.error(data['message'] ?? "Bad request");
      }

      if (statusCode == 401) {
        return ApiResponse.unauthorized();
      }

      if (statusCode == 403) {
        return ApiResponse.error("Access forbidden");
      }

      if (statusCode == 404) {
        return ApiResponse.error("Resource not found");
      }

      if (statusCode == 422) {
        return ApiResponse.error(data['message'] ?? "Validation error");
      }

      if (statusCode >= 400 && statusCode < 500) {
        return ApiResponse.error(
          data['message'] ?? "Client error occurred ($statusCode)",
        );
      }

      // ----------------------------
      // SERVER ERRORS (500–599)
      // ----------------------------
      if (statusCode == 500) {
        return ApiResponse.error("Internal server error");
      }

      if (statusCode == 501) {
        return ApiResponse.error("Not implemented");
      }

      if (statusCode == 503) {
        return ApiResponse.error("Service unavailable");
      }

      if (statusCode >= 500) {
        return ApiResponse.error("Server error occurred ($statusCode)");
      }

      // ----------------------------
      // UNKNOWN STATUS
      // ----------------------------
      return ApiResponse.error("Unexpected error ($statusCode)");

    } on DioException catch (e) {
      _logDioError(e);

      switch (e.type) {
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.receiveTimeout:
        case DioExceptionType.sendTimeout:
          return ApiResponse.error("Request timeout. Please try again.");

        case DioExceptionType.badCertificate:
          return ApiResponse.error("Invalid SSL certificate");

        case DioExceptionType.cancel:
          return ApiResponse.error("Request cancelled");

        case DioExceptionType.connectionError:
          return ApiResponse.noInternet();

        case DioExceptionType.badResponse:
          final statusCode = e.response?.statusCode ?? 0;
          return ApiResponse.error(
            e.response?.data?['message'] ??
                "Server error ($statusCode)",
          );

        case DioExceptionType.unknown:
        default:
          return ApiResponse.error("Network error occurred");
      }
    } on AppException catch (e) {
      return ApiResponse.error(e.message);
    } catch (e, s) {
      debugPrint("❌ UNKNOWN ERROR: $e");
      debugPrintStack(stackTrace: s);
      return ApiResponse.error("Something went wrong");
    }
  }

  static void _logDioError(DioException e) {
    debugPrint("❌ DIO ERROR");
    debugPrint("URL: ${e.requestOptions.uri}");
    debugPrint("Method: ${e.requestOptions.method}");
    debugPrint("Type: ${e.type}");
    debugPrint("Status: ${e.response?.statusCode}");
    debugPrint("Message: ${e.message}");
    debugPrint("Response: ${e.response?.data}");
  }
}
