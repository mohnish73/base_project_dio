import 'dart:io';
import 'package:dio/dio.dart';

import 'base_api_services.dart';
import 'dio_client/dio_clinet.dart';

/// Thin network layer — makes raw Dio calls and returns [Response].
///
/// No error handling here by design. All [DioException]s bubble up to
/// [ApiHandler.handle()] which is the single place that maps them to
/// typed [ApiResponse] values.
class NetworkApiServicesDio extends BaseApiServices {
  @override
  Future<Response<dynamic>> getApi(String url) =>
      DioClient.dio.get(
        url,
        options: Options(extra: {'requiresAuth': false}),
      );

  @override
  Future<Response<dynamic>> getApiWithToken(String url) =>
      DioClient.dio.get(
        url,
        options: Options(extra: {'requiresAuth': true}),
      );

  @override
  Future<Response<dynamic>> postApi(
    Map<String, dynamic> data,
    String url, {
    bool requiresAuth = false,
  }) =>
      DioClient.dio.post(
        url,
        data: data,
        options: Options(extra: {'requiresAuth': requiresAuth}),
      );

  @override
  Future<Response<dynamic>> postApiWithToken(
    Map<String, dynamic> data,
    String url,
  ) =>
      DioClient.dio.post(
        url,
        data: data,
        options: Options(extra: {'requiresAuth': true}),
      );

  @override
  Future<Response<dynamic>> deleteApiWithToken(String url) =>
      DioClient.dio.delete(
        url,
        options: Options(extra: {'requiresAuth': true}),
      );

  @override
  Future<Response<dynamic>> patchApiWithToken(
    Map<String, dynamic> data,
    String url,
  ) =>
      DioClient.dio.patch(
        url,
        data: data,
        options: Options(extra: {'requiresAuth': true}),
      );

  @override
  Future<Response<dynamic>> multipartApi({
    Map<String, String>? data,
    String? url,
    File? profileImg,
  }) async {
    assert(url != null, 'url must not be null for multipartApi');
    final formData = FormData.fromMap({
      ...?data,
      if (profileImg != null)
        'file': await MultipartFile.fromFile(profileImg.path),
    });
    return DioClient.dio.post(
      url!,
      data: formData,
      options: Options(extra: {'requiresAuth': true}),
    );
  }

  @override
  Future<Response<dynamic>> multipartApiForPanAndAadhaar({
    Map<String, String>? data,
    String? url,
    File? profileImg,
    File? aadhaarFile,
    File? panImage,
  }) async {
    assert(url != null, 'url must not be null for multipartApiForPanAndAadhaar');
    final formData = FormData.fromMap({
      ...?data,
      if (profileImg != null)
        'photo': await MultipartFile.fromFile(profileImg.path),
      if (aadhaarFile != null)
        'aadharcard_photo': await MultipartFile.fromFile(aadhaarFile.path),
      if (panImage != null)
        'pancard_photo': await MultipartFile.fromFile(panImage.path),
    });
    return DioClient.dio.post(
      url!,
      data: formData,
      options: Options(extra: {'requiresAuth': true}),
    );
  }
}
