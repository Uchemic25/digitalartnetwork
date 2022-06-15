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
              filled: false,
              fillColor: ColorResource.cardColor,
              isDense: true,
              value: controller.idEmailNotifyValue.value,
              items: controller.idEmailNotifyItems
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: CustomText(color: Colors.white54, text: value),
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
            text: 'All notifications',
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
            text:
                'E-mail notifications require an on-site notification enabled.',
            color: ColorResource.grey,
            size: 14,
            weight: FontWeight.w400,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              CustomText(
                text: 'On-Site',
                color: ColorResource.lightPrimary,
                size: 14,
                weight: FontWeight.w600,
              ),
              SizedBox(
                width: 20,
              ),
              CustomText(
                text: 'Email',
                color: ColorResource.lightPrimary,
                size: 14,
                weight: FontWeight.w600,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Divider(),
        const SizedBox(
          height: 40,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: CustomText(
            text: 'Posts and comments',
            color: ColorResource.lightPrimary,
            size: 14,
            weight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        postCommentOptions(
            checkState1: true,
            checkState2: true,
            title: 'Someone Commented on a post',
            subTitle: 'applies to all post you wrote or commented on',
            titleDistance: 5),
        postCommentOptions(
            checkState1: false,
            checkState2: false,
            title: 'Someone liked my Post',
            subTitle: '',
            titleDistance: 5),
        postCommentOptions(
            checkState1: true,
            checkState2: true,
            title: 'Someone replied to my Comment',
            subTitle: '',
            titleDistance: 5),
        postCommentOptions(
            checkState1: true,
            checkState2: true,
            title: 'Someone Shared my Post',
            subTitle: '',
            titleDistance: 5),
        const SizedBox(
          height: 20,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: CustomText(
            text: 'Profile',
            color: ColorResource.lightPrimary,
            size: 14,
            weight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        postCommentOptions(
            checkState1: true,
            checkState2: true,
            title: 'Someone wrote a post on my Profile',
            subTitle: '',
            titleDistance: 5),
        const SizedBox(
          height: 20,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: CustomText(
            text: 'Mentions',
            color: ColorResource.lightPrimary,
            size: 14,
            weight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        postCommentOptions(
            checkState1: true,
            checkState2: true,
            title: 'Someone Mentioned me in a post',
            subTitle: '',
            titleDistance: 5),
        postCommentOptions(
            checkState1: true,
            checkState2: true,
            title: 'Someone Mentioned me in a comment',
            subTitle: '',
            titleDistance: 5),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: CustomText(
            text: 'Messages',
            color: ColorResource.lightPrimary,
            size: 14,
            weight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        postCommentOptions(
            checkState1: true,
            checkState2: true,
            title: 'Someone sent me a new Message',
            subTitle: '',
            titleDistance: 5),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: CustomText(
            text: 'Challenge Subscriptions',
            color: ColorResource.lightPrimary,
            size: 14,
            weight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        postCommentOptions(
            checkState1: true,
            checkState2: true,
            title: 'Default Cube',
            subTitle: '',
            titleDistance: 5),
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

  postCommentOptions(
      {String? title,
      String? subTitle,
      bool? checkState1,
      bool? checkState2,
      double? titleDistance = 12}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 15, left: 15),
                child: CustomText(
                  text: title!,
                  color: ColorResource.lightPrimary,
                  size: 14,
                  weight: FontWeight.w500,
                ),
              ),
            ),
            const Spacer(),
            (checkState1!)
                ? const Icon(
                    Icons.check_box_rounded,
                    color: Colors.blue,
                    size: 32,
                  )
                : const Icon(
                    Icons.check_box_outline_blank_rounded,
                    color: Colors.white12,
                    size: 32,
                  ),
            const SizedBox(
              width: 20,
            ),
            (checkState1)
                ? const Icon(
                    Icons.check_box_rounded,
                    color: Colors.blue,
                    size: 32,
                  )
                : const Icon(
                    Icons.check_box_outline_blank_rounded,
                    color: Colors.white12,
                    size: 32,
                  ),
            const SizedBox(
              width: 15,
            ),
          ],
        ),
        SizedBox(
          height: titleDistance!,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: CustomText(
            text: subTitle,
            color: ColorResource.grey,
            size: 16,
            weight: FontWeight.w400,
          ),
        ),
        const SizedBox(
          height: 30,
        )
      ],
    );
  }
}
