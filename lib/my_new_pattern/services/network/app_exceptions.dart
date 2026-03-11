/// Base class for all app-level exceptions.
class AppException implements Exception {
  final String message;
  const AppException(this.message);

  @override
  String toString() => message;
}

class NoInternetException extends AppException {
  const NoInternetException() : super('No Internet Connection');
}

class RequestTimeoutException extends AppException {
  const RequestTimeoutException() : super('Request timed out');
}

class UnauthorizedException extends AppException {
  const UnauthorizedException() : super('Unauthorized access');
}

class ForbiddenException extends AppException {
  const ForbiddenException() : super('Access forbidden');
}

class ServerException extends AppException {
  const ServerException([super.message = 'Server error occurred']);
}

class FetchDataException extends AppException {
  const FetchDataException([super.message = 'Failed to fetch data']);
}
