import 'package:digitalart/res/color_resource.dart';
import 'package:digitalart/screens/authentication/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'navigator/navigator.dart';
import 'screens/pages/landing_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Digital Art Network',
      theme: ThemeData(
        primaryColor: ColorResource.backgroundColor,
        primaryColorDark: ColorResource.backgroundColor,
        iconTheme: IconThemeData(color: ColorResource.unSelectedTextColor),
        colorScheme: ColorScheme.fromSwatch()
            .copyWith(secondary: ColorResource.selectedTextColor),
        fontFamily: "Montserrat",
      ),
      initialRoute: SignIn.name,
      getPages: pages,
    );
  }
}
