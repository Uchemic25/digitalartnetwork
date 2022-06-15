import 'package:flutter/material.dart';
import '../../../../res/color_resource.dart';

class ToogleViewType extends StatelessWidget {
  final bool buttonState;
  final Function() onPressed1;
  final Function() onPressed2;

  ToogleViewType({
    Key? key,
    required this.buttonState,
    required this.onPressed1,
    required this.onPressed2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: onPressed1,
          child: Card(
              margin: const EdgeInsets.all(0),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                topLeft: Radius.circular(6),
                bottomLeft: Radius.circular(6),
              )),
              color: ColorResource.cardColor,
              child: Container(
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(6),
                    bottomLeft: Radius.circular(6),
                  ),
                  color: buttonState ? ColorResource.cardColor : Colors.white12,
                ),
                child: Center(
                    child: Icon(
                  Icons.grid_view_rounded,
                  size: 20,
                  color: ColorResource.selectedTextColor,
                )),
              )),
        ),
        GestureDetector(
          onTap: onPressed2,
          child: Card(
              margin: const EdgeInsets.only(left: 2),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                topRight: Radius.circular(6),
                bottomRight: Radius.circular(6),
              )),
              color: ColorResource.cardColor,
              child: Container(
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(6),
                    bottomRight: Radius.circular(6),
                  ),
                  color:
                      !buttonState ? ColorResource.cardColor : Colors.white12,
                ),
                child: Center(
                    child: Icon(
                  Icons.list_alt,
                  size: 22,
                  color: ColorResource.selectedTextColor,
                )),
              )),
        ),
      ],
    );
    ;
  }
}
