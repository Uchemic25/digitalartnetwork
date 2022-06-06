import 'package:digitalart/res/color_resource.dart';
import 'package:flutter/material.dart';

import '../../../widgets/profile_image.dart';

class BannerSection extends StatelessWidget {
  const BannerSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 240,
          width: double.infinity,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 200,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8)),
                    image: DecorationImage(
                        image: AssetImage('assets/images/home_banner.jpg'),
                        fit: BoxFit.fill)),
              )
            ],
          ),
        ),
        Positioned(
            top: 30,
            right: 30,
            child: Image.asset('assets/images/img_logo.PNG')),
        Positioned(
            top: 120,
            left: 0,
            right: 0,
            child: Center(
              child: Stack(
                children: [
                  const ProfileImage('',
                      margin: EdgeInsets.all(3),
                      height: 104,
                      width: 104,
                      borderWidth: 5,
                      radius: 50),
                  Positioned(
                    bottom: 10,
                    left: 0,
                    child: Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            color: ColorResource.cardColor,
                            shape: BoxShape.circle),
                        child: Align(
                          alignment: Alignment.center,
                          child: IconButton(
                              icon: Icon(
                                Icons.enhance_photo_translate,
                                size: 18,
                                color: ColorResource.selectedTextColor,
                              ),
                              onPressed: () {}),
                        )),
                  )
                ],
              ),
            )),
      ],
    );
  }
}
