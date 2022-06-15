import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/profile_page_controller.dart';
import '../challenges/challenges_page.dart';
import 'widgets/about_section.dart';
import 'widgets/banner_section.dart';
import 'widgets/follow_section.dart';
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
              children: [
                const StreamPage(),
                AboutSection(),
                FollowersSection(),
                ChallengesPage()
              ],
            );
          }),
        ],
      ),
    );
  }
}
