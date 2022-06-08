import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controllers/profile_page_controller.dart';
import '../../../../res/color_resource.dart';
import '../../../widgets/custom_text.dart';

class FollowersSection extends StatefulWidget {
  FollowersSection({Key? key}) : super(key: key);

  @override
  State<FollowersSection> createState() => _FollowersSectionState();
}

class _FollowersSectionState extends State<FollowersSection> {
  var controller = Get.find<ProfileController>();

  int isMenuOPen = -1;
  List<int> selectedIndex = [];

  openMenu({index}) {
    setState(() {
      isMenuOPen = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            children: [
              singleTabLayout(index: 0, title: 'Followers'),
              singleTabLayout(index: 1, title: 'Following'),
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Obx(() {
          return IndexedStack(
            index: controller.selectedFollowersTabIndex.value,
            children: [
              ListView.builder(
                  shrinkWrap: true,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  itemBuilder: ((context, index) {
                    return followCard(
                        title: 'JetBrains',
                        image: 'assets/images/13.jpg',
                        index: index);
                  })),
              ListView.builder(
                  shrinkWrap: true,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  itemBuilder: ((context, index) {
                    return followCard(
                        title: 'Nitendo',
                        image: 'assets/images/13.jpg',
                        index: index);
                  }))
            ],
          );
        })
      ],
    );
  }

  singleTabLayout({required String title, required int index}) {
    return Expanded(
      child: Obx(() {
        return Stack(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: InkWell(
                onTap: () {
                  controller.selectedFollowersTabIndex.value = index;
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                  decoration: BoxDecoration(
                      color: controller.selectedFollowersTabIndex.value == index
                          ? ColorResource.cardColor
                          : Colors.white12,
                      borderRadius: index == 0
                          ? const BorderRadius.only(
                              topLeft: Radius.circular(6),
                              bottomLeft: Radius.circular(6))
                          : const BorderRadius.only(
                              topRight: Radius.circular(6),
                              bottomRight: Radius.circular(6))),
                  child: Center(
                    child: CustomText(
                      text: title,
                      color: controller.selectedFollowersTabIndex.value == index
                          ? ColorResource.lightPrimary
                          : ColorResource.grey,
                      size: 14,
                    ),
                  ),
                ),
              ),
            ),
            controller.selectedFollowersTabIndex.value == index
                ? Positioned(
                    bottom: -18,
                    right: 0,
                    left: 0,
                    child: Icon(
                      Icons.arrow_drop_down,
                      color: ColorResource.cardColor,
                      size: 62,
                    ))
                : Container()
          ],
        );
      }),
    );
  }

  followCard(
      {required String title, required String image, required int index}) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: Material(
            borderRadius: BorderRadius.circular(6),
            child: Container(
              height: 270,
              width: double.infinity,
              decoration: BoxDecoration(
                color: ColorResource.cardColor,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Column(
                children: [
                  Container(
                    height: 180,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(6),
                            topRight: Radius.circular(6)),
                        image: DecorationImage(
                            image: AssetImage(image), fit: BoxFit.cover)),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomText(
                    text: title,
                    color: ColorResource.lightPrimary,
                    size: 16,
                    weight: FontWeight.w500,
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 30,
          left: 0,
          right: 0,
          child: Container(
            height: 110,
            width: 110,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: ColorResource.primaryGradient,
                image: const DecorationImage(
                    image: AssetImage('assets/images/11.jpg'),
                    fit: BoxFit.contain)),
          ),
        ),
        Positioned(
          top: 80,
          right: 30,
          child: InkWell(
            onTap: () {
              setState(() {
                if (selectedIndex.contains(index)) {
                  selectedIndex.remove(index);
                } else {
                  selectedIndex.add(index);
                }
              });
            },
            child: Material(
              elevation: 5,
              color: ColorResource.cardColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(45)),
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: ColorResource.cardColor,
                ),
                child: const Icon(
                  Icons.more_horiz,
                  size: 32,
                  color: Colors.white12,
                ),
              ),
            ),
          ),
        ),
        (selectedIndex.contains(index))
            ? Positioned(
                top: 120,
                right: 0,
                child: Material(
                  elevation: 10,
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    height: 110,
                    width: Get.width * 0.5,
                    decoration: BoxDecoration(
                      color: ColorResource.cardColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                if (selectedIndex.contains(index)) {
                                  selectedIndex.remove(index);
                                } else {
                                  selectedIndex.add(index);
                                }
                              });
                            },
                            child: const Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.only(left: 12.0),
                                child: CustomText(
                                  text: 'Report User',
                                  color: ColorResource.lightPrimary,
                                  size: 14,
                                  weight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Divider(
                          height: 0,
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                if (selectedIndex.contains(index)) {
                                  selectedIndex.remove(index);
                                } else {
                                  selectedIndex.add(index);
                                }
                              });
                            },
                            child: const Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.only(left: 12.0),
                                child: CustomText(
                                  text: 'Ban',
                                  color: ColorResource.lightPrimary,
                                  size: 14,
                                  weight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            : Container(),
      ],
    );
  }
}
