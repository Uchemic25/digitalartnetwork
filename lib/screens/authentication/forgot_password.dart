import 'package:digitalart/screens/widgets/custom_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../res/color_resource.dart';
import '../../res/dimension.dart';
import '../../res/util.dart';
import '../pages/landing_page.dart';
import '../widgets/textview.dart';
import 'forgot_password.dart';
import 'sign_in.dart';

class ForgotPassword extends StatefulWidget {
  static String name = "/forgot-password";

  ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
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
                    padding: EdgeInsets.only(bottom: 5),
                    decoration: BoxDecoration(
                        color: ColorResource.cardColor1,
                        border: Border(
                            bottom: BorderSide(
                                color: ColorResource.inputRegColorLight,
                                width: 1))),
                    child: TextView(
                      text: "FORGOT PASSWORD",
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
                  label: "Email",
                  hint: "Email",
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
                Container(
                    margin: const EdgeInsets.only(
                        top: 20, left: 10, right: 10, bottom: 10),
                    child: Util.customElevatedButton(
                        text: "RECOVER PASSWORD",
                        function: () {
                          Get.toNamed(LandingPage.name);
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
                        child: Text("Sign-In",
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
