import 'package:dio/dio.dart';
import '../../../core/storage/hive_service.dart';
import 'dio_logging_interceptor.dart';

class DioClient {
  static final Dio dio =
      Dio(
          BaseOptions(
            connectTimeout: const Duration(seconds: 15),
            receiveTimeout: const Duration(seconds: 15),
            responseType: ResponseType.json,
          ),
        )
        ..interceptors.add(
          InterceptorsWrapper(
            onRequest: (options, handler) {
              final requiresAuth = options.extra['requiresAuth'] ?? true;

              if (requiresAuth) {
           //     final token = HiveService.getToken();


                final token = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9";

                if (token != null && token.isNotEmpty) {
                  options.headers['Authorization'] = 'Bearer $token';
                }
              }

              handler.next(options);
            },
          ),
        )
        ..interceptors.add(DioLoggingInterceptor()); // 👈 attach logger
}
