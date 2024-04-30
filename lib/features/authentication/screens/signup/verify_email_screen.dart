import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../data/repositories/authentication/authentication_repository.dart';
import '../../controllers/signup/verify_email_controller.dart';
import '/common/styles/spacing_styles.dart';
import '/util/constants/image_strings.dart';
import '/util/constants/sizes.dart';
import '/util/constants/text_strings.dart';
import '/util/helpers/helper_functions.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({
    super.key,
    this.email,
  });
  final String? email;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(VerifyEmailController());

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => AuthenticationRepository.instance.logout(),
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
                image: const AssetImage(TImage
                    .emailVerify), //! 9V...7m (https://www.youtube.com/watch?v=b1i1hwWIf0M&list=PL5jb9EteFAOAusKTSuJ5eRl1BapQmMDT6&index=9)
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
                email ?? '',
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
                  onPressed: controller.checkEmailVerificationStatus(),
                  child: const Text(TTexts.tContinue),
                ),
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {
                    controller.sendEmailVerification();
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
