import 'package:digitalart/res/color_resource.dart';
import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  final String url;
  final String? placeHolder;
  final String hero;
  final double height;
  final double width;
  final double scale;
  final double radius;
  final double borderWidth;
  final BoxFit fit;
  final Color? borderColor;
  final EdgeInsetsGeometry? margin;
  final void Function()? onPressed;
  final bool isFood;
  const ProfileImage(this.url,
      {this.hero = 'profile image',
      this.height = 45,
      this.width = 45,
      this.scale = 1,
      this.radius = 15,
      this.borderWidth = 1.0,
      this.placeHolder,
      this.margin,
      this.onPressed,
      this.fit = BoxFit.cover,
      this.borderColor,
      Key? key,
      this.isFood = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
          padding: margin,
          decoration: BoxDecoration(
            color: Colors.transparent,
            shape: BoxShape.circle,
            border: Border.all(
                width: borderWidth,
                color: borderColor ?? Theme.of(context).cardColor),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100.0),
            child: CircleAvatar(
                radius: radius,
                backgroundColor: ColorResource.gradient1Color,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Hero(
                      tag: hero,
                      child: FadeInImage.assetNetwork(
                        image: url,
                        placeholder: 'assets/images/playstore.png',
                        fadeInDuration: const Duration(seconds: 1),
                        fadeInCurve: Curves.easeInCirc,
                        fit: fit,
                        height: height,
                        width: width,
                        placeholderScale: scale,
                        imageErrorBuilder: (context, error, stackTrace) =>
                            Image.asset('assets/images/playstore.png',
                                fit: BoxFit.contain,
                                height: height,
                                width: width),
                      )),
                )),
          )),
    );
  }
}
