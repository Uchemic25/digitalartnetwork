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
            margin:
                const EdgeInsets.only(right: 25, left: 25, bottom: 25, top: 5),
            padding: const EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
                color: ColorResource.cardColor1,
                border: Border.all(color: Colors.grey, width: 1.5)),
            child: ListView(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left: 25, top: 10),
                  decoration: BoxDecoration(
                      color: ColorResource.cardColor1,
                      border: Border(
                          left: BorderSide(
                              color: ColorResource.selectedTextColor,
                              width: 8))),
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
                Util.registrationInputField(
                  hint: "Username",
                  size: double.infinity,
                  // controller: regControl.emailController,
                  inputType: TextInputType.text,
                  field: 1,
                  selectedField: selectedField,
                  onPressed: () {
                    selectedField = 1;
                    setState(() {});
                  },
                ),
                const SizedBox(
                  height: 3,
                ),
                Util.registrationInputField(
                  hint: "Email",
                  size: double.infinity,
                  // controller: regControl.emailController,
                  inputType: TextInputType.number,
                  field: 2,
                  selectedField: selectedField,
                  onPressed: () {
                    selectedField = 2;
                    setState(() {});
                  },
                ),
                const SizedBox(
                  height: 3,
                ),
                Util.registrationInputField(
                  hint: "Password",
                  size: double.infinity,
                  // controller: regControl.emailController,
                  inputType: TextInputType.number,
                  field: 3,
                  selectedField: selectedField,
                  onPressed: () {
                    selectedField = 3;
                    setState(() {});
                  },
                ),
                const SizedBox(
                  height: 3,
                ),
                Util.registrationInputField(
                  hint: "Confirm Password",
                  size: double.infinity,
                  // controller: regControl.emailController,
                  inputType: TextInputType.number,
                  field: 4,
                  selectedField: selectedField,
                  onPressed: () {
                    selectedField = 4;
                    setState(() {});
                  },
                ),
                Util.registrationInputField(
                  hint: "Country",
                  size: double.infinity,
                  // controller: regControl.emailController,
                  inputType: TextInputType.text,
                  field: 5,
                  selectedField: selectedField,
                  onPressed: () {
                    selectedField = 5;
                    setState(() {});
                  },
                ),
                const SizedBox(
                  height: 3,
                ),
                Util.registrationInputField(
                  hint: "City",
                  size: double.infinity,
                  // controller: regControl.emailController,
                  inputType: TextInputType.number,
                  field: 6,
                  selectedField: selectedField,
                  onPressed: () {
                    selectedField = 20;
                    setState(() {});
                  },
                ),
                const SizedBox(
                  height: 3,
                ),
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
}
