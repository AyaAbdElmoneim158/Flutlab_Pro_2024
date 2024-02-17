import 'package:flutter/material.dart';
import '/features/authentication/controllers/onboarding_controller.dart';
import '/util/constants/colors.dart';
import '/util/constants/sizes.dart';
import '/util/device/device_utility.dart';
import '/util/helpers/helper_functions.dart';

class OnboardingSkip extends StatelessWidget {
  const OnboardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    final controller = OnBoardingController.instance;

    return Positioned(
      top: TDeviceUtils.getAppBarHeight(),
      right: TSizes.defaultSpace,
      child: TextButton(
        onPressed: controller.skipPage,
        child: Text(
          "Skip",
          style: TextStyle(color: dark ? TColors.primary : Colors.black),
        ),
      ),
    );
  }
}
