import 'package:flutter/material.dart';

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
class GlobalErrorHandler {
  GlobalErrorHandler._();

  static void handle<T>(BuildContext context, ApiResponse<T> response) {
    switch (response.status) {
      case ApiStatus.noInternet:
        _showDialog(context, "No internet connection. Please check your network and try again.");
        break;

      case ApiStatus.timeout:
        _showDialog(context, "The request timed out. Please try again.");
        break;

      case ApiStatus.unauthorized:
        _showDialog(context, "Your session has expired. Please log in again.");
        _handleUnauthorized(context);
        break;

      case ApiStatus.forbidden:
        _showDialog(context, "You don't have permission to perform this action.");
        break;

      case ApiStatus.serverError:
        _showDialog(context, "A server error occurred. Please try again later.");
        break;

      case ApiStatus.error:
        _showDialog(context, response.message ?? "Something went wrong. Please try again.");
        break;

      case ApiStatus.idle:
      case ApiStatus.loading:
      case ApiStatus.success:
        // Nothing to show.
        break;
    }
  }

  static void _showDialog(BuildContext context, String message) {
    if (!context.mounted) return;

    showDialog<void>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Error'),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  static void _handleUnauthorized(BuildContext context) {
    // Uncomment when routing is set up:
    // HiveService.clearAll();
    // Navigator.of(context).pushNamedAndRemoveUntil('/login', (_) => false);
  }
}
