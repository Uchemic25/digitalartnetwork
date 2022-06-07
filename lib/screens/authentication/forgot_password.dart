import 'package:digitalart/screens/widgets/custom_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../res/color_resource.dart';
import '../../res/util.dart';
import '../widgets/textview.dart';
import 'sign_in.dart';

class ForgotPassword extends StatelessWidget {
  static String name = "/forgot-password";

  ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(""),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(top: 25, left: 15, right: 15),
          color: ColorResource.cardColor1,
          child: ListView(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(left: 25),
                child: TextView(
                  text: "Forgot Password",
                  fontSize: 30,
                  txtColor: ColorResource.btnTxtColor,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Util.inputField2(
                  hint: "Email",
                  size: double.infinity,
                  // controller: regControl.emailController,
                  inputType: TextInputType.text),
              const SizedBox(
                height: 3,
              ),
              Container(
                  margin: const EdgeInsets.all(20),
                  child: Util.customElevatedButton(
                      text: "Recover Password",
                      function: () async {},
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
