import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controllers/profile_page_controller.dart';
import '../../../../res/color_resource.dart';
import '../../../widgets/custom_text.dart';

class ProfileDetails extends StatefulWidget {
  const ProfileDetails({Key? key}) : super(key: key);

  @override
  State<ProfileDetails> createState() => _ProfileDetailsState();
}

class _ProfileDetailsState extends State<ProfileDetails> {
  var controller = Get.find<ProfileController>();

  _isSelected({index}) {
    setState(() {
      controller.selectedIndex.value = index;
      controller.selectedIndex.refresh();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      const SizedBox(
        height: 40,
      ),
      const CustomText(
        text: 'Digital Art Network',
        color: ColorResource.lightPrimary,
        size: 18,
        weight: FontWeight.w500,
      ),
      const SizedBox(
        height: 15,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.people,
            color: ColorResource.grey,
            size: 18,
          ),
          const SizedBox(
            width: 10,
          ),
          Text.rich(TextSpan(children: [
            WidgetSpan(
              child: Transform.translate(
                offset: const Offset(0, 0),
                child: const Text('6 ',
                    style: TextStyle(
                        color: ColorResource.lightPrimary,
                        fontWeight: FontWeight.w800,
                        fontSize: 14)),
              ),
            ),
            const TextSpan(
                text: 'Followers',
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    color: ColorResource.lightPrimary,
                    fontSize: 14))
          ])),
          const SizedBox(
            width: 12,
          ),
          Text.rich(TextSpan(children: [
            WidgetSpan(
              child: Transform.translate(
                offset: const Offset(0, 0),
                child: const Text('17 ',
                    style: TextStyle(
                        color: ColorResource.lightPrimary,
                        fontWeight: FontWeight.w800,
                        fontSize: 14)),
              ),
            ),
            const TextSpan(
                text: 'Following',
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    color: ColorResource.lightPrimary,
                    fontSize: 14))
          ])),
        ],
      ),
      const SizedBox(
        height: 15,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.visibility,
            color: ColorResource.grey,
            size: 18,
          ),
          const SizedBox(
            width: 10,
          ),
          Text.rich(TextSpan(children: [
            WidgetSpan(
              child: Transform.translate(
                offset: const Offset(0, 0),
                child: const Text('168 ',
                    style: TextStyle(
                        color: ColorResource.lightPrimary,
                        fontWeight: FontWeight.w800,
                        fontSize: 14)),
              ),
            ),
            const TextSpan(
                text: 'Profile views',
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    color: ColorResource.lightPrimary,
                    fontSize: 14))
          ])),
        ],
      ),
      const SizedBox(
        height: 15,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(
            Icons.share,
            color: ColorResource.grey,
            size: 18,
          ),
          SizedBox(
            width: 10,
          ),
          CustomText(
            text: 'Share',
            color: ColorResource.lightPrimary,
            size: 14,
            weight: FontWeight.w500,
          ),
        ],
      ),
      const SizedBox(
        height: 40,
      ),
      Container(
        height: 30,
        margin: const EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border.all(color: Colors.white24, width: 0.1)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.edit,
              color: ColorResource.selectedTextColor,
              size: 18,
            ),
            const SizedBox(
              width: 10,
            ),
            CustomText(
              text: 'Update Info',
              color: ColorResource.selectedTextColor,
              size: 14,
              weight: FontWeight.w500,
            ),
          ],
        ),
      ),
      const SizedBox(
        height: 30,
      ),
      SizedBox(
        height: 80,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            profileMenu(icon: Icons.home, title: 'Stream', index: 0),
            profileMenu(icon: Icons.person_pin, title: 'About', index: 1),
            profileMenu(
                icon: Icons.follow_the_signs_sharp,
                title: 'Followers',
                index: 2),
            profileMenu(
                icon: Icons.people_alt_sharp, title: 'Challenges', index: 3),
            profileMenu(icon: Icons.photo, title: 'Photos', index: 4),
          ],
        ),
      )
    ]);
  }

  profileMenu(
      {required IconData icon, required String title, required int index}) {
    return InkWell(
      onTap: () {
        _isSelected(index: index);
        controller.onSelected(index);
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          (controller.selectedIndex.value == index)
              ? Align(
                  alignment: Alignment.topCenter,
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 2500),
                    width: 35,
                    height: 3,
                    color: ColorResource.unSelectedTextColor,
                  ),
                )
              : Container(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
            decoration: const BoxDecoration(
                border: Border(
                    top: BorderSide(color: Colors.white12, width: 0.1),
                    left: BorderSide(color: Colors.white12, width: 0.05),
                    right: BorderSide(color: Colors.white12, width: 0.05))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  color: ColorResource.selectedTextColor,
                  size: 18,
                ),
                const SizedBox(
                  height: 5,
                ),
                CustomText(
                  text: title,
                  color: (controller.selectedIndex.value == index)
                      ? ColorResource.lightPrimary
                      : ColorResource.grey,
                  size: 14,
                  weight: (controller.selectedIndex.value == index)
                      ? FontWeight.w600
                      : FontWeight.w300,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
