import 'package:digitalart/res/color_resource.dart';
import 'package:digitalart/screens/widgets/custom_button.dart';
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
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: ColorResource.cardColor,
          ),
          child: ListView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
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
              ),
              Obx(() {
                return IndexedStack(
                  index: controller.selectedTabIndex.value,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 20),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 30,
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              child: CustomText(
                                text: 'Your Profile is 62% complete',
                                color: ColorResource.lightPrimary,
                                size: 14,
                                weight: FontWeight.w300,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                child: LinearProgressIndicator(
                                    minHeight: 20,
                                    value: 0.62,
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                        Colors.blue),
                                    backgroundColor: Color(0xffD6D6D6),
                                    color: Colors.blue),
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            const Divider(),
                            const SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Row(children: [
                                const CustomText(
                                  text: 'Profile fields',
                                  color: ColorResource.lightPrimary,
                                  size: 16,
                                  weight: FontWeight.w300,
                                ),
                                const Spacer(),
                                ButtonView(
                                    expanded: false,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 18, vertical: 14),
                                    borderRadius: 6,
                                    borderColor: ColorResource.lightDivider,
                                    borderWidth: 0.3,
                                    color: ColorResource.cardColor,
                                    onPressed: () {},
                                    child: Row(children: [
                                      Icon(
                                        Icons.edit,
                                        color: ColorResource.selectedTextColor,
                                        size: 20,
                                      ),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      const CustomText(
                                        text: 'EDIT ALL',
                                        color: ColorResource.lightPrimary,
                                        size: 16,
                                        weight: FontWeight.w800,
                                      ),
                                    ]))
                              ]),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            profileDetails(
                                btnIcon1: Icons.south_america,
                                btnText1: 'Public',
                                btnText2: 'Edit',
                                onBtn1Pressed: () {},
                                onBtn2Pressed: () {},
                                title: 'First Name',
                                subTitle: 'Digital Art',
                                txtSubTitleColor: ColorResource.lightPrimary),
                            profileDetails(
                                btnIcon1: Icons.south_america,
                                btnText1: 'Public',
                                btnText2: 'Edit',
                                onBtn1Pressed: () {},
                                onBtn2Pressed: () {},
                                title: 'Last Name',
                                subTitle: 'Network',
                                txtSubTitleColor: ColorResource.lightPrimary),
                            profileDetails(
                                btnIcon1: Icons.south_america,
                                btnText1: 'Public',
                                btnText2: 'Edit',
                                onBtn1Pressed: () {},
                                onBtn2Pressed: () {},
                                title: 'Gender',
                                subTitle: 'Male',
                                txtSubTitleColor: ColorResource.lightPrimary),
                            profileDetails(
                                btnIcon1: Icons.south_america,
                                btnText1: 'Public',
                                btnText2: 'Edit',
                                onBtn1Pressed: () {},
                                onBtn2Pressed: () {},
                                title: 'Website',
                                required: '',
                                subTitle: 'Digital%20Art%20Art%20Network',
                                txtSubTitleColor:
                                    ColorResource.selectedTextColor),
                            profileDetails(
                                btnIcon1: Icons.south_america,
                                btnText1: 'Public',
                                btnText2: 'Edit',
                                onBtn1Pressed: () {},
                                onBtn2Pressed: () {},
                                required: '',
                                title: 'About Me',
                                subTitle:
                                    'Hey there! i\'m the founder of this here platform.\n Hope you have fun!',
                                txtSubTitleColor: ColorResource.lightPrimary),
                            profileDetails(
                                btnIcon1: Icons.south_america,
                                btnText1: 'SITE MEMBERS',
                                btnText2: 'Edit',
                                flex: 6,
                                onBtn1Pressed: () {},
                                onBtn2Pressed: () {},
                                required: '',
                                title: 'Instagram',
                                subTitle: 'What\'s your username?',
                                txtSubTitleColor: ColorResource.lightPrimary),
                            profileDetails(
                                btnIcon1: Icons.south_america,
                                btnText1: 'SITE MEMBERS',
                                btnText2: 'Edit',
                                onBtn1Pressed: () {},
                                onBtn2Pressed: () {},
                                required: '',
                                flex: 6,
                                title: 'Twitter',
                                subTitle: 'What\'s your username?',
                                txtSubTitleColor: ColorResource.lightPrimary),
                            profileDetails(
                                btnIcon1: Icons.south_america,
                                btnText1: 'Public',
                                btnText2: 'Edit',
                                onBtn1Pressed: () {},
                                onBtn2Pressed: () {},
                                required: '',
                                title: 'LInkedin',
                                subTitle: 'What\'s your username?',
                                txtSubTitleColor: ColorResource.lightPrimary),
                            Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  ButtonView(
                                      expanded: false,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 18, vertical: 14),
                                      borderRadius: 6,
                                      borderColor: ColorResource.lightDivider,
                                      borderWidth: 0.3,
                                      color: ColorResource.cardColor,
                                      onPressed: () {},
                                      child: Row(children: [
                                        Icon(
                                          Icons.edit,
                                          color:
                                              ColorResource.selectedTextColor,
                                          size: 20,
                                        ),
                                        const SizedBox(
                                          width: 8,
                                        ),
                                        const CustomText(
                                          text: 'EDIT ALL',
                                          color: ColorResource.lightPrimary,
                                          size: 16,
                                          weight: FontWeight.w800,
                                        ),
                                      ])),
                                ],
                              ),
                            )
                          ]),
                    )
                  ],
                );
              })
            ],
          ),
        ),
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

  profileDetails(
      {String? title,
      String? subTitle,
      Function? onBtn1Pressed,
      Function? onBtn2Pressed,
      Color? txtSubTitleColor = ColorResource.lightPrimary,
      String? btnText1,
      String? btnText2,
      IconData? btnIcon1,
      int? flex = 2,
      String? required = '*'}) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text.rich(TextSpan(children: [
                    TextSpan(
                        text: title!.toUpperCase(),
                        style: const TextStyle(
                            fontWeight: FontWeight.w300,
                            color: ColorResource.lightPrimary,
                            fontSize: 14)),
                    WidgetSpan(
                      child: Transform.translate(
                        offset: const Offset(2, -1),
                        child: Text(required!,
                            style: const TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.w400,
                                fontSize: 14)),
                      ),
                    ),
                  ])),
                  const Spacer(),
                  Expanded(
                    flex: flex!,
                    child: ButtonView(
                        expanded: false,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 8),
                        borderRadius: 6,
                        borderColor: ColorResource.lightDivider,
                        borderWidth: 0.3,
                        color: ColorResource.cardColor,
                        onPressed: () {},
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                btnIcon1,
                                color: ColorResource.selectedTextColor,
                                size: 20,
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              CustomText(
                                text: btnText1!,
                                color: ColorResource.lightPrimary,
                                size: 14,
                                weight: FontWeight.w300,
                              ),
                            ])),
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  Expanded(
                    flex: 2,
                    child: ButtonView(
                        expanded: false,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 8),
                        borderRadius: 6,
                        borderColor: ColorResource.lightDivider,
                        borderWidth: 0.3,
                        color: ColorResource.cardColor,
                        onPressed: () {},
                        child: CustomText(
                          text: btnText2!,
                          color: ColorResource.lightPrimary,
                          size: 16,
                          weight: FontWeight.w700,
                        )),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              CustomText(
                text: subTitle!,
                color: txtSubTitleColor,
                size: 14,
                weight: FontWeight.w400,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Divider(),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
