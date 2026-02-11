import 'package:hive/hive.dart';

class HiveService {
  static const _authBox = 'authBox';

  // Helper to get the box safely
  static Box _getBox() {
    if (!Hive.isBoxOpen(_authBox)) {
      // This usually means main() didn't finish awaiting openBox
      throw Exception("Hive Box $_authBox is not open. Call await Hive.openBox('$_authBox') in main.");
    }
    return Hive.box(_authBox);
  }

  /// 🔐 Token
  static String? getToken() => _getBox().get('token');

  static void saveToken(String token) => _getBox().put('token', token);

  static void clearToken() => _getBox().delete('token');

  /// 👤 User Info
  static void saveUserData({
    required String name,
    required String userId,
    required String userType,
  }) {
    final box = _getBox();
    box.put('name', name);
    box.put('userId', userId);
    box.put('userType', userType);
  }

  static String? getName() => _getBox().get('name');
  static String? getUserId() => _getBox().get('userId');
  static String? getUserType() => _getBox().get('userType');

  /// 🧹 Clear everything on logout
  static void clearAll() => _getBox().clear();
}