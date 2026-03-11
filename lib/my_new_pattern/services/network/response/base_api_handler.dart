import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import 'api_response.dart';
import '../app_exceptions.dart';

/// Single centralized error-handling point for all API calls.
///
/// Usage in providers:
///   final result = await ApiHandler.handle(
///     apiCall: () => _repo.fetchSomething(),
///     parser: (json) => MyModel.fromJson(json),
///   );
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

      // ── SUCCESS (200–299) ──────────────────────────────────────────────────
      if (statusCode >= 200 && statusCode < 300) {
        try {
          return ApiResponse.success(parser(data), statusCode: statusCode);
        } catch (e, s) {
          debugPrint("❌ PARSER ERROR: $e");
          debugPrintStack(stackTrace: s);
          return ApiResponse.error("Data parsing failed");
        }
      }

      // ── CLIENT ERRORS (400–499) ────────────────────────────────────────────
      if (statusCode == 400) {
        return ApiResponse.error(_extractMessage(data) ?? "Bad request", statusCode: statusCode);
      }

      if (statusCode == 401) return ApiResponse.unauthorized();

      if (statusCode == 403) return ApiResponse.forbidden();

      if (statusCode == 404) {
        return ApiResponse.error("Resource not found", statusCode: statusCode);
      }

      if (statusCode == 422) {
        return ApiResponse.error(_extractMessage(data) ?? "Validation error", statusCode: statusCode);
      }

      if (statusCode >= 400 && statusCode < 500) {
        return ApiResponse.error(
          _extractMessage(data) ?? "Client error ($statusCode)",
          statusCode: statusCode,
        );
      }

      // ── SERVER ERRORS (500–599) ────────────────────────────────────────────
      if (statusCode >= 500) {
        return ApiResponse.serverError(statusCode: statusCode);
      }

      // ── UNKNOWN ───────────────────────────────────────────────────────────
      return ApiResponse.error("Unexpected response ($statusCode)", statusCode: statusCode);

    } on DioException catch (e) {
      _logDioError(e);

      switch (e.type) {
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.receiveTimeout:
        case DioExceptionType.sendTimeout:
          return ApiResponse.timeout();

        case DioExceptionType.connectionError:
          return ApiResponse.noInternet();

        case DioExceptionType.badResponse:
          final code = e.response?.statusCode ?? 0;
          if (code == 401) return ApiResponse.unauthorized();
          if (code == 403) return ApiResponse.forbidden();
          if (code >= 500) return ApiResponse.serverError(statusCode: code);
          return ApiResponse.error(
            _extractMessage(e.response?.data) ?? "Server error ($code)",
            statusCode: code,
          );

        case DioExceptionType.badCertificate:
          return ApiResponse.error("Invalid SSL certificate");

        case DioExceptionType.cancel:
          return ApiResponse.error("Request was cancelled");

        case DioExceptionType.unknown:
          return ApiResponse.error("Network error. Please check your connection.");
      }

    } on AppException catch (e) {
      // Thrown from outside (e.g. HiveService, parsers, etc.)
      return ApiResponse.error(e.message);

    } catch (e, s) {
      debugPrint("❌ UNKNOWN ERROR: $e");
      debugPrintStack(stackTrace: s);
      return ApiResponse.error("Something went wrong. Please try again.");
    }
  }

  // ── Helpers ──────────────────────────────────────────────────────────────

  /// Tries to pull a human-readable message out of a raw API response body.
  static String? _extractMessage(dynamic data) {
    if (data is Map) {
      return data['message']?.toString() ??
          data['error']?.toString() ??
          data['detail']?.toString();
    }
    return null;
  }

  static void _logDioError(DioException e) {
    debugPrint("❌ DIO ERROR ──────────────────────────");
    debugPrint("  URL    : ${e.requestOptions.uri}");
    debugPrint("  Method : ${e.requestOptions.method}");
    debugPrint("  Type   : ${e.type}");
    debugPrint("  Status : ${e.response?.statusCode}");
    debugPrint("  Message: ${e.message}");
    debugPrint("  Body   : ${e.response?.data}");
    debugPrint("────────────────────────────────────────");
  }
}
