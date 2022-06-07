import 'package:digitalart/screens/authentication/forgot_password.dart';
import 'package:digitalart/screens/authentication/sign_in.dart';
import 'package:digitalart/screens/pages/landing_page.dart';
import 'package:get/get.dart';

import '../screens/authentication/sign_up.dart';
import '../screens/authentication/sign_up_complete.dart';

List<GetPage<dynamic>> pages = [
  GetPage(
    name: SignIn.name,
    page: () => SignIn(),
  ),
  GetPage(
    name: SignUp.name,
    page: () => SignUp(),
  ),
  GetPage(
    name: SignUpComplete.name,
    page: () => SignUpComplete(),
  ),
  GetPage(
    name: ForgotPassword.name,
    page: () => ForgotPassword(),
  ),
  GetPage(
    name: LandingPage.name,
    page: () => const LandingPage(),
  ),
];
