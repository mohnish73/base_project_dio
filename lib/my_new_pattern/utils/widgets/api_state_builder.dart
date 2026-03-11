import 'package:flutter/material.dart';

import '../../services/network/response/api_response.dart';
import 'no_internet_widget.dart';

/// Generic widget that handles ALL [ApiResponse] states automatically.
///
/// You only write the success UI. Every error/loading state is handled
/// internally — no switch-case needed on any screen.
///
/// Basic usage:
/// ```dart
/// ApiStateBuilder<List<Contact>>(
///   response: provider.response,
///   onRetry: () => provider.fetchContacts(),
///   builder: (contacts) => ContactListView(contacts),
/// )
/// ```
///
/// Optional overrides:
/// ```dart
/// ApiStateBuilder<User>(
///   response: provider.response,
///   onRetry: () => provider.fetchUser(),
///   loadingWidget: MyShimmerLoader(),      // custom loading
///   emptyWidget: const Text('No users'),   // shown when data is null
///   builder: (user) => UserCard(user),
/// )
/// ```
class ApiStateBuilder<T> extends StatelessWidget {
  /// The current API response to react to.
  final ApiResponse<T> response;

  /// Called when the user taps "Try Again" on any error screen.
  final VoidCallback onRetry;

  /// Builds the success UI. [data] is guaranteed non-null here.
  final Widget Function(T data) builder;

  /// Shown while [ApiStatus.loading]. Defaults to a centered spinner.
  final Widget? loadingWidget;

  /// Shown when status is success but [response.data] is null.
  final Widget? emptyWidget;

  const ApiStateBuilder({
    super.key,
    required this.response,
    required this.onRetry,
    required this.builder,
    this.loadingWidget,
    this.emptyWidget,
  });

  @override
  Widget build(BuildContext context) {
    switch (response.status) {
      case ApiStatus.idle:
        return const SizedBox.shrink();

      case ApiStatus.loading:
        return loadingWidget ??
            const Center(child: CircularProgressIndicator());

      case ApiStatus.noInternet:
        return NoInternetWidget(onRetry: onRetry);

      case ApiStatus.timeout:
        return _ErrorBody(
          icon: Icons.schedule_rounded,
          color: const Color(0xFFD97706),
          title: 'Request Timed Out',
          message:
              'The request took too long. Check your connection and try again.',
          onRetry: onRetry,
        );

      case ApiStatus.serverError:
        return _ErrorBody(
          icon: Icons.cloud_off_rounded,
          color: const Color(0xFF7C3AED),
          title: 'Server Error',
          message: 'Something went wrong on our end. Please try again later.',
          onRetry: onRetry,
        );

      case ApiStatus.unauthorized:
        return _ErrorBody(
          icon: Icons.lock_rounded,
          color: const Color(0xFFDC2626),
          title: 'Session Expired',
          message: 'Your session has expired. Please log in again.',
          onRetry: onRetry,
        );

      case ApiStatus.forbidden:
        return _ErrorBody(
          icon: Icons.block_rounded,
          color: const Color(0xFFEA580C),
          title: 'Access Denied',
          message: "You don't have permission to view this content.",
          onRetry: onRetry,
        );

      case ApiStatus.error:
        return _ErrorBody(
          icon: Icons.error_outline_rounded,
          color: const Color(0xFFD97706),
          title: 'Something Went Wrong',
          message: response.message ?? 'An unexpected error occurred.',
          onRetry: onRetry,
        );

      case ApiStatus.success:
        final data = response.data;
        if (data == null) {
          return emptyWidget ??
              const Center(child: Text('No data available.'));
        }
        return builder(data);
    }
  }
}

// ── Internal error body ───────────────────────────────────────────────────────

class _ErrorBody extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String title;
  final String message;
  final VoidCallback onRetry;

  const _ErrorBody({
    required this.icon,
    required this.color,
    required this.title,
    required this.message,
    required this.onRetry,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 36),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 88,
              height: 88,
              decoration: BoxDecoration(
                color: color.withValues(alpha: 0.10),
                shape: BoxShape.circle,
              ),
              child: Icon(icon, size: 42, color: color),
            ),
            const SizedBox(height: 24),
            Text(
              title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF0F172A),
                  ),
            ),
            const SizedBox(height: 10),
            Text(
              message,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: const Color(0xFF64748B),
                    height: 1.6,
                  ),
            ),
            const SizedBox(height: 36),
            SizedBox(
              width: double.infinity,
              child: FilledButton.icon(
                onPressed: onRetry,
                icon: const Icon(Icons.refresh_rounded, size: 20),
                label: const Text(
                  'Try Again',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                style: FilledButton.styleFrom(
                  backgroundColor: color,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  elevation: 0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
