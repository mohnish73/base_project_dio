import 'package:flutter/material.dart';

import 'api_response.dart';


class GlobalDialog {
  static void showError(
      BuildContext context,
      ApiResponse response,
      ) {
    String message = _getMessage(response);

    if (message.isEmpty) return;

    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: const Text('Error'),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () =>
                Navigator.of(dialogContext).pop(),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  static String _getMessage(ApiResponse response) {
    switch (response.status) {
      case ApiStatus.noInternet:
        return 'No internet connection. Please try again.';
      case ApiStatus.unauthorized:
        return 'Unauthorized access. Please login again.';
      case ApiStatus.error:
        return response.message ?? 'Something went wrong';
      default:
        return '';
    }
  }
}
