import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '/features/authentication/controllers/signup/signup_controller.dart';
import '/features/authentication/screens/signup/widgets/terms_cnd_condition_checkbox.dart';
import '/util/constants/sizes.dart';
import '/util/constants/text_strings.dart';
import '/util/validators/validator.dart';

class TSignupForm extends StatelessWidget {
  const TSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    return Form(
      key: controller.signupFormKey,
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
                  controller: controller.firstName,
                  validator: (value) =>
                      TValidator.validateEmptyText("First name", value),
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
                  controller: controller.lastName,
                  validator: (value) =>
                      TValidator.validateEmptyText("Last name", value),
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
            controller: controller.userName,
            validator: (value) =>
                TValidator.validateEmptyText("Username", value),
          ),
          const SizedBox(width: TSizes.spaceBtwInputFields),
          //*Email  - - - - - - - - - - - - - - -
          TextFormField(
            decoration: const InputDecoration(
              label: Text(TTexts.email),
              prefixIcon: Icon(Iconsax.direct),
            ),
            controller: controller.email,
            validator: (value) => TValidator.validateEmail(value),
          ),
          const SizedBox(width: TSizes.spaceBtwInputFields),

          //*Phone  - - - - - - - - - - - - - - -
          TextFormField(
            decoration: const InputDecoration(
              label: Text(TTexts.phoneNo),
              prefixIcon: Icon(Iconsax.call),
            ),
            controller: controller.phoneNumber,
            validator: (value) => TValidator.validatePhoneNumber(value),
          ),
          const SizedBox(width: TSizes.spaceBtwInputFields),

          //*Password  - - - - - - - - - - - - - - -
          Obx(
            () => TextFormField(
              decoration: InputDecoration(
                label: const Text(TTexts.password),
                prefixIcon: const Icon(Iconsax.password_check),
                suffixIcon: IconButton(
                  onPressed: () => controller.hidePassword.value =
                      !controller.hidePassword.value,
                  icon: Icon(
                    controller.hidePassword.value
                        ? Iconsax.eye_slash
                        : Iconsax.eye,
                  ),
                ),
              ),
              controller: controller.password,
              validator: (value) => TValidator.validatePassword(value),
              obscureText: controller.hidePassword.value,
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
              onPressed: () => controller.signup(),
              child: const Text(TTexts.createAccount),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwSections),
        ],
      ),
    );
  }
}
