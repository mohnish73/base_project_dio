import 'package:flutter/cupertino.dart';
import 'package:genricclasstry/my_new_pattern/model/all_contact_response.dart';
import 'package:genricclasstry/my_new_pattern/services/network/response/base_api_handler.dart';

import '../model/login_model.dart';
import '../repo/contact_repo.dart';
import '../services/network/response/api_response.dart';

class ContactProvider  extends ChangeNotifier {

   final _api=ContactRepo();

  ApiResponse<AllContactResponse> contactResponse = ApiResponse.idle();
  ApiResponse<AllContactResponse> get response => contactResponse;

  Future<void> contactListApi() async {

    contactResponse = ApiResponse.loading();
    notifyListeners();

    contactResponse = await ApiHandler.handle<AllContactResponse>(
        apiCall: () =>
            _api.contactListAPi(userId: '',
                adminUserId: '121',
                order: 'desc',
                page: '1',
                size: '10',
                sortBy: 'createdDate'),
        parser: (json) =>AllContactResponse.fromJson(json)
    );

    notifyListeners();


  }






}