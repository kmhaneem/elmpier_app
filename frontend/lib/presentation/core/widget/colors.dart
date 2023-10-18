import 'dart:ui';
import 'package:flutter/material.dart';

// #FF9666

Map<int, Color> colorCodes = {
  50: Color.fromRGBO(255, 150, 102, .1),
  100: Color.fromRGBO(255, 150, 102, .2),
  200: Color.fromRGBO(255, 150, 102, .3),
  300: Color.fromRGBO(255, 150, 102, .4),
  400: Color.fromRGBO(255, 150, 102, .5),
  500: Color.fromRGBO(255, 150, 102, .6),
  600: Color.fromRGBO(255, 150, 102, .7),
  700: Color.fromRGBO(255, 150, 102, .8),
  800: Color.fromRGBO(255, 150, 102, .9),
  900: Color.fromRGBO(255, 150, 102, 1),
};

MaterialColor customColor = MaterialColor(Color(0xFFFF9666).value, colorCodes);