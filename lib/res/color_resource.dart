import 'package:flutter/material.dart';

class ColorResource {
  // static Color primaryColor = const Color(0xff0c0b10);

  static Color secondaryColor = const Color(0xff1b1f28);
  static Color textIconColor = const Color(0xffb4bae3);
  static Color cardColor = const Color(0xff191919);
  static Color gradient1Color = const Color(0xff131a22);
  static Color gradient2Color = const Color(0xff304250);
  static Color scaffoldBackground = const Color(0xff1b1f28);
  static Color colorDark = const Color(0xff101116);
  static const Color lightPrimary = Color(0xffffffff);
  static const Color lightDivider = Colors.white12;

  static const Color grey = Color(0xFFE7E7E7);

  static Color selectedTextColor = const Color(0xffb02a84);

  static Color unSelectedTextColor = const Color(0xff2233ee);

  static final primaryGradient = LinearGradient(
    colors: [gradient1Color, gradient2Color],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    tileMode: TileMode.clamp,
  );
  static Color cardColor1 = const Color(0xff1b1f28);
  static Color backgroundColor = const Color(0xff191919);
  static Color inputBackground = const Color(0xff222222);
  static Color inputColor = const Color(0xff1e1e1e);
  static Color inputSelectedColor = const Color(0xff1a1a1a);
  static Color iconColor = const Color(0xff8c8c8c);
  static Color customBlue = const Color(0xff0085ff);
  // static Color btnTxtColor = const Color(0xfff4f4f4);

  static Color btnTxtColor = Colors.white70;
}
