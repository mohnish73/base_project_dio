import 'package:flutter/cupertino.dart';
import '../core/storage/hive_service.dart';
import '../model/login_model.dart';
import '../repo/login_repo_test.dart';
import '../services/network/response/api_response.dart';
import '../services/network/response/base_api_handler.dart';
  // Ensure this path is correct

class LoginProviderTest extends ChangeNotifier {
  final _api = LoginRepoTest();

  ApiResponse<MobileLoginModel> loginResponse = ApiResponse.idle();

  ApiResponse<MobileLoginModel> get response => loginResponse;

  Future<void> login({
    required String userName,
    required String password,
  }) async {
    // 1. Set state to loading
    loginResponse = ApiResponse.loading();
    notifyListeners();

    // 2. Use ApiHandler to manage the request and exceptions
    loginResponse = await ApiHandler.handle<MobileLoginModel>(
      apiCall: () => _api.login(data: {
        "userName": userName,
        "password": password,
      }),
      parser: (json) => MobileLoginModel.fromJson(json),
    );

    // 3. If login is successful, save data to Hive
    if (loginResponse.status == ApiStatus.success) {
      final userData = loginResponse.data?.data;

      if (userData != null) {
        // Save token
        if (userData.token != null) {
          HiveService.saveToken(userData.token!);
        }

        // Save other user info
        HiveService.saveUserData(
          name: userData.name ?? "User",
          userId: userData.userId ?? "",
          userType: userData.userType ?? "",
          adminUserId: userData.adminUserId ?? "",
        );
      }
    }

    // 4. Notify UI of the result (Success or Error)
    notifyListeners();
  }
}