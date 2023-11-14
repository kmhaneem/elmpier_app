import 'package:flutter/material.dart';

import '../core/widget/colors.dart';

class CustomElevatedButton extends StatelessWidget {
  VoidCallback? onPressed;
  final String text;
  final Color backgroundColor;
  final Color foregroundColor;
  final double elevation;
  final BorderRadius borderRadius;
  final Size fixedSize;

  CustomElevatedButton({
    Key? key,
    this.onPressed,
    required this.text,
    this.backgroundColor = Colors.blue,
    this.foregroundColor = Colors.white,
    this.elevation = 0,
    this.borderRadius = const BorderRadius.all(Radius.circular(25)),
    this.fixedSize = const Size(double.infinity, 50),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 16.0,
          color: foregroundColor,
          fontWeight: FontWeight.bold
        ),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: customColor,
        foregroundColor: foregroundColor,
        elevation: elevation,
        shape: RoundedRectangleBorder(borderRadius: borderRadius),
        fixedSize: fixedSize,
      ),
    );
  }
}
