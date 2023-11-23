import 'package:flutter/material.dart';

class Dot extends StatelessWidget {
  final double opacity;
  final Color color;
  final double size;

  Dot({
    required this.opacity,
    required this.color,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: opacity,
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
      ),
    );
  }
}
