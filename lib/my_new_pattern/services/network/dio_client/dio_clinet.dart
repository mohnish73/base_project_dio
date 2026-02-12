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
                 final token = HiveService.getToken();


                //final token = "eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJ2c2VlbiIsImlhdCI6MTc3MDg5MzM5NCwiZXhwIjoxNzcwOTkzNTI0fQ.c5UU4xPHqvGrk31rugsZ1hBmLRuHYx4ckr2M4b0IDMeC6V-qx8W3wlgdqskZRTAeBzDhRjmXnLm3HhGE4RWHXw";

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
