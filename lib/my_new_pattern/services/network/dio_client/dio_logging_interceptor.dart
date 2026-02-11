import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class DioLoggingInterceptor extends Interceptor {

  @override
  void onRequest(
      RequestOptions options,
      RequestInterceptorHandler handler,
      ) {
    if (kDebugMode) {
      debugPrint('''
➡️ REQUEST
URL: ${options.method} ${options.uri}
Headers: ${options.headers}
Query: ${options.queryParameters}
Body: ${options.data}
''');
    }
    super.onRequest(options, handler);
  }

  @override
  void onResponse(
      Response response,
      ResponseInterceptorHandler handler,
      ) {
    if (kDebugMode) {
      debugPrint('''
✅ RESPONSE
URL: ${response.requestOptions.uri}
Status: ${response.statusCode}
Data: ${response.data}
''');
    }
    super.onResponse(response, handler);
  }

  @override
  void onError(
      DioException err,
      ErrorInterceptorHandler handler,
      ) {
    if (kDebugMode) {
      if (kDebugMode) {
        print('--- DIO ERROR TYPE: ${err.type} ---');
        print('--- ERROR MESSAGE: ${err.error} ---'); // This will show the SocketException detail
      }

      debugPrint('''
❌ ERROR
URL: ${err.requestOptions.uri}
Status: ${err.response?.statusCode}
Message: ${err.message}
Response: ${err.response?.data}
''');
    }
    super.onError(err, handler);
  }
}
