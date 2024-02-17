import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '/common/widgets/login_signup/form_divider.dart';
import '/common/widgets/login_signup/social_buttons.dart';
import '/features/authentication/screens/signup/widgets/signup_form.dart';
import '/features/authentication/screens/signup/widgets/signup_title.dart';
import '/util/constants/sizes.dart';
import '/util/constants/text_strings.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //*Title - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
              const TSignupTitle(),
              const SizedBox(height: TSizes.spaceBtwSections),
              //*Form - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
              const TSignupForm(),
              //* Divider - - - - - - - - - - - - - - -
              TFormDivider(dividerText: TTexts.orSignUpWith.capitalize!),
              const SizedBox(height: TSizes.spaceBtwSections),
              //* Footer - - - - - - - - - - - - - - -
              const TSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
