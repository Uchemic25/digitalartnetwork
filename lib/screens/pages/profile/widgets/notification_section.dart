import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controllers/profile_page_controller.dart';
import '../../../../res/color_resource.dart';
import '../../../widgets/custom_text.dart';
import '../../../widgets/drop_down_view.dart';

class NotificationPage extends StatelessWidget {
  NotificationPage({Key? key}) : super(key: key);

  var controller = Get.find<ProfileController>();

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        const SizedBox(
          height: 30,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: CustomText(
            text: 'E-mail notification intensity',
            color: ColorResource.lightPrimary,
            size: 14,
            weight: FontWeight.w600,
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
              fillColor: ColorResource.cardColor,
              isDense: true,
              prefixIcon: Container(),
              value: controller.idEmailNotifyValue.value,
              items: controller.idEmailNotifyItems
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              validator: null,
              hintText: 'Time Format',
              onChanged: (String? value) =>
                  controller.idEmailNotifyValue.value = value!),
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
            text: 'Shortcuts',
            color: ColorResource.lightPrimary,
            size: 14,
            weight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: CustomText(
            text: 'Quickly manage all your prefrences at once',
            color: ColorResource.lightPrimary,
            size: 14,
            weight: FontWeight.w400,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Material(
            color: Colors.white12,
            borderRadius: BorderRadius.circular(6),
            child: Row(
              children: [
                tabbedContent(item: 'Enable all'),
                tabbedContent(item: 'Disable all'),
                tabbedContent(item: 'Disable e-mails'),
                tabbedContent(item: 'Reset to default'),
              ],
            ),
          ),
        )
      ],
    );
  }

  tabbedContent({String? item}) {
    return Expanded(
      child: InkWell(
        onTap: () {},
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
          child: CustomText(
            text: item!,
            color: ColorResource.lightPrimary,
            size: 14,
            weight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
