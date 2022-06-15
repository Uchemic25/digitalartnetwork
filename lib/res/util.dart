import 'package:digitalart/res/dimension.dart';
import 'package:flutter/material.dart';

import 'color_resource.dart';

class Util {
  static Widget inputField2({
    String? hint = "Write a comment",
    IconData? icon,
    bool isIcon = false,
    double? size,
    double fontSize = 16,
    TextEditingController? controller,
    TextInputType inputType = TextInputType.text,
    bool isPassword = false,
    bool buttonAvailable = false,
  }) {
    return Container(
      decoration: BoxDecoration(
        // borderRadius: BorderRadius.only(
        //     bottomLeft: Radius.circular(Dimension.borderRadius),
        //     bottomRight: Radius.circular(Dimension.borderRadius)),
        color: ColorResource.inputBackground,
      ),
      child: Container(
        padding: EdgeInsets.all(Dimension.borderRadius),
        margin: EdgeInsets.all(Dimension.marginSize),
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: ColorResource.selectedTextColor),
          borderRadius: BorderRadius.circular(Dimension.borderRadius),
          color: ColorResource.inputColor,
        ),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                minLines: 1,
                maxLines: 6,
                obscureText: isPassword,
                controller: controller,
                keyboardType: inputType,
                style: TextStyle(fontSize: fontSize, color: Colors.white70),
                decoration: InputDecoration.collapsed(
                  hintText: hint,
                  hintStyle: const TextStyle(color: Colors.white70),
                  border: InputBorder.none,
                ),
              ),
            ),
            Icon(
              Icons.photo_camera,
              color: ColorResource.iconColor,
            ),
            SizedBox(
              width: Dimension.marginSizeSmall,
            ),
            Icon(
              Icons.gif_box,
              color: ColorResource.iconColor,
            )
          ],
        ),
      ),
    );
  }

  static Widget customElevatedButton(
      {String? text, Function()? function, Color? bgColor}) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(Dimension.borderRadius),
            bottomRight: Radius.circular(Dimension.borderRadius)),
        // color: ColorResource.inputBackground,
      ),
      child: ElevatedButton(
          onPressed: function!,
          child: Text(text!.toUpperCase(),
              style: TextStyle(
                fontSize: Dimension.fontSizeVSmall,
                color: Colors.white,
              )),
          style: ButtonStyle(
              padding: MaterialStateProperty.all(
                  EdgeInsets.all(Dimension.paddingSize)),
              backgroundColor: MaterialStateProperty.all(bgColor),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(Dimension.borderRadius),
                // side: BorderSide(color: ColorResource.customBlue),
              )))),
    );
  }

  Widget customButton(
      {Function? function,
      String text = "",
      double radius = 10,
      Color? bgColor,
      Color? borderColor,
      Color? txtColor,
      double textSize = 15,
      IconData? icon,
      Color? iconColor,
      bool unique = false}) {
    return InkWell(
      onTap: function!(),
      child: Container(
          height: 46,
          decoration: BoxDecoration(
              color: !unique ? const Color(0xFFFE1743) : bgColor,
              border: Border.all(
                  color: !unique ? const Color(0xFFFE1743) : borderColor!,
                  width: 1.7),
              borderRadius: BorderRadius.circular(radius)),
          child: Stack(
            children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Icon(
                      icon,
                      color: !unique ? Colors.white : iconColor,
                    ),
                  )),
              Align(
                  alignment: Alignment.center,
                  child: Text(text,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: !unique ? Colors.white : txtColor,
                        fontWeight: FontWeight.w600,
                        fontSize: textSize,
                      )))
            ],
          )),
    );
  }

  static Widget registrationInputField({
    String? hint = "",
    String? required = "*",
    String? label = "",
    IconData? icon,
    Widget? suffixIcon,
    bool isIcon = false,
    double? size,
    double fontSize = 16,
    TextEditingController? controller,
    TextInputType inputType = TextInputType.text,
    Color color = Colors.grey,
    bool isPassword = false,
    bool buttonAvailable = false,
    int field = 0,
    int selectedField = 20,
    double padding = 16,
    int maxLine = 1,
    Color borderColor = Colors.grey,
    Function()? onPressed,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: 5),
          child: Text.rich(TextSpan(children: [
            TextSpan(
                text: label,
                style: const TextStyle(
                    fontWeight: FontWeight.w300,
                    color: ColorResource.lightPrimary,
                    fontSize: 12)),
            WidgetSpan(
              child: Transform.translate(
                offset: const Offset(2, -1),
                child: Text(required!,
                    style: const TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.w400,
                        fontSize: 14)),
              ),
            ),
          ])),
        ),
        const SizedBox(
          height: 3,
        ),
<<<<<<< HEAD
        InkWell(
          onTap: onPressed,
          child: Container(
            padding: EdgeInsets.all(padding),
            decoration: BoxDecoration(
              border: Border.all(
                  width: 1,
                  color: field == selectedField
                      ? ColorResource.selectedTextColor
                      : borderColor),
              borderRadius: BorderRadius.circular(Dimension.borderRadius),
              color: color,
            ),
            child: InkWell(
              onTap: onPressed,
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      maxLines: maxLine,
                      obscureText: isPassword,
                      controller: controller,
                      keyboardType: inputType,
                      style:
                          TextStyle(fontSize: fontSize, color: Colors.white70),
                      decoration: InputDecoration(
                        suffixIcon: suffixIcon,
                        hintText: hint,
                        hintStyle: const TextStyle(color: Colors.white70),
                        border: InputBorder.none,
                      ),
                    ),
=======
        Container(
          padding: const EdgeInsets.all(8),
          margin: const EdgeInsets.all(1.5),
          decoration: BoxDecoration(
            border: Border.all(
                width: 1,
                color: field == selectedField
                    ? ColorResource.selectedTextColor
                    : borderColor),
            borderRadius: BorderRadius.circular(8),
            color: field == selectedField
                ? ColorResource.inputRegColorLight
                : color,
          ),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  maxLines: maxLine,
                  obscureText: isPassword,
                  controller: controller,
                  keyboardType: inputType,
                  style: TextStyle(fontSize: fontSize, color: Colors.white70),
                  decoration: InputDecoration.collapsed(
                    hintText: hint,
                    hintStyle: const TextStyle(color: Colors.white70),
                    border: InputBorder.none,
>>>>>>> d5907878e8294d9eed4169e3cffa9f526a4fce89
                  ),
                  onTap: onPressed,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
