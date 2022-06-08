import 'package:flutter/material.dart';

import '../../res/color_resource.dart';
import 'textview.dart';

AppBar CustomAppBar(String title,
    {List<Widget>? action,
    double elevation = 0,
    Color color = const Color(0xff1b1f28)}) {
  return AppBar(
    backgroundColor: color,
    elevation: elevation,
    actions: action,
    iconTheme: const IconThemeData(color: Colors.white60),
    title: TextView(
      text: title,
      fontSize: 22,
      fontWeight: FontWeight.w600,
      txtColor: Colors.black87,
    ),
  );
}

class InputPasswordField extends StatefulWidget {
  final String labelText;
  final String textHint;
  final IconData? icon;
  final Color? iconColor;
  final Color? bgColor;
  final TextInputType? textInputType;
  final double? hintSize;
  final TextEditingController? controller;
  final FocusNode? myFocusNode;
  final Function()? onChanged;
  final bool isEditable;
  final double radius;
  final double elevation;
  final double padding;
  final double? height;
  final double? borderWidth;
  final Color? borderColor;

  InputPasswordField({
    Key? key,
    this.textHint = '',
    this.icon,
    this.iconColor,
    this.textInputType,
    this.controller,
    this.labelText = '',
    this.onChanged,
    this.isEditable = true,
    this.myFocusNode,
    this.radius = 4,
    this.elevation = 3,
    this.padding = 16.0,
    this.hintSize,
    this.bgColor = Colors.white12,
    this.borderWidth = 1,
    this.height,
    this.borderColor,
  }) : super(key: key);

  @override
  State<InputPasswordField> createState() => _InputPasswordFieldState();
}

class _InputPasswordFieldState extends State<InputPasswordField> {
  bool password = false;
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return inputFieldPassword();
  }

  Widget inputFieldPassword(
      {String? hint,
      IconData? icon,
      bool isIcon = false,
      double? size,
      TextEditingController? controller,
      bool isPassword = false}) {
    return Material(
      elevation: widget.elevation,
      borderRadius: BorderRadius.circular(widget.radius),
      child: Container(
        height: 46,
        padding: const EdgeInsets.only(left: 20, right: 15),
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: widget.borderColor!),
          borderRadius: BorderRadius.circular(widget.radius),
          color: widget.bgColor!,
        ),
        child: SizedBox(
            width: size,
            child: TextFormField(
              obscureText: _obscureText,
              keyboardType: widget.textInputType,
              controller: widget.controller,
              focusNode: widget.myFocusNode,
              onChanged: widget.onChanged!(),
              cursorColor: ColorResource.customBlue,
              style: const TextStyle(
                  color: ColorResource.lightPrimary, fontSize: 16),
              decoration: InputDecoration(
                hintText: widget.textHint,
                hintStyle: const TextStyle(color: Colors.white24, fontSize: 16),
                border: InputBorder.none,
                suffixIcon: GestureDetector(
                  onTap: _toggleIcon,
                  child: Icon(
                    _obscureText ? Icons.visibility : Icons.visibility_off,
                    size: 25.0,
                    color: Colors.white24,
                  ),
                ),
              ),
            )),
      ),
    );
  }

  void _toggleIcon() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }
}
