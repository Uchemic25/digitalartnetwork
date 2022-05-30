import 'package:digitalart/screens/authentication/sign_in.dart';
import 'package:digitalart/screens/widgets/custom_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../res/color_resource.dart';
import '../../res/util.dart';
import '../widgets/textview.dart';

class SignUpComplete extends StatelessWidget {
  static String name = "/sign-up-complete";

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
                  text: "Finish Up",
                  fontSize: 40,
                  txtColor: ColorResource.btnTxtColor,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              Util.inputField2(
                  hint: "Country",
                  size: double.infinity,
                  // controller: regControl.emailController,
                  inputType: TextInputType.text),
              const SizedBox(
                height: 3,
              ),
              Util.inputField2(
                  hint: "City",
                  size: double.infinity,
                  // controller: regControl.emailController,
                  inputType: TextInputType.number),
              const SizedBox(
                height: 3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.check_box_outline_blank,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: TextView(
                      text:
                          "I certify that I'm over 18 and I agree to the Terms & Conditions!",
                      txtColor: Colors.white60,
                    ),
                  ),
                ],
              ),
              Container(
                  margin: EdgeInsets.all(20),
                  child: Util.customElevatedButton(
                      text: "Sign Up",
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
