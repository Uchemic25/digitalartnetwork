import 'package:get/get.dart';

class ProfileController extends GetxController {
  var selectedIndex = 0.obs;
  var selectedTabIndex = 0.obs;
  var toogleOnlineStatus = false.obs;
  var idEmailNotifyValue = 'Real time'.obs;

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
