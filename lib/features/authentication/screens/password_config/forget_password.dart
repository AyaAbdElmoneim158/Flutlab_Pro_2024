import 'package:flutlab_projects_2024/features/authentication/screens/password_config/reset_password.dart';
import 'package:flutlab_projects_2024/util/constants/sizes.dart';
import 'package:flutlab_projects_2024/util/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //*Title, Subtitle  - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
            Text(
              TTexts.forgetPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: TSizes.spaceBtwItems),
            Text(
              TTexts.forgetPasswordSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(height: TSizes.spaceBtwSections * 2),

            //*Form - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
            TextFormField(
              decoration: const InputDecoration(
                label: Text(TTexts.email),
                prefixIcon: Icon(Iconsax.direct_right),
              ),
            ),
            const SizedBox(width: TSizes.spaceBtwInputFields),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.off(() => const ResetPassword()),
                child: const Text(TTexts.submit),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
