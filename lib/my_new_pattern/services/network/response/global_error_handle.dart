import 'package:flutter/material.dart';

import '../../../utils/widgets/app_error_dialog.dart';
import 'api_response.dart';

/// Centralized UI-layer error handler.
///
/// Call [GlobalErrorHandler.handle()] after any API operation that fails
/// and you want to show a dialog to the user.
///
/// Example:
///   final response = await ApiHandler.handle(...);
///   if (response.status != ApiStatus.success) {
///     GlobalErrorHandler.handle(context, response);
///   }
///
/// Pass [onRetry] to show a "Try Again" button inside the dialog.
class GlobalErrorHandler {
  GlobalErrorHandler._();

  static void handle<T>(
    BuildContext context,
    ApiResponse<T> response, {
    VoidCallback? onRetry,
  }) {
    switch (response.status) {
      case ApiStatus.noInternet:
      case ApiStatus.timeout:
      case ApiStatus.unauthorized:
      case ApiStatus.forbidden:
      case ApiStatus.serverError:
      case ApiStatus.error:
        AppErrorDialog.show(context, response, onRetry: onRetry);
        if (response.status == ApiStatus.unauthorized) {
          _handleUnauthorized(context);
        }
        break;

      case ApiStatus.idle:
      case ApiStatus.loading:
      case ApiStatus.success:
        // Nothing to show.
        break;
    }
  }

  static void _handleUnauthorized(BuildContext context) {
    // Uncomment when routing is set up:
    // HiveService.clearAll();
    // Navigator.of(context).pushNamedAndRemoveUntil('/login', (_) => false);
  }
}
