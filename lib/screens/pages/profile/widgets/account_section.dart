import 'package:flutter/material.dart';

import '../../../../res/color_resource.dart';
import '../../../../res/util.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_text.dart';
import '../../../widgets/custom_widget.dart';

class AccountSection extends StatelessWidget {
  const AccountSection({Key? key}) : super(key: key);

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
            text: 'Your Account',
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
            text: 'Current Password',
            color: ColorResource.lightPrimary,
            size: 14,
            weight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: InputPasswordField(
            radius: 4,
            controller: TextEditingController(text: 'Password'),
            onChanged: () {},
            height: 50,
            bgColor: ColorResource.cardColor,
            borderColor: Colors.white12,
            borderWidth: 0.2,
            elevation: 0,
            textHint: 'password',
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: CustomText(
            text:
                'Enter your current password to change your account information',
            color: Colors.white38,
            size: 14,
            weight: FontWeight.w300,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 0),
          child: Util.registrationInputField(
              label: 'User Name',
              hint: '',
              maxLine: 1,
              controller: TextEditingController(text: 'Digital Art Network'),
              borderColor: Colors.transparent,
              color: Colors.white12),
        ),
        const SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 0),
          child: Util.registrationInputField(
              label: 'Email',
              hint: '',
              maxLine: 1,
              controller:
                  TextEditingController(text: 'digitalartnetwork@gmail.com'),
              borderColor: Colors.transparent,
              color: Colors.white12),
        ),
        const SizedBox(
          height: 30,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: CustomText(
            text: 'Change Password',
            color: ColorResource.lightPrimary,
            size: 14,
            weight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: InputPasswordField(
            radius: 4,
            controller: TextEditingController(text: 'Password'),
            onChanged: () {},
            height: 50,
            bgColor: ColorResource.cardColor,
            borderColor: Colors.white12,
            borderWidth: 0.2,
            elevation: 0,
            textHint: 'password',
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: CustomText(
            text: 'if you change your password, you will be signed out',
            color: Colors.white38,
            size: 14,
            weight: FontWeight.w300,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: ButtonView(
              expanded: false,
              borderRadius: 6,
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 14),
              color: ColorResource.selectedTextColor,
              onPressed: () {},
              child: const CustomText(
                text: 'Save',
                color: ColorResource.lightPrimary,
                size: 16,
                weight: FontWeight.w600,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        const Divider(),
        const SizedBox(
          height: 30,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: CustomText(
            text: 'Export Your Community Data',
            color: ColorResource.lightPrimary,
            size: 14,
            weight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: CustomText(
            maxLines: 30,
            text:
                'You can download a complete copy of all the data you have shared in this Community. This includes posts, messages,photos,videos,comments.',
            color: Colors.white38,
            size: 14,
            weight: FontWeight.w300,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: ButtonView(
              expanded: false,
              borderRadius: 6,
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 14),
              color: ColorResource.selectedTextColor,
              onPressed: () {},
              child: const CustomText(
                text: 'EXPORT MY COMMUNITY DATA',
                color: ColorResource.lightPrimary,
                size: 16,
                weight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
