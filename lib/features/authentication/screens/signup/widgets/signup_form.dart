import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '/features/authentication/screens/signup/verify_email_screen.dart';
import '/features/authentication/screens/signup/widgets/terms_cnd_condition_checkbox.dart';
import '/util/constants/sizes.dart';
import '/util/constants/text_strings.dart';

class TSignupForm extends StatelessWidget {
  const TSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          //* FirstName + LastName  - - - - - - - - - - - - - - -
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    label: Text(TTexts.firstName),
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(width: TSizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    label: Text(TTexts.lastName),
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(width: TSizes.spaceBtwInputFields),
          //*UserName  - - - - - - - - - - - - - - -
          TextFormField(
            decoration: const InputDecoration(
              label: Text(TTexts.username),
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          const SizedBox(width: TSizes.spaceBtwInputFields),
          //*Email  - - - - - - - - - - - - - - -
          TextFormField(
            decoration: const InputDecoration(
              label: Text(TTexts.email),
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(width: TSizes.spaceBtwInputFields),

          //*Phone  - - - - - - - - - - - - - - -
          TextFormField(
            decoration: const InputDecoration(
              label: Text(TTexts.phoneNo),
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          const SizedBox(width: TSizes.spaceBtwInputFields),

          //*Password  - - - - - - - - - - - - - - -
          TextFormField(
            decoration: const InputDecoration(
              label: Text(TTexts.password),
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(width: TSizes.spaceBtwInputFields),
          //*Terms&Condition Checkbox  - - - - - - - - - - - - - - -
          const TTermsAndConditionCheckbox(), // Row
          const SizedBox(width: TSizes.spaceBtwSections),

          //*Signup Button  - - - - - - - - - - - - - - -

          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(() => const VerifyEmailScreen(email: '')),
              child: const Text(TTexts.createAccount),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwSections),
        ],
      ),
    );
  }
}
