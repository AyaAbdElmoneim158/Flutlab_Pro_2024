import 'package:flutter/material.dart';
import '/features/authentication/controllers/onboarding_controller.dart';
import '/util/constants/colors.dart';
import '/util/constants/sizes.dart';
import '/util/device/device_utility.dart';
import '/util/helpers/helper_functions.dart';

class OnBoardingNextBtn extends StatelessWidget {
  const OnBoardingNextBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    final controller = OnBoardingController.instance;

    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      right: TSizes.defaultSpace,
      child: ElevatedButton(
        onPressed: controller.nextPage,
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: dark ? TColors.primary : Colors.black,
        ),
        child: const Icon(Icons.keyboard_arrow_right),
      ),
    );
  }
}
