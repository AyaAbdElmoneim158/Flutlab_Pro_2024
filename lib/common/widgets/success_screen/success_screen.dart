import 'package:flutlab_projects_2024/common/styles/spacing_styles.dart';
import 'package:flutlab_projects_2024/util/constants/sizes.dart';
import 'package:flutlab_projects_2024/util/constants/text_strings.dart';
import 'package:flutlab_projects_2024/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.onPress,
  });

  final String image, title, subTitle;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: TSpacingStyle.paddingWithAppBarHeight,
        child: Column(
          children: [
            //*Image - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
            Image(
              width: THelperFunctions.screenWidth() * 0.6,
              image: AssetImage(image),
            ),
            const SizedBox(height: TSizes.spaceBtwSections),

            //*Title & SubTitle - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
            Text(
              title,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: TSizes.spaceBtwItems),
            Text(
              subTitle,
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: TSizes.spaceBtwSections),
            //*Btn - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: onPress,
                child: const Text(TTexts.tContinue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
