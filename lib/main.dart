import 'package:digitalart/res/app_theme.dart';
import 'package:digitalart/res/color_resource.dart';
import 'package:digitalart/screens/authentication/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'navigator/navigator.dart';

void main() => runApp(DigitalArtNetwork());

class DigitalArtNetwork extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Digital Art Network',
      theme: AppTheme.darkTheme,
      initialRoute: SignIn.name,
      getPages: pages,
    );
  }
}
