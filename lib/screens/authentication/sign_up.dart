import 'package:digitalart/res/dimension.dart';
import 'package:digitalart/screens/widgets/custom_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../res/color_resource.dart';
import '../../res/util.dart';
import '../widgets/textview.dart';
import 'sign_in.dart';

class SignUp extends StatefulWidget {
  static String name = "/sign-up";

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                      text: "REGISTER",
                      fontSize: Dimension.fontSizeMedium,
                      txtColor: ColorResource.btnTxtColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 14,
                ),
                Util.registrationInputField(
                  label: "Username",
                  //hint: "Username",
                  size: double.infinity,
                  color: ColorResource.inputRegColor,
                  borderColor: ColorResource.inputRegColor,
                  // controller: regControl.emailController,
                  inputType: TextInputType.text,
                  field: 1,
                  selectedField: selectedField,
                  onPressed: () {
                    selectedField = 1;
                    setState(() {});
                  },
                ),
                divider(),
                Util.registrationInputField(
                  label: "Email",
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
                Util.registrationInputField(
                  label: "Confirm Password",
                  //hint: "Confirm Password",
                  size: double.infinity,
                  // controller: regControl.emailController,
                  inputType: TextInputType.text,
                  color: ColorResource.inputRegColor,
                  borderColor: ColorResource.inputRegColor,
                  field: 4,
                  selectedField: selectedField,
                  onPressed: () {
                    selectedField = 4;
                    setState(() {});
                  },
                ),
                divider(),
                Util.registrationInputField(
                  label: "Country",
                  //hint: "Country",
                  size: double.infinity,
                  // controller: regControl.emailController,
                  inputType: TextInputType.text,
                  color: ColorResource.inputRegColor,
                  borderColor: ColorResource.inputRegColor,
                  field: 5,
                  selectedField: selectedField,
                  onPressed: () {
                    selectedField = 5;
                    setState(() {});
                  },
                ),
                divider(),
                Util.registrationInputField(
                  label: "City",
                  //hint: "City",
                  size: double.infinity,
                  // controller: regControl.emailController,
                  inputType: TextInputType.text,
                  color: ColorResource.inputRegColor,
                  borderColor: ColorResource.inputRegColor,
                  field: 6,
                  selectedField: selectedField,
                  onPressed: () {
                    selectedField = 6;
                    setState(() {});
                  },
                ),
                divider(height: 10),
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  child: Row(
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
                ),
                Container(
                    margin: EdgeInsets.all(20),
                    child: Util.customElevatedButton(
                        text: "Sign Up Today!",
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
      ),
    );
  }

  Widget divider({double height = 8}) {
    return SizedBox(
      height: height,
    );
  }
}
