import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/onboarding/onboarding_controller.dart';
import '/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import '/features/authentication/screens/onboarding/widgets/onboarding_next_btn.dart';
import '/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import '/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import '/util/constants/image_strings.dart';
import '/util/constants/text_strings.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(children: [
        //Pages - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
        PageView(
          controller: controller.pageController,
          onPageChanged: controller.updatePageIndicator,
          children: const [
            OnboardingPage(
              image: TImage.onboarding1,
              title: TTexts.onboardingTitle1,
              subTitle: TTexts.onboardingSubTitle1,
            ),
            OnboardingPage(
              image: TImage.onboarding2,
              title: TTexts.onboardingTitle2,
              subTitle: TTexts.onboardingSubTitle2,
            ),
            OnboardingPage(
              image: TImage.onboarding3,
              title: TTexts.onboardingTitle3,
              subTitle: TTexts.onboardingSubTitle3,
            ),
          ],
        ),
        //*SkipBtn - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - --
        const OnboardingSkip(),
        //*smoothPageIndicator - - - - - - - - - - - - - - - - - - - - - - - - -
        const OnBoardingDotNavigation(),
        //*CircularBtn - - - - - - - - - - - - - - - - - - - - - - - - - -  - - -
        const OnBoardingNextBtn(),
      ]),
    );
  }
}
