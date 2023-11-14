// import 'package:flutter/material.dart';

// import 'dot_animation.dart';

// class AnimatedOverlay extends StatelessWidget {
//   final AnimationController controller;

//   AnimatedOverlay({required this.controller});

//   @override
//   Widget build(BuildContext context) {
//     return Positioned.fill(
//       child: Container(
//         color: Colors.black.withOpacity(0.1),
//         child: Center(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Dot(controller: controller, position: 0),
//               Dot(controller: controller, position: 1),
//               Dot(controller: controller, position: 2),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

import 'dot_animation.dart';

class AnimatedOverlay extends StatefulWidget {
  final AnimationController controller;

  AnimatedOverlay({required this.controller});

  @override
  _AnimatedOverlayState createState() => _AnimatedOverlayState();
}

class _AnimatedOverlayState extends State<AnimatedOverlay> {
  late Animation<double> positionAnimation;

  @override
  void initState() {
    super.initState();
    positionAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(widget.controller);
  }

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: AnimatedBuilder(
        animation: widget.controller,
        builder: (context, child) {
          double val = positionAnimation.value;

          double firstDotPosition = MediaQuery.of(context).size.width * (0.33 * val);
          double thirdDotPosition = MediaQuery.of(context).size.width * (0.66 * (1 - val));
          double secondDotSize = 10 + (5 * (1 - val)); // reduces to half the size during transition

          return Container(
            color: Colors.black.withOpacity(0.1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Transform.translate(
                  offset: Offset(firstDotPosition, 0),
                  child: Dot(opacity: 1.0, color: Colors.orange, size: 10.0),
                ),
                Transform.translate(
                  offset: Offset(0, 0),
                  child: Dot(opacity: 1.0, color: Colors.orange, size: secondDotSize),
                ),
                Transform.translate(
                  offset: Offset(thirdDotPosition, 0),
                  child: Dot(opacity: 1.0, color: Colors.orange, size: 10.0),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}