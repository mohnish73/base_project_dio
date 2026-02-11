enum ApiStatus {
  idle,
  loading,
  success,
  error,          // Generic error
  noInternet,     // Network issue
  unauthorized,   // 401
  forbidden,      // 403
  serverError,    // 500+
  timeout,        // Timeout
}

class ApiResponse<T> {
  final ApiStatus status;
  final T? data;
  final String? message;
  final int? statusCode;

  const ApiResponse._(
      this.status, {
        this.data,
        this.message,
        this.statusCode,
      });

  factory ApiResponse.idle() =>
      const ApiResponse._(ApiStatus.idle);

  factory ApiResponse.loading() =>
      const ApiResponse._(ApiStatus.loading);

  factory ApiResponse.success(T data, {int? statusCode}) =>
      ApiResponse._(
        ApiStatus.success,
        data: data,
        statusCode: statusCode,
      );

  factory ApiResponse.error(
      String msg, {
        int? statusCode,
      }) =>
      ApiResponse._(
        ApiStatus.error,
        message: msg,
        statusCode: statusCode,
      );

  factory ApiResponse.noInternet() =>
      const ApiResponse._(
        ApiStatus.noInternet,
        message: "No Internet Connection",
      );

  factory ApiResponse.unauthorized() =>
      const ApiResponse._(
        ApiStatus.unauthorized,
        message: "Unauthorized access",
      );

  factory ApiResponse.forbidden() =>
      const ApiResponse._(
        ApiStatus.forbidden,
        message: "Access forbidden",
      );

  factory ApiResponse.serverError({int? statusCode}) =>
      ApiResponse._(
        ApiStatus.serverError,
        message: "Server error occurred",
        statusCode: statusCode,
      );

  factory ApiResponse.timeout() =>
      const ApiResponse._(
        ApiStatus.timeout,
        message: "Request timeout",
      );
}


