import 'package:flutter/material.dart';

import '../../services/network/response/api_response.dart';

/// Professional modal bottom-sheet error dialog.
///
/// Shows an animated icon, contextual title/message, and an action button.
/// The icon and accent color are automatically chosen based on [ApiStatus].
///
/// Usage:
///   AppErrorDialog.show(context, response);
///   AppErrorDialog.show(context, response, onRetry: () => provider.reload());
class AppErrorDialog {
  AppErrorDialog._();

  static Future<void> show(
    BuildContext context,
    ApiResponse response, {
    VoidCallback? onRetry,
  }) {
    if (!context.mounted) return Future.value();

    return showModalBottomSheet<void>(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      enableDrag: true,
      builder: (_) => _ErrorSheet(response: response, onRetry: onRetry),
    );
  }
}

// ── Internal sheet widget ─────────────────────────────────────────────────────

class _ErrorSheet extends StatefulWidget {
  final ApiResponse response;
  final VoidCallback? onRetry;

  const _ErrorSheet({required this.response, this.onRetry});

  @override
  State<_ErrorSheet> createState() => _ErrorSheetState();
}

class _ErrorSheetState extends State<_ErrorSheet>
    with SingleTickerProviderStateMixin {
  late final AnimationController _iconCtrl;
  late final Animation<double> _iconScale;

  @override
  void initState() {
    super.initState();
    _iconCtrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    // Overshoot-then-settle (spring-like feel without plugins)
    _iconScale = TweenSequence<double>([
      TweenSequenceItem(
          tween: Tween(begin: 0.0, end: 1.18)
              .chain(CurveTween(curve: Curves.easeOut)),
          weight: 65),
      TweenSequenceItem(
          tween: Tween(begin: 1.18, end: 1.0)
              .chain(CurveTween(curve: Curves.easeIn)),
          weight: 35),
    ]).animate(_iconCtrl);
    _iconCtrl.forward();
  }

  @override
  void dispose() {
    _iconCtrl.dispose();
    super.dispose();
  }

  // ── Error style lookup ────────────────────────────────────────────────────

  ({IconData icon, Color color, String title, String message}) get _style {
    switch (widget.response.status) {
      case ApiStatus.noInternet:
        return (
          icon: Icons.wifi_off_rounded,
          color: const Color(0xFF0284C7),
          title: 'No Internet',
          message:
              'You appear to be offline. Check your Wi-Fi or mobile data and try again.',
        );
      case ApiStatus.timeout:
        return (
          icon: Icons.schedule_rounded,
          color: const Color(0xFFD97706),
          title: 'Request Timed Out',
          message:
              'The request took too long to complete. Please check your connection and try again.',
        );
      case ApiStatus.unauthorized:
        return (
          icon: Icons.lock_rounded,
          color: const Color(0xFFDC2626),
          title: 'Session Expired',
          message:
              'Your session has expired. Please log in again to continue.',
        );
      case ApiStatus.forbidden:
        return (
          icon: Icons.block_rounded,
          color: const Color(0xFFEA580C),
          title: 'Access Denied',
          message:
              "You don't have permission to perform this action. Contact support if this seems wrong.",
        );
      case ApiStatus.serverError:
        return (
          icon: Icons.cloud_off_rounded,
          color: const Color(0xFF7C3AED),
          title: 'Server Error',
          message:
              'Our servers are experiencing issues right now. Please try again in a few minutes.',
        );
      default:
        return (
          icon: Icons.error_outline_rounded,
          color: const Color(0xFFD97706),
          title: 'Something Went Wrong',
          message: widget.response.message ??
              'An unexpected error occurred. Please try again.',
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    final s = _style;

    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
      ),
      padding: EdgeInsets.fromLTRB(
        24,
        12,
        24,
        24 + MediaQuery.of(context).viewInsets.bottom,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // ── Drag handle ─────────────────────────────────────────────────
          Container(
            width: 42,
            height: 4,
            decoration: BoxDecoration(
              color: const Color(0xFFE2E8F0),
              borderRadius: BorderRadius.circular(2),
            ),
          ),

          const SizedBox(height: 28),

          // ── Animated icon badge ──────────────────────────────────────────
          ScaleTransition(
            scale: _iconScale,
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: s.color.withValues(alpha: 0.10),
                shape: BoxShape.circle,
              ),
              child: Icon(s.icon, size: 38, color: s.color),
            ),
          ),

          const SizedBox(height: 20),

          // ── Title ────────────────────────────────────────────────────────
          Text(
            s.title,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w700,
                  color: const Color(0xFF0F172A),
                  letterSpacing: -0.3,
                ),
          ),

          const SizedBox(height: 10),

          // ── Message ──────────────────────────────────────────────────────
          Text(
            s.message,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: const Color(0xFF64748B),
                  height: 1.6,
                ),
          ),

          const SizedBox(height: 32),

          // ── Primary button ───────────────────────────────────────────────
          SizedBox(
            width: double.infinity,
            child: FilledButton(
              onPressed: () {
                Navigator.of(context).pop();
                widget.onRetry?.call();
              },
              style: FilledButton.styleFrom(
                backgroundColor: s.color,
                padding: const EdgeInsets.symmetric(vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
                elevation: 0,
              ),
              child: Text(
                widget.onRetry != null ? 'Try Again' : 'Got it',
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  letterSpacing: 0.1,
                ),
              ),
            ),
          ),

          // ── Dismiss link ─────────────────────────────────────────────────
          if (widget.onRetry != null) ...[
            const SizedBox(height: 4),
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text(
                'Dismiss',
                style: TextStyle(
                  color: const Color(0xFF94A3B8),
                  fontSize: 14,
                ),
              ),
            ),
          ] else
            const SizedBox(height: 8),
        ],
      ),
    );
  }
}
