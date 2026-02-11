import 'package:flutter/material.dart';

import 'global_dialog.dart';
import 'api_response.dart';

class GlobalErrorHandler {
  static void handle<T>(
      BuildContext context,
      ApiResponse<T> response,
      ) {
    switch (response.status) {
      case ApiStatus.error:
        _show(context, response.message ?? "Something went wrong");
        break;

      case ApiStatus.noInternet:
        _show(context, "No Internet Connection");
        break;

      case ApiStatus.timeout:
        _show(context, "Request timeout. Please try again.");
        break;

      case ApiStatus.unauthorized:
        _show(context, "Session expired. Please login again.");
        _handleUnauthorized(context);
        break;

      case ApiStatus.forbidden:
        _show(context, "Access denied.");
        break;

      case ApiStatus.serverError:
        _show(context, "Server error. Please try later.");
        break;

      case ApiStatus.idle:
      case ApiStatus.loading:
      case ApiStatus.success:
      // Do nothing
        break;
    }
  }

  static void _show(BuildContext context, String message) {
    GlobalDialog.showError(
      context,
      ApiResponse.error(message),
    );
  }

  static void _handleUnauthorized(BuildContext context) {
    // Optional: Auto logout logic
    // HiveService.clear();
    // Navigator.pushNamedAndRemoveUntil(context, '/login', (_) => false);
  }
}
