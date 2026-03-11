import 'package:flutter/material.dart';

/// Full-screen "No Internet" widget with animated WiFi ripple,
/// floating icon, and a press-responsive retry button.
///
/// Usage:
///   if (response.status == ApiStatus.noInternet)
///     return NoInternetWidget(onRetry: () => provider.fetchData());
class NoInternetWidget extends StatefulWidget {
  final VoidCallback onRetry;

  /// Set to true while the retry is in progress to show a spinner.
  final bool isRetrying;

  const NoInternetWidget({
    super.key,
    required this.onRetry,
    this.isRetrying = false,
  });

  @override
  State<NoInternetWidget> createState() => _NoInternetWidgetState();
}

class _NoInternetWidgetState extends State<NoInternetWidget>
    with TickerProviderStateMixin {
  // ── Ripple animation ────────────────────────────────────────────────────────
  // Three controllers started with 1/3-cycle offsets so they look concurrent.
  late final AnimationController _ripple1;
  late final AnimationController _ripple2;
  late final AnimationController _ripple3;

  // ── Floating icon ────────────────────────────────────────────────────────────
  late final AnimationController _floatCtrl;
  late final Animation<double> _floatAnim;

  // ── Content fade-in ──────────────────────────────────────────────────────────
  late final AnimationController _fadeCtrl;
  late final Animation<double> _fadeAnim;

  // ── Retry button press ───────────────────────────────────────────────────────
  late final AnimationController _buttonCtrl;
  late final Animation<double> _buttonScale;

  // ── Dot loading indicator ────────────────────────────────────────────────────
  late final AnimationController _dotsCtrl;

  static const _kRippleDuration = Duration(milliseconds: 2400);
  static const _kRippleOffset = Duration(milliseconds: 800); // 1/3 of cycle
  static const _kPrimary = Color(0xFF3B82F6);
  static const _kPrimaryDark = Color(0xFF1D4ED8);

  @override
  void initState() {
    super.initState();

    // Ripples — staggered starts
    _ripple1 = AnimationController(vsync: this, duration: _kRippleDuration)
      ..repeat();
    _ripple2 = AnimationController(vsync: this, duration: _kRippleDuration);
    _ripple3 = AnimationController(vsync: this, duration: _kRippleDuration);

    Future.delayed(_kRippleOffset, () {
      if (mounted) _ripple2.repeat();
    });
    Future.delayed(_kRippleOffset * 2, () {
      if (mounted) _ripple3.repeat();
    });

    // Float — gentle up-down oscillation
    _floatCtrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 3200),
    )..repeat(reverse: true);
    _floatAnim = Tween<double>(begin: 0, end: -14).animate(
      CurvedAnimation(parent: _floatCtrl, curve: Curves.easeInOut),
    );

    // Content fade-in on mount
    _fadeCtrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 700),
    )..forward();
    _fadeAnim = CurvedAnimation(parent: _fadeCtrl, curve: Curves.easeOut);

    // Retry button press scale
    _buttonCtrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 120),
    );
    _buttonScale = Tween<double>(begin: 1.0, end: 0.95)
        .animate(CurvedAnimation(parent: _buttonCtrl, curve: Curves.easeIn));

    // Dots: 3-step cycle for the "searching" indicator
    _dotsCtrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    )..repeat();
  }

  @override
  void dispose() {
    _ripple1.dispose();
    _ripple2.dispose();
    _ripple3.dispose();
    _floatCtrl.dispose();
    _fadeCtrl.dispose();
    _buttonCtrl.dispose();
    _dotsCtrl.dispose();
    super.dispose();
  }

  // ── Builders ─────────────────────────────────────────────────────────────────

  Widget _ripple(AnimationController ctrl) {
    return AnimatedBuilder(
      animation: ctrl,
      builder: (_, __) {
        final t = Curves.easeOut.transform(ctrl.value);
        final diameter = 130.0 + t * 90.0; // 130 → 220
        final opacity = (1.0 - t) * 0.22;
        return Container(
          width: diameter,
          height: diameter,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: _kPrimary.withValues(alpha: opacity),
              width: 2.0,
            ),
          ),
        );
      },
    );
  }

  Widget _floatingIcon() {
    return AnimatedBuilder(
      animation: _floatAnim,
      builder: (_, child) =>
          Transform.translate(offset: Offset(0, _floatAnim.value), child: child),
      child: Container(
        width: 116,
        height: 116,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [_kPrimary, _kPrimaryDark],
          ),
          boxShadow: [
            BoxShadow(
              color: _kPrimary.withValues(alpha: 0.38),
              blurRadius: 28,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: const Icon(Icons.wifi_off_rounded, size: 50, color: Colors.white),
      ),
    );
  }

  /// Three animated dots: each lights up in sequence.
  Widget _searchingDots() {
    return AnimatedBuilder(
      animation: _dotsCtrl,
      builder: (_, __) {
        final step = (_dotsCtrl.value * 3).floor(); // 0, 1, or 2
        return Row(
          mainAxisSize: MainAxisSize.min,
          children: List.generate(3, (i) {
            final active = i == step;
            return AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              margin: const EdgeInsets.symmetric(horizontal: 4),
              width: active ? 10 : 8,
              height: active ? 10 : 8,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: active
                    ? _kPrimary
                    : const Color(0xFFCBD5E1),
              ),
            );
          }),
        );
      },
    );
  }

  Widget _retryButton() {
    return GestureDetector(
      onTapDown: (_) => _buttonCtrl.forward(),
      onTapCancel: () => _buttonCtrl.reverse(),
      onTapUp: (_) {
        _buttonCtrl.reverse().then((_) {
          if (mounted) widget.onRetry();
        });
      },
      child: ScaleTransition(
        scale: _buttonScale,
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 17),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [_kPrimary, _kPrimaryDark],
            ),
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: _kPrimary.withValues(alpha: 0.32),
                blurRadius: 18,
                offset: const Offset(0, 7),
              ),
            ],
          ),
          child: widget.isRetrying
              ? const Center(
                  child: SizedBox(
                    width: 22,
                    height: 22,
                    child: CircularProgressIndicator(
                      strokeWidth: 2.5,
                      valueColor: AlwaysStoppedAnimation(Colors.white),
                    ),
                  ),
                )
              : const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.refresh_rounded, color: Colors.white, size: 20),
                    SizedBox(width: 8),
                    Text(
                      'Try Again',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        letterSpacing: 0.2,
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FadeTransition(
        opacity: _fadeAnim,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // ── Ripple + Icon ───────────────────────────────────────────
              SizedBox(
                width: 240,
                height: 240,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    _ripple(_ripple1),
                    _ripple(_ripple2),
                    _ripple(_ripple3),
                    _floatingIcon(),
                  ],
                ),
              ),

              const SizedBox(height: 8),

              // ── Searching dots ─────────────────────────────────────────
              _searchingDots(),

              const SizedBox(height: 28),

              // ── Title ──────────────────────────────────────────────────
              Text(
                'No Internet Connection',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFF0F172A),
                      letterSpacing: -0.5,
                    ),
              ),

              const SizedBox(height: 10),

              // ── Sub-text ───────────────────────────────────────────────
              Text(
                "You're offline. Check your Wi-Fi or mobile\ndata and try again.",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: const Color(0xFF64748B),
                      height: 1.65,
                    ),
              ),

              const SizedBox(height: 40),

              // ── Retry button ───────────────────────────────────────────
              _retryButton(),

              const SizedBox(height: 16),

              // ── Subtle link ────────────────────────────────────────────
              Text(
                'Check network settings if the problem persists.',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: const Color(0xFFADB5C7),
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
