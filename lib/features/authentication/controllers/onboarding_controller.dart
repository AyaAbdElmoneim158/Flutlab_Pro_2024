import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '/features/authentication/screens/login/login_screen.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  void updatePageIndicator(index) {
    currentPageIndex.value = index;
    debugPrint("currentPageIndex: $currentPageIndex");
  }

  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
    debugPrint("currentPageIndex: $currentPageIndex");
  }

  void nextPage() {
    if (currentPageIndex.value == 2) {
      final storage = GetStorage();
      storage.write("isFirstTime", false);
      Get.offAll(const LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
    debugPrint("currentPageIndex: $currentPageIndex");
  }

  void skipPage([num index = 2]) {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
    debugPrint("currentPageIndex: $currentPageIndex");
  }
}
