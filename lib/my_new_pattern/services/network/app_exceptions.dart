class AppException implements Exception {
  final String message;
  AppException(this.message);

  @override
  String toString() => message;
}

class InternetException extends AppException {
  InternetException() : super('No Internet Connection');
}

class NoInternetException extends AppException {
  NoInternetException() : super('No Internet Connection');
}

class RequestTimeoutException extends AppException {
  RequestTimeoutException() : super('Request timed out');
}

class FetchDataException extends AppException {
  FetchDataException(String message) : super(message);
}

class UnauthorizedException extends AppException {
  UnauthorizedException() : super('Unauthorized access');
}
