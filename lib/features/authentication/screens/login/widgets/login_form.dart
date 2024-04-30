import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../util/validators/validator.dart';
import '../../../controllers/login/login_controller.dart';
import '/features/authentication/screens/password_config/forget_password.dart';
import '/features/authentication/screens/signup/signup_screen.dart';
import '/util/constants/sizes.dart';
import '/util/constants/text_strings.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());

    return Form(
      key: controller.signInFormKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
        child: Column(
          children: [
            //* Email - - - - - - - - - - - - - - -
            TextFormField(
              controller: controller.email,
              decoration: const InputDecoration(
                label: Text(TTexts.email),
                prefixIcon: Icon(Iconsax.direct_right),
              ),
              validator: (value) => TValidator.validateEmail(value),
            ),
            const SizedBox(height: TSizes.spaceBtwInputFields),
            //* Password - - - - - - - - - - - - - - -
            Obx(
              () => TextFormField(
                obscureText: controller.hidePassword.value,
                controller: controller.password,
                decoration: InputDecoration(
                  label: const Text(TTexts.password),
                  prefixIcon: const Icon(Iconsax.password_check),
                  suffixIcon: IconButton(
                    onPressed: () => controller.hidePassword.value =
                        !controller.hidePassword.value,
                    icon: Icon(controller.hidePassword.value
                        ? Iconsax.eye_slash
                        : Iconsax.eye),
                  ),
                ),
                validator: (value) => TValidator.validatePassword(value),
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwInputFields / 2),
            //* Remember & ForgetPassword - - - - - - - - - - - - - - -
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Obx(
                      () => Checkbox(
                        value: controller.rememberMe.value,
                        onChanged: (value) => controller.rememberMe.value =
                            !controller.rememberMe.value,
                      ),
                    ),
                    const Text(TTexts.rememberMe),
                  ],
                ),
                TextButton(
                  onPressed: () => Get.to(() => const ForgetPassword()),
                  child: const Text(TTexts.forgetPassword),
                ),
              ],
            ),
            const SizedBox(height: TSizes.spaceBtwSections),
            //* Btns - - - - - - - - - - - - - - -
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => controller
                    .loginWithEmailAndPassword, //=> Get.to(() => const NavigationMenu()),
                child: const Text(TTexts.signIn),
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwItems),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.to(() => const SignupScreen()),
                child: const Text(TTexts.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
