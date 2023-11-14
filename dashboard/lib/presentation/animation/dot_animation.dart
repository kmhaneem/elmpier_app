// import 'package:flutter/material.dart';

// class Dot extends StatelessWidget {
//   final AnimationController controller;
//   final int position;

//   Dot({required this.controller, required this.position});

//   @override
//   Widget build(BuildContext context) {
//     return FadeTransition(
//       opacity: Tween<double>(begin: 0.0, end: 1.0)
//           .animate(CurvedAnimation(parent: controller, curve: Curves.easeOut)),
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Container(
//           width: 10,
//           height: 10,
//           decoration: BoxDecoration(
//             shape: BoxShape.circle,
//             color: Colors.orange,
//           ),
//         ),
//       ),
//     );
//   }
// }

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