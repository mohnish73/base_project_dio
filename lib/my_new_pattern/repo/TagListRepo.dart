import '../services/network/app_url.dart';
import '../services/network/network_api_services.dart';

class TagListRepo {



  final _apiService = NetworkApiServicesDio();

  Future<dynamic> tagListAPi({required Map data}) async {
    // dynamic response = await _apiService.postApi(data, AppUrl.login);
    //
    // return response;
  }
}