import 'package:get/get.dart';

class ProfileController extends GetxController {
  var selectedIndex = 0.obs;
  var selectedTabIndex = 0.obs;
  var toogleOnlineStatus = false.obs;

  togleOnlineStatus() {
    toogleOnlineStatus.value = !toogleOnlineStatus.value;
  }
}
