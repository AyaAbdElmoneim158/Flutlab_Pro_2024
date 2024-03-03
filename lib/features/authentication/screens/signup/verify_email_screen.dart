import 'package:flutlab_projects_2024/common/widgets/success_screen/success_screen.dart';
import 'package:flutlab_projects_2024/features/authentication/screens/login/login_screen.dart';
import 'package:flutlab_projects_2024/util/constants/image_strings.dart';
import 'package:flutlab_projects_2024/util/constants/sizes.dart';
import 'package:flutlab_projects_2024/util/constants/text_strings.dart';
import 'package:flutlab_projects_2024/util/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/common/styles/spacing_styles.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => const LoginScreen()),
            icon: const Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              //*Image - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
              Image(
                width: THelperFunctions.screenWidth() * 0.6,
                image: const AssetImage(TImage.emailVerify),
              ),
              const SizedBox(height: TSizes.spaceBtwSections),

              //*Title & SubTitle - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
              Text(
                TTexts.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              Text(
                "Support@google.com",
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              Text(
                TTexts.confirmEmailSupTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),

              //*Btns - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(
                    () => SuccessScreen(
                      image: TImage.emailVerify,
                      title: TTexts.yourAccountCreatedTitle,
                      subTitle: TTexts.yourAccountCreatedSubtitle,
                      onPress: () => Get.to(() => const LoginScreen()),
                    ),
                  ),
                  child: const Text(TTexts.tContinue),
                ),
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {
                    // Get.to(()=> const SignupScreen());
                  },
                  child: const Text(TTexts.resendEmail),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
