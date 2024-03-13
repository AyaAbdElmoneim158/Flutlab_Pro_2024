import 'package:flutlab_projects_2024/common/widgets/images/t_rounded_image.dart';
import 'package:flutlab_projects_2024/common/widgets/products/product_cards/product_card_horizontal.dart';
import 'package:flutlab_projects_2024/common/widgets/text/section_heading.dart';
import 'package:flutlab_projects_2024/util/constants/image_strings.dart';
import 'package:flutlab_projects_2024/util/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutlab_projects_2024/common/widgets/appbar/appbar.dart';

class SubCategoryScreen extends StatelessWidget {
  const SubCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar (
        showBackArrow: true,
        title: Text('Sports shirts'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes .defaultSpace),
          child: Column(children: [
            const TRoundedImage(
              width: double.infinity,
              imageUrl: TImage.promoBanner1,
              applyImageRadius: true,
            ),
            const SizedBox(height: TSizes.spaceBtwSections),
            Column(children: [
              TSectionHeading(title: 'Sports shirts', onPressed: () {}),
              const SizedBox(height: TSizes.spaceBtwItems / 2),
            ]),
            SizedBox(
              height: 120,
              child: ListView.separated(
                  shrinkWrap: true,
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (_, __) =>
                      const SizedBox(width: TSizes.spaceBtwItems),
                  itemBuilder: (_, index) => const TProductCardHorizontal()),
            ),
            
          ]),
        ),
      ),
    );
  }
}
