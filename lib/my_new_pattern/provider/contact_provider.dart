import 'package:flutter/cupertino.dart';
import 'package:genricclasstry/my_new_pattern/model/all_contact_response.dart';
import 'package:genricclasstry/my_new_pattern/services/network/response/base_api_handler.dart';

import '../core/storage/hive_service.dart';
import '../model/login_model.dart';
import '../repo/contact_repo.dart';
import '../services/network/response/api_response.dart';

class ContactProvider extends ChangeNotifier {
  final _api = ContactRepo();

  ApiResponse<AllContactResponse> _response = ApiResponse.idle();
  ApiResponse<AllContactResponse> get response => _response;

  List<ContactDetails> _contacts = [];
  List<ContactDetails> get contacts => _contacts;

  int _page = 1;
  final int _size = 30;

  bool _isLoadingMore = false;
  bool get isLoadingMore => _isLoadingMore;

  bool _hasMore = true;
  bool get hasMore => _hasMore;

  /// ===========================
  /// INITIAL LOAD
  /// ===========================
  Future<void> contactListApi() async {
    _page = 1;
    _hasMore = true;
    _contacts.clear();

    _response = ApiResponse.loading();
    notifyListeners();

    final result = await _fetchContacts();

    if (result.status == ApiStatus.success) {
      final list = List<ContactDetails>.from(
        result.data?.data?.contactDetails ?? [],
      );

      _contacts = list;

      if (list.length < _size) {
        _hasMore = false;
      }
    }

    _response = result;
    notifyListeners();
  }

  /// ===========================
  /// LOAD MORE (Pagination)
  /// ===========================
  Future<void> loadMore() async {
    if (_isLoadingMore || !_hasMore) return;

    _isLoadingMore = true;
    notifyListeners();

    _page++;

    final result = await _fetchContacts(isPagination: true);

    if (result.status == ApiStatus.success) {
      final newList = List<ContactDetails>.from(
        result.data?.data?.contactDetails ?? [],
      );

      if (newList.length < _size) {
        _hasMore = false;
      }

      _contacts.addAll(newList);
    }

    _isLoadingMore = false;
    notifyListeners();
  }

  /// ===========================
  /// COMMON API CALL
  /// ===========================
  Future<ApiResponse<AllContactResponse>> _fetchContacts({
    bool isPagination = false,
  }) async {
    return await ApiHandler.handle<AllContactResponse>(
      apiCall: () => _api.contactListAPi(
        userId: '',
        // adminUserId: '121',
        adminUserId: HiveService.getAdminUserId().toString(),
        order: 'desc',
        page: _page.toString(),
        size: _size.toString(),
        sortBy: 'createdDate',
      ),
      parser: (json) => AllContactResponse.fromJson(json),
    );
  }
}
