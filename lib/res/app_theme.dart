import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'color_resource.dart';

class AppTheme {
  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: ColorResource.scaffoldBackground,
    cardColor: ColorResource.cardColor,
    dividerColor: ColorResource.lightDivider,
    appBarTheme: AppBarTheme(
        elevation: 5,
        titleTextStyle: ThemeData.light().textTheme.headline6!.copyWith(
            fontSize: 20, fontWeight: FontWeight.w700, color: Colors.white),
        iconTheme: ThemeData.light().iconTheme,
        backgroundColor: ColorResource.colorDark,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark,
        )),
    primaryColor: ColorResource.backgroundColor,
    primaryColorDark: ColorResource.backgroundColor,
    iconTheme: IconThemeData(color: ColorResource.unSelectedTextColor),
    colorScheme: ColorScheme.fromSwatch()
        .copyWith(secondary: ColorResource.selectedTextColor),
    fontFamily: "Montserrat",
  );
}
