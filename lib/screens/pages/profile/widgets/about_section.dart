import 'package:digitalart/res/color_resource.dart';
import 'package:digitalart/screens/widgets/custom_text.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controllers/profile_page_controller.dart';

class AboutPage extends StatelessWidget {
  AboutPage({Key? key}) : super(key: key);

  var controller = Get.find<ProfileController>();

  _isSelected({index}) {
    controller.selectedTabIndex.value = index;
    controller.selectedTabIndex.refresh();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      children: [
        Container(
          height: 300,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: ColorResource.cardColor,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: singleTab(
                        icon: Icons.account_circle_sharp,
                        title: 'About',
                        index: 0,
                        isFirst: true),
                  ),
                  Expanded(
                    child: singleTab(
                        icon: Icons.settings, title: 'Prefrences', index: 1),
                  ),
                  Expanded(
                    child: singleTab(
                        icon: Icons.notifications,
                        title: 'Notifications',
                        index: 2),
                  ),
                  Expanded(
                    child: singleTab(
                        icon: Icons.person,
                        title: 'Account',
                        index: 3,
                        isLast: true),
                  )
                ],
              )
            ],
          ),
        ),
        Obx(() {
          return IndexedStack(
            index: controller.selectedTabIndex.value,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                child: Column(children: const [
                  CustomText(
                    text: 'Your Profile is 62% complete',
                    color: ColorResource.lightPrimary,
                    size: 14,
                    weight: FontWeight.w300,
                  ),
                ]),
              )
            ],
          );
        })
      ],
    );
  }

  singleTab(
      {IconData? icon,
      String? title,
      int? index,
      isFirst = false,
      isLast = false}) {
    final _border = BorderRadius.only(
        topLeft: (isFirst == true)
            ? const Radius.circular(6)
            : const Radius.circular(0),
        topRight: (isLast == true)
            ? const Radius.circular(6)
            : const Radius.circular(0));
    return InkWell(
      onTap: () {
        _isSelected(index: index);
      },
      child: Obx(() {
        return Material(
          borderRadius: _border,
          elevation: 2,
          color: ColorResource.cardColor,
          child: Container(
            height: 60,
            margin: const EdgeInsets.only(top: 1),
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            decoration: BoxDecoration(
              color: controller.selectedTabIndex.value == index
                  ? Colors.transparent
                  : Colors.white12,
              borderRadius: _border,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 2,
                  child: Icon(
                    icon,
                    color: controller.selectedTabIndex.value == index
                        ? ColorResource.lightPrimary
                        : ColorResource.grey,
                    size: 14,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Expanded(
                  flex: 6,
                  child: CustomText(
                    text: title,
                    color: controller.selectedTabIndex.value == index
                        ? ColorResource.lightPrimary
                        : ColorResource.grey,
                    size: 12,
                    weight: FontWeight.w200,
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
