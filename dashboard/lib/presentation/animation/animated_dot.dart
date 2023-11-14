import 'package:flutter/material.dart';

import 'dot.dart';
import 'dot_widget.dart';

class AnimatedDots extends StatefulWidget {
  @override
  _AnimatedDotsState createState() => _AnimatedDotsState();
}

class _AnimatedDotsState extends State<AnimatedDots> {
  late PageController _pageController;
  late List<Dot> dots;
  double currentPageValue = 0;

  @override
  void initState() {
    super.initState();

    _pageController = PageController(
      initialPage: 0,
      viewportFraction: 0.3,
    );

    dots = [
      Dot(color: Colors.orange, size: 15),
      Dot(color: Colors.orange, size: 20),
      Dot(color: Colors.orange, size: 15),
    ];

    _pageController.addListener(() {
      setState(() {
        currentPageValue = _pageController.page ?? 0;
      });
    });

    _startAnimation();
  }

  void _startAnimation() {
    Future.delayed(Duration(seconds: 4), () {
      _pageController.nextPage(
        duration: Duration(seconds: 1),
        curve: Curves.easeInOut,
      );
      _startAnimation();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black.withOpacity(0.1),
      child: Center(
        child: PageView.builder(
          controller: _pageController,
          itemCount: dots.length,
          itemBuilder: (context, index) {
            final dot = dots[index];
            double dotPosition = (currentPageValue - index).abs();
            double size = dot.size * (1.5 - dotPosition);

            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: DotWidget(
                color: dot.color,
                size: size,
              ),
            );
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}