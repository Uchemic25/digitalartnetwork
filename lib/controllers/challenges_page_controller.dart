import 'package:get/get.dart';

class ChallengesPageController extends GetxController {
  var toggleView = true.obs;
  var challengeFilterValue = 'Exact Phrase'.obs;

  toggleViewStatus({required bool value}) {
    toggleView.value = value;
  }

  final List<String> challengeFilterItems = [
    'Exact Phrase',
    'Fake time',
    'Best time',
    'Unknown time'
  ];
}
