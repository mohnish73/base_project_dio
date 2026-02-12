import 'dart:io';
import 'package:dio/dio.dart';

import 'base_api_services.dart';
import 'app_exceptions.dart';
import 'dio_client/dio_clinet.dart';
import 'dio_client/dio_exception_mapper.dart';

class NetworkApiServicesDio extends BaseApiServices {

  @override
  Future<Response<dynamic>> getApi(String url) async {
    bool requiresAuth = false;
    try {
      return await DioClient.dio.get(url,
        options: Options(
        extra: {'requiresAuth': requiresAuth},
      ),);
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  @override
  Future<Response<dynamic>> getApiWithToken(String url) async {
    bool requiresAuth = true;
    try {
      return await DioClient.dio.get(url,options: Options(
        extra: {'requiresAuth': requiresAuth},
      ),);
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  @override
  Future<Response<dynamic>> postApi(
      Map<String, dynamic> data,
      String url, {
        bool requiresAuth = false,
      }) {
    return DioClient.dio.post(
      url,
      data: data,
      options: Options(
        extra: {'requiresAuth': requiresAuth},
      ),
    );
  }


  @override
  Future<Response<dynamic>> postApiWithToken(
      Map<String, dynamic> data,
      String url,
      ) async {
    bool requiresAuth = true;
    try {
      return await DioClient.dio.post(
        url,
        data: data,
        options: Options(
          extra: {'requiresAuth': requiresAuth},
        ),
      );
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  @override
  Future<Response<dynamic>> deleteApiWithToken(String url) async {
    try {
      return await DioClient.dio.delete(url);
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  @override
  Future<Response<dynamic>> patchApiWithToken(
      Map<String, dynamic> data,
      String url,
      ) async {
    try {
      return await DioClient.dio.patch(
        url,
        data: data,
      );
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  @override
  Future<Response<dynamic>> multipartApi({
    Map<String, String>? data,
    String? url,
    File? profileImg,
  }) async {
    try {
      final formData = FormData.fromMap({
        ...?data,
        if (profileImg != null)
          'file': await MultipartFile.fromFile(profileImg.path),
      });

      return await DioClient.dio.post(
        url!,
        data: formData,
      );
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }

  @override
  Future<Response<dynamic>> multipartApiForPanAndAadhaar({
    Map<String, String>? data,
    String? url,
    File? profileImg,
    File? aadhaarFile,
    File? panImage,
  }) async {
    try {
      final formData = FormData.fromMap({
        ...?data,
        if (profileImg != null)
          'photo': await MultipartFile.fromFile(profileImg.path),
        if (aadhaarFile != null)
          'aadharcard_photo': await MultipartFile.fromFile(aadhaarFile.path),
        if (panImage != null)
          'pancard_photo': await MultipartFile.fromFile(panImage.path),
      });

      return await DioClient.dio.post(
        url!,
        data: formData,
      );
    } on DioException catch (e) {
      throw mapDioError(e);
    }
  }
}
