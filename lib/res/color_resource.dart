import 'package:flutter/material.dart';

class ColorResource {
  static Color primaryColor = const Color(0xff0c0b10);
  static Color secondaryColor = const Color(0xff1b1f28);
  static Color textIconColor = const Color(0xffb4bae3);
  static Color cardColor = const Color(0xff191919);
  static Color gradient1Color = const Color(0xff131a22);
  static Color gradient2Color = const Color(0xff304250);

  static Color selectedTextColor = const Color(0xffb02a84);

  static Color unSelectedTextColor = const Color(0xff2233ee);

  static final primaryGradient = LinearGradient(
    colors: [gradient1Color, gradient2Color],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    tileMode: TileMode.clamp,
  );
}
