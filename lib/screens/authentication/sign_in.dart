import 'package:digitalart/screens/authentication/forgot_password.dart';
import 'package:digitalart/screens/authentication/sign_up.dart';
import 'package:digitalart/screens/pages/landing_page.dart';
import 'package:digitalart/screens/widgets/custom_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../res/color_resource.dart';
import '../../res/dimension.dart';
import '../../res/util.dart';
import '../widgets/textview.dart';

class SignIn extends StatefulWidget {
  static String name = "/sign-in";

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  int selectedField = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(""),
      body: SafeArea(
        child: Container(
          color: ColorResource.cardColor1,
          height: double.infinity,
          child: Container(
            margin: const EdgeInsets.only(
              right: 15,
              left: 15,
              bottom: 25,
            ),
            decoration: BoxDecoration(
                color: ColorResource.cardColor1,
                border: Border.all(
                    color: ColorResource.inputRegColorLight, width: 1)),
            child: ListView(
              shrinkWrap: true,
              children: [
                divider(height: 30),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left: 15, top: 10),
                  decoration: BoxDecoration(
                      color: ColorResource.cardColor1,
                      border: Border(
                          left: BorderSide(
                              color: ColorResource.selectedTextColor,
                              width: 2))),
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.only(bottom: 5),
                    decoration: BoxDecoration(
                        color: ColorResource.cardColor1,
                        border: Border(
                            bottom: BorderSide(
                                color: ColorResource.inputRegColorLight,
                                width: 1))),
                    child: TextView(
                      text: "Sign-In",
                      fontSize: Dimension.fontSizeMedium,
                      txtColor: ColorResource.btnTxtColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                divider(),
                Util.registrationInputField(
                  label: "Username",
                  //hint: "Email",
                  size: double.infinity,
                  // controller: regControl.emailController,
                  inputType: TextInputType.text,
                  field: 2,
                  selectedField: selectedField,
                  color: ColorResource.inputRegColor,
                  borderColor: ColorResource.inputRegColor,
                  onPressed: () {
                    selectedField = 2;
                    setState(() {});
                  },
                ),
                divider(),
                Util.registrationInputField(
                  label: "Password",
                  //hint: "Password",
                  size: double.infinity,
                  // controller: regControl.emailController,
                  inputType: TextInputType.text,
                  color: ColorResource.inputRegColor,
                  borderColor: ColorResource.inputRegColor,
                  field: 3,
                  selectedField: selectedField,
                  onPressed: () {
                    selectedField = 3;
                    setState(() {});
                  },
                ),
                divider(),
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

  Widget divider({double height = 8}) {
    return SizedBox(
      height: height,
    );
  }
}
