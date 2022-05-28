import 'package:digitalart/res/color_resource.dart';
import 'package:flutter/material.dart';

import 'screens/pages/landing_page.dart';

void main() => runApp(MyApp());

// will confirm github link;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Digital Art Network',
      theme: ThemeData(
          primaryColor: ColorResource.backgroundColor,
          primaryColorDark: ColorResource.backgroundColor,
          iconTheme: IconThemeData(color: ColorResource.unSelectedTextColor),
          colorScheme: ColorScheme.fromSwatch()
              .copyWith(secondary: ColorResource.selectedTextColor)),
      home: const LandingPage(),
    );
  }
}
