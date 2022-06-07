import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controllers/profile_page_controller.dart';
import '../../../../res/color_resource.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_text.dart';
import '../../../widgets/drop_down_view.dart';

class PrefrencesSection extends StatefulWidget {
  PrefrencesSection({Key? key}) : super(key: key);

  @override
  State<PrefrencesSection> createState() => _PrefrencesSectionState();
}

class _PrefrencesSectionState extends State<PrefrencesSection> {
  var controller = Get.find<ProfileController>();

  String? _idTypeDropdownValue;

  final List<String> _idTypeSpinnerItems = ['UTC+1', 'UTC+2', 'UTC+3', 'UTC+4'];

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const SizedBox(
        height: 40,
      ),
      const Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 15,
        ),
        child: CustomText(
          text: 'Profile',
          color: ColorResource.lightPrimary,
          size: 16,
          weight: FontWeight.w500,
        ),
      ),
      const SizedBox(
        height: 40,
      ),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: CustomText(
          text: 'Who can see my profile',
          color: ColorResource.lightPrimary,
          size: 14,
          weight: FontWeight.w300,
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ButtonView(
                expanded: false,
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                borderRadius: 6,
                borderColor: ColorResource.lightDivider,
                borderWidth: 0.3,
                color: ColorResource.cardColor,
                onPressed: () {},
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Icon(
                    Icons.south_america,
                    color: ColorResource.selectedTextColor,
                    size: 20,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  const CustomText(
                    text: 'PUBLIC',
                    color: ColorResource.lightPrimary,
                    size: 14,
                    weight: FontWeight.w600,
                  ),
                ])),
          ],
        ),
      ),
      const SizedBox(
        height: 30,
      ),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: CustomText(
          text: 'Who can post on my profile',
          color: ColorResource.lightPrimary,
          size: 14,
          weight: FontWeight.w300,
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ButtonView(
                expanded: false,
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                borderRadius: 6,
                borderColor: ColorResource.lightDivider,
                borderWidth: 0.3,
                color: ColorResource.cardColor,
                onPressed: () {},
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Icon(
                    Icons.lock,
                    color: ColorResource.selectedTextColor,
                    size: 20,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  const CustomText(
                    text: 'ONLY ME',
                    color: ColorResource.lightPrimary,
                    size: 14,
                    weight: FontWeight.w600,
                  ),
                ])),
          ],
        ),
      ),
      const SizedBox(
        height: 30,
      ),
      const Divider(),
      const SizedBox(
        height: 30,
      ),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: CustomText(
          text: 'Other',
          color: ColorResource.lightPrimary,
          size: 14,
          weight: FontWeight.w600,
        ),
      ),
      const SizedBox(
        height: 30,
      ),
      Obx(() {
        return InkWell(
          onTap: () {
            controller.togleOnlineStatus();
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              controller.toogleOnlineStatus.value
                  ? const Icon(
                      Icons.toggle_off,
                      color: ColorResource.grey,
                      size: 42,
                    )
                  : Icon(
                      Icons.toggle_on,
                      color: ColorResource.unSelectedTextColor,
                      size: 42,
                    ),
              const SizedBox(
                width: 12,
              ),
              const CustomText(
                text: 'Don\'t show my online status',
                color: ColorResource.lightPrimary,
                size: 16,
                weight: FontWeight.w400,
              ),
            ]),
          ),
        );
      }),
      const SizedBox(
        height: 30,
      ),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: CustomText(
          text: 'My timezone',
          color: ColorResource.lightPrimary,
          size: 14,
          weight: FontWeight.w400,
        ),
      ),
      DropdownView(
          borderColor: ColorResource.lightDivider,
          isDense: true,
          prefixIcon: Container(),
          value: _idTypeDropdownValue,
          items:
              _idTypeSpinnerItems.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          validator: null,
          hintText: 'UTC+1',
          onChanged: (String? value) =>
              setState(() => _idTypeDropdownValue = value!)),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: CustomText(
          text: 'Disable all activity date and time in your own timezone',
          color: ColorResource.lightPrimary,
          size: 14,
          weight: FontWeight.w300,
        ),
      ),
      const SizedBox(
        height: 30,
      ),
      const Divider(),
      const SizedBox(
        height: 30,
      ),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: CustomText(
          text: 'Messages and Chat',
          color: ColorResource.lightPrimary,
          size: 14,
          weight: FontWeight.w400,
        ),
      ),
      const SizedBox(
        height: 30,
      ),
      Obx(() {
        return InkWell(
          onTap: () {
            controller.togleOnlineStatus();
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              controller.toogleOnlineStatus.value
                  ? const Icon(
                      Icons.toggle_off,
                      color: ColorResource.grey,
                      size: 42,
                    )
                  : Icon(
                      Icons.toggle_on,
                      color: ColorResource.unSelectedTextColor,
                      size: 42,
                    ),
              const SizedBox(
                width: 12,
              ),
              const CustomText(
                text:
                    'Disable Chat (Messages will still work if you disable Chat)',
                color: ColorResource.lightPrimary,
                size: 16,
                weight: FontWeight.w400,
              ),
            ]),
          ),
        );
      }),
      const SizedBox(
        height: 30,
      ),
      const SizedBox(
        height: 30,
      ),
      Obx(() {
        return InkWell(
          onTap: () {
            controller.togleOnlineStatus();
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              controller.toogleOnlineStatus.value
                  ? const Icon(
                      Icons.toggle_off,
                      color: ColorResource.grey,
                      size: 42,
                    )
                  : Icon(
                      Icons.toggle_on,
                      color: ColorResource.unSelectedTextColor,
                      size: 42,
                    ),
              const SizedBox(
                width: 12,
              ),
              const CustomText(
                text: 'Open minimized chat window for new message',
                color: ColorResource.lightPrimary,
                size: 16,
                weight: FontWeight.w400,
              ),
            ]),
          ),
        );
      }),
    ]);
  }
}
