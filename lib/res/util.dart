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
                  hintStyle: TextStyle(color: Colors.white70),
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
        color: ColorResource.inputBackground,
      ),
      child: ElevatedButton(
          onPressed: function!,
          child: Text(text!,
              style: TextStyle(
                  fontSize: Dimension.fontSizeBig,
                  color: ColorResource.btnTxtColor)),
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
              color: !unique ? Color(0xFFFE1743) : bgColor,
              border: Border.all(
                  color: !unique ? Color(0xFFFE1743) : borderColor!,
                  width: 1.7),
              borderRadius: BorderRadius.circular(radius)),
          child: Stack(
            children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 15),
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
}
