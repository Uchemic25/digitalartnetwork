import 'package:digitalart/res/color_resource.dart';
import 'package:flutter/material.dart';

class DropdownView<T> extends StatelessWidget {
  final T? value;
  final List<DropdownMenuItem<T>>? items;
  final PopupMenuItemBuilder<T>? itemBuilder;
  final ValueChanged<T?> onChanged;
  final bool isExpanded;
  final FormFieldValidator<T>? validator;
  final double borderRadius;
  final double? borderWidth;
  final Color? borderColor;
  final Color? fillColor;
  final bool isDense;
  final bool filled;
  final String? labelText;
  final String? hintText;
  final Widget? icon;
  final Widget? prefixIcon;

  const DropdownView(
      {Key? key,
      required this.value,
      required this.items,
      required this.onChanged,
      this.isExpanded = true,
      this.borderRadius = 8.0,
      this.borderColor,
      this.fillColor,
      this.isDense = false,
      this.labelText,
      this.hintText,
      this.filled = true,
      this.borderWidth = 1.5,
      this.icon = const Icon(Icons.keyboard_arrow_down),
      this.prefixIcon,
      this.validator,
      this.itemBuilder});

  OutlineInputBorder _border(BuildContext context) => OutlineInputBorder(
      borderSide: BorderSide(
          width: borderWidth!,
          color: borderColor ?? Theme.of(context).shadowColor.withOpacity(0.1),
          style: BorderStyle.solid),
      borderRadius: BorderRadius.all(Radius.circular(borderRadius)));

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
          colorScheme: ColorScheme.light(
              primary: Theme.of(context).colorScheme.secondary)),
      child: DropdownButtonFormField<T>(
          isExpanded: isExpanded,
          value: value,
          icon: icon,
          iconSize: 24,
          dropdownColor: ColorResource.grey,
          elevation: 5,
          decoration: InputDecoration(
              border: _border(context),
              enabledBorder: _border(context),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(borderRadius),
                  borderSide: BorderSide(
                      width: borderWidth!,
                      color: Theme.of(context).colorScheme.secondary,
                      style: BorderStyle.solid)),
              focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(borderRadius),
                  borderSide: BorderSide(
                      width: borderWidth!,
                      color: borderColor ??
                          Theme.of(context).colorScheme.secondary,
                      style: BorderStyle.solid)),
              errorBorder: _border(context),
              disabledBorder: _border(context),
              hintText: hintText,
              hintStyle: const TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  fontSize: 14),
              labelText: labelText,
              filled: filled,
              isDense: isDense,
              prefixIcon: prefixIcon,
              fillColor:
                  fillColor ?? Theme.of(context).shadowColor.withOpacity(0.05)),
          style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Theme.of(context).textTheme.bodyText1!.color,
              fontSize: 14),
          validator: validator,
          onChanged: onChanged,
          items: items),
    );
  }
}
