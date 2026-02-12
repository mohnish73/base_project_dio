import 'package:dio/dio.dart';

import '../services/network/app_url.dart';
import '../services/network/network_api_services.dart';

class ContactRepo {
  final _apiService = NetworkApiServicesDio();

  Future<Response<dynamic>> contactListAPi({
    required String userId,
    required String adminUserId,
    required String order,
    required String page,
    required String size,
    required String sortBy,

}) async {
    return await _apiService.getApiWithToken("${AppUrl.getAllContactByAdminWithPagination}?userId=$userId&adminUserId=$adminUserId&order=$order&page=$page&size=$size&sortBy=$sortBy");
  }
}
