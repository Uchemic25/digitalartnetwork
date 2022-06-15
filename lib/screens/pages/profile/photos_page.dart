import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/profile_page_controller.dart';
import '../../../res/color_resource.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_text.dart';
import 'widgets/toogle_view_type.dart';

class PhotosPage extends StatefulWidget {
  PhotosPage({Key? key}) : super(key: key);

  @override
  State<PhotosPage> createState() => _PhotosPageState();
}

class _PhotosPageState extends State<PhotosPage> {
  var controller = Get.find<ProfileController>();

  bool isGridType = true;

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      children: [
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Obx(() {
              return ToogleViewType(
                  buttonState: controller.toggleView.value,
                  onPressed1: () {
                    controller.toggleViewStatus(value: true);
                    setState(() {
                      isGridType = true;
                    });
                  },
                  onPressed2: () {
                    controller.toggleViewStatus(value: false);
                    setState(() {
                      isGridType = false;
                    });
                  });
            }),
            const Spacer(),
            ButtonView(
              expanded: false,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              borderRadius: 6,
              borderColor: ColorResource.lightDivider,
              borderWidth: 0.3,
              color: Colors.blue,
              onPressed: () {},
              child: const CustomText(
                text: 'Create Challenge',
                color: Colors.white,
                size: 14,
                weight: FontWeight.w600,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
          child: Row(
            children: [
              singleTabLayout(index: 0, title: 'Photos'),
              singleTabLayout(index: 1, title: 'Albums'),
            ],
          ),
        ),
        SizedBox(
          height: 500,
          child: PageView(
            scrollDirection: Axis.horizontal,
            children: [
              buildViewContainer(),
              buildViewContainer(),
            ],
          ),
        ),
      ],
    );
  }

  buildViewContainer() {
    return GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 6,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: (isGridType) ? 3 : 2,
          mainAxisSpacing: 15,
          crossAxisSpacing: 8,
          mainAxisExtent: (isGridType) ? 100 : 160,
        ),
        itemBuilder: (_, index) {
          return Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: const DecorationImage(
                      image: AssetImage('assets/images/image2.jpeg'),
                      fit: BoxFit.fill),
                ),
              ),
              Positioned(
                top: (isGridType) ? 30 : 120,
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  padding: const EdgeInsets.only(left: 6, right: 6),
                  decoration: const BoxDecoration(
                      color: Colors.black87,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CustomText(
                        text: 'Stream Photos',
                        color: ColorResource.lightPrimary,
                        size: 14,
                        weight: FontWeight.w300,
                      ),
                      Row(
                        children: [
                          const CustomText(
                            text: '1 Photo',
                            color: ColorResource.lightPrimary,
                            size: 14,
                            weight: FontWeight.w300,
                          ),
                          const Spacer(),
                          Icon(
                            Icons.south_america_sharp,
                            color: ColorResource.selectedTextColor,
                            size: 18,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          );
        });
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
}
