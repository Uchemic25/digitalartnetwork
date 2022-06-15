import 'package:flutter/material.dart';

import '../../../controllers/challenges_page_controller.dart';
import '../../../res/color_resource.dart';
import '../../../res/util.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_text.dart';
import 'package:get/get.dart';

import '../../widgets/drop_down_view.dart';
import '../profile/widgets/toogle_view_type.dart';
import 'widgets/challenge_card.dart';

class ChallengesPage extends StatelessWidget {
  ChallengesPage({Key? key}) : super(key: key);

  var controller = Get.find<ChallengesPageController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: SingleChildScrollView(
        child: Column(children: [
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
                  },
                  onPressed2: () {
                    controller.toggleViewStatus(value: false);
                  },
                );
              }),
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
          Util.registrationInputField(
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
          const SizedBox(
            height: 20,
          ),
          DropdownView(
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
          const SizedBox(
            height: 30,
          ),
          const ChallengeCard()
        ]),
      ),
    );
  }
}
