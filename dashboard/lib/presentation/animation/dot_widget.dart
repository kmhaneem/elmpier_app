import 'package:flutter/material.dart';

import 'animated_dot.dart';

class DotWidget extends StatelessWidget {
  final Color color;
  final double size;

  DotWidget({
    required this.color,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Dot Animation'),
      ),
      body: AnimatedDots(),
    ),
  ));
}