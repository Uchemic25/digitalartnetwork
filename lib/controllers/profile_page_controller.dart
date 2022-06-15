import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  var selectedIndex = 0.obs;
  var selectedTabIndex = 0.obs;
  var selectedFollowersTabIndex = 0.obs;
  var selectedTabbedIndex = 0.obs;

  var toogleOnlineStatus = false.obs;
  var idEmailNotifyValue = 'Real time'.obs;
  var pageViewController = PageController(
    initialPage: 0,
  ).obs;

  var toggleView = true.obs;

  toggleViewStatus({required bool value}) {
    toggleView.value = value;
  }

  var followPageViewController = PageController(
    initialPage: 0,
  ).obs;

  void onSelected(int index) {
    pageViewController.value.animateToPage(index,
        duration: const Duration(milliseconds: 500), curve: Curves.ease);
  }

  void onSelectFollowersTab(int index) {
    pageViewController.value.animateToPage(index,
        duration: const Duration(milliseconds: 500), curve: Curves.ease);
  }

  final List<String> idEmailNotifyItems = [
    'Real time',
    'Fake time',
    'Best time',
    'Unknown time'
  ];

  togleOnlineStatus() {
    toogleOnlineStatus.value = !toogleOnlineStatus.value;
  }
}
