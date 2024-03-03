import 'package:flutlab_projects_2024/features/authentication/screens/login/login_screen.dart';
import 'package:flutlab_projects_2024/util/constants/image_strings.dart';
import 'package:flutlab_projects_2024/util/constants/sizes.dart';
import 'package:flutlab_projects_2024/util/constants/text_strings.dart';
import 'package:flutlab_projects_2024/util/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //*Image - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
            Image(
              width: THelperFunctions.screenWidth() * 0.6,
              image: const AssetImage(TImage.emailVerify),
            ),
            const SizedBox(height: TSizes.spaceBtwSections),

            //*Title & SubTitle - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
            Text(
              TTexts.changeYourPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: TSizes.spaceBtwItems),
            Text(
              TTexts.changeYourPasswordSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: TSizes.spaceBtwSections),
            //*Btns - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.off(() => const LoginScreen()),
                child: const Text(TTexts.done),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: () {},
                child: const Text(TTexts.resendEmail),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
