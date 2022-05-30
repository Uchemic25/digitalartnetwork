import 'package:digitalart/screens/authentication/sign_up_complete.dart';
import 'package:digitalart/screens/widgets/custom_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../res/color_resource.dart';
import '../../res/util.dart';
import '../widgets/textview.dart';
import 'sign_in.dart';

class SignUp extends StatelessWidget {
  static String name = "/sign-up";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(""),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(left: 15, right: 15),
          color: ColorResource.cardColor1,
          child: ListView(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 25),
                child: TextView(
                  text: "Registration",
                  fontSize: 40,
                  txtColor: ColorResource.btnTxtColor,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(
                height: 14,
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
                  hint: "Email",
                  size: double.infinity,
                  // controller: regControl.emailController,
                  inputType: TextInputType.number),
              const SizedBox(
                height: 3,
              ),
              Util.inputField2(
                  hint: "Password",
                  size: double.infinity,
                  // controller: regControl.emailController,
                  inputType: TextInputType.number),
              const SizedBox(
                height: 3,
              ),
              Util.inputField2(
                  hint: "Confirm Password",
                  size: double.infinity,
                  // controller: regControl.emailController,
                  inputType: TextInputType.number),
              Container(
                  margin: EdgeInsets.all(20),
                  child: Util.customElevatedButton(
                      text: "Next",
                      function: () async {
                        Get.toNamed(SignUpComplete.name);
                      },
                      bgColor: ColorResource.selectedTextColor)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account? ",
                      style: TextStyle(color: ColorResource.btnTxtColor)),
                  TextButton(
                      onPressed: () {
                        Get.toNamed(SignIn.name);
                      },
                      child: Text("Sign In",
                          style: TextStyle(color: ColorResource.btnTxtColor)))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
