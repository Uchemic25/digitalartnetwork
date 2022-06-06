import 'package:digitalart/res/color_resource.dart';
import 'package:digitalart/screens/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/profile_page_controller.dart';
import '../../../core/models/user_model.dart';
import '../../../res/util.dart';
import '../../widgets/single_card_section.dart';
import 'widgets/about_section.dart';
import 'widgets/banner_section.dart';
import 'widgets/profile_details.dart';
import 'widgets/stream_section.dart';

class UserProfilePage extends StatelessWidget {
  UserProfilePage({Key? key}) : super(key: key);

  var controller = Get.find<ProfileController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(horizontal: 0),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 9.0, vertical: 12),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              child: ListView(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                children: const [
                  BannerSection(),
                  ProfileDetails(),
                ],
              ),
            ),
          ),
          Obx(() {
            return IndexedStack(
              index: controller.selectedIndex.value,
              children: [const StreamPage(), AboutPage()],
            );
          }),
        ],
      ),
    );
  }
}
