import 'package:digitalart/screens/authentication/forgot_password.dart';
import 'package:digitalart/screens/authentication/sign_up.dart';
import 'package:digitalart/screens/pages/landing_page.dart';
import 'package:digitalart/screens/widgets/custom_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../res/color_resource.dart';
import '../../res/util.dart';
import '../widgets/textview.dart';

class SignIn extends StatelessWidget {
  static String name = "/sign-in";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(""),
      body: SafeArea(
        child: Container(
          color: ColorResource.cardColor1,
          height: double.infinity,
          child: Container(
            margin: const EdgeInsets.all(25),
            decoration: BoxDecoration(
                color: ColorResource.cardColor1,
                border: Border.all(color: Colors.grey, width: 1.5)),
            child: ListView(
              shrinkWrap: true,
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 25),
                  child: TextView(
                    text: "Sign-In",
                    fontSize: 40,
                    txtColor: ColorResource.btnTxtColor,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Util.inputField2(
                    hint: "Username",
                    size: double.infinity,
                    // controller: regControl.emailController,
                    inputType: TextInputType.text),
                const SizedBox(
                  height: 3,
                ),
                Util.inputField2(
                    hint: "Password",
                    size: double.infinity,
                    // controller: regControl.emailController,
                    inputType: TextInputType.number),
                Container(
                    margin: EdgeInsets.all(20),
                    child: Util.customElevatedButton(
                        text: "Sign In",
                        function: () {
                          Get.toNamed(LandingPage.name);
                        },
                        bgColor: ColorResource.selectedTextColor)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {
                          Get.toNamed(ForgotPassword.name);
                        },
                        child: Text("Forgot Password? ",
                            style: TextStyle(color: ColorResource.btnTxtColor)))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account? ",
                        style: TextStyle(color: ColorResource.btnTxtColor)),
                    TextButton(
                        onPressed: () {
                          Get.toNamed(SignUp.name);
                        },
                        child: Text("Sign Up",
                            style: TextStyle(color: ColorResource.btnTxtColor)))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
