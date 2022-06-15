import 'package:flutter/material.dart';

import '../../../controllers/challenges_page_controller.dart';
import '../../../res/color_resource.dart';
import '../../../res/util.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_text.dart';
import 'package:get/get.dart';

import '../../widgets/drop_down_view.dart';
import 'widgets/challenge_card.dart';

class ChallengesPage extends StatelessWidget {
  ChallengesPage({Key? key}) : super(key: key);

  var controller = Get.find<ChallengesPageController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(horizontal: 15),
            children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              displayType(),
              const Spacer(),
              ButtonView(
                expanded: false,
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
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
            padding: const EdgeInsets.symmetric(horizontal: 9.0, vertical: 0),
            child: Util.registrationInputField(
              label: '',
              padding: 1,
              hint: '  Start typing to search...',
              suffixIcon: const Icon(
                Icons.settings,
                color: Colors.white60,
              ),
              required: '',
              color: ColorResource.cardColor,
              borderColor: Colors.transparent,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: DropdownView(
                borderColor: ColorResource.lightDivider,
                borderRadius: 6,
                filled: false,
                fillColor: ColorResource.cardColor,
                isDense: true,
                value: controller.challengeFilterValue.value,
                items: controller.challengeFilterItems
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: CustomText(color: Colors.white54, text: value),
                  );
                }).toList(),
                validator: null,
                hintText: '',
                onChanged: (String? value) =>
                    controller.challengeFilterValue.value = value!),
          ),
          const SizedBox(
            height: 30,
          ),
          const ChallengeCard()
        ]));
  }

  displayType() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            controller.toggleViewStatus(value: true);
          },
          child: Card(
            margin: const EdgeInsets.all(0),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
              topLeft: Radius.circular(6),
              bottomLeft: Radius.circular(6),
            )),
            color: ColorResource.cardColor,
            child: Obx(() {
              return Container(
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(6),
                    bottomLeft: Radius.circular(6),
                  ),
                  color: controller.toggleView.value
                      ? ColorResource.cardColor
                      : Colors.white12,
                ),
                child: Center(
                    child: Icon(
                  Icons.grid_view_rounded,
                  size: 20,
                  color: ColorResource.selectedTextColor,
                )),
              );
            }),
          ),
        ),
        GestureDetector(
          onTap: () {
            controller.toggleViewStatus(value: false);
          },
          child: Card(
            margin: const EdgeInsets.only(left: 2),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
              topRight: Radius.circular(6),
              bottomRight: Radius.circular(6),
            )),
            color: ColorResource.cardColor,
            child: Obx(() {
              return Container(
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(6),
                    bottomRight: Radius.circular(6),
                  ),
                  color: !controller.toggleView.value
                      ? ColorResource.cardColor
                      : Colors.white12,
                ),
                child: Center(
                    child: Icon(
                  Icons.list_alt,
                  size: 22,
                  color: ColorResource.selectedTextColor,
                )),
              );
            }),
          ),
        ),
      ],
    );
  }
}
