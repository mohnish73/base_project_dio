import 'package:flutter/material.dart';
import 'package:halofoil/halofoil.dart';
import 'dart:math' as math;



class HoloExampleScreen extends StatelessWidget {
  const HoloExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(title: const Text('Halofoil Example')),

      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(24.0),
          child: InteractiveHoloCard(),
        ),
      ),
    );
  }
}

class InteractiveHoloCard extends StatefulWidget {
  const InteractiveHoloCard({super.key});

  @override
  State<InteractiveHoloCard> createState() => _InteractiveHoloCardState();
}

class _InteractiveHoloCardState extends State<InteractiveHoloCard> {
  double _angleX = 0.0;
  double _angleY = 0.0;
  final double _sensitivity = 0.007;
  final double _maxAngle = math.pi / 4;

  void _onPanUpdate(DragUpdateDetails details) {
    setState(() {
      _angleY += details.delta.dx * _sensitivity;
      _angleX -= details.delta.dy * _sensitivity;
      _angleX = _angleX.clamp(-_maxAngle, _maxAngle);
      _angleY = _angleY.clamp(-_maxAngle, _maxAngle);
    });
  }

  @override
  Widget build(BuildContext context) {
    const double cardWidth = 280;
    const double cardHeight = 390;
    const double holoCircleDiameter = 124;
    const double iconSize = 64;
    final BorderRadius cardBorderRadius = BorderRadius.circular(24);

    return LayoutBuilder(
      builder: (context, constraints) {
        return GestureDetector(
          onPanUpdate: _onPanUpdate,
          child: Transform(
            transform:
            Matrix4.identity()
              ..setEntry(3, 2, 0.001)
              ..rotateX(_angleX)
              ..rotateY(_angleY),
            alignment: FractionalOffset.center,
            child: Container(
              width: cardWidth,
              height: cardHeight,
              decoration: BoxDecoration(
                borderRadius: cardBorderRadius,
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.white.withValues(alpha: .1),
                    Colors.white.withValues(alpha: .03),
                  ],
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: .4),
                    blurRadius: 25,
                    offset: const Offset(0, 10),
                  ),
                ],
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Center(
                    child: SizedBox(
                      width: holoCircleDiameter,
                      height: holoCircleDiameter,
                      child: Halofoil(
                        angleX: _angleX,
                        angleY: _angleY,
                        grainAsset: 'assets/grain.png',
                        borderRadius: BorderRadius.circular(
                          holoCircleDiameter / 2,
                        ),
                        children: const [
                          Center(
                            child: Icon(
                              Icons.widgets_outlined,
                              size: iconSize,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: cardHeight * 0.15,
                    child: Text(
                      'DRAG TO TILT',
                      style: TextStyle(
                        color: Colors.white.withValues(alpha: 0.6),
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}