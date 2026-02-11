import 'package:dio/dio.dart';

import '../services/network/app_url.dart';
import '../services/network/network_api_services.dart';

class LoginRepoTest {


  final _apiService = NetworkApiServicesDio();

  // Future<dynamic> login({required Map data}) async {
  //    dynamic response = await _apiService.postApi(data, AppUrl.login);
  //   return response;
  // }

  Future<Response<dynamic>> login({required Map<String, dynamic> data,
  }) async {
    return await _apiService.postApi(
      data,
      AppUrl.login,
    );
  }

}