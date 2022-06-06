import 'package:flutter/material.dart';

class TextView extends StatelessWidget {
  final String text;
  final Color txtColor;
  final double fontSize;
  final bool isTextCenter;
  final FontWeight fontWeight;
  final int maxLine;

  const TextView(
      {this.text = '',
      this.txtColor = Colors.white60,
      this.fontSize = 14,
      this.fontWeight = FontWeight.normal,
      this.isTextCenter = false,
      this.maxLine = 5});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLine,
      textAlign: (isTextCenter) ? TextAlign.center : TextAlign.left,
      style: TextStyle(
          color: txtColor, fontSize: fontSize, fontWeight: fontWeight),
    );
  }
}
