import 'package:flutlab_projects_2024/common/widgets/brands/brand_showcase.dart';
import 'package:flutlab_projects_2024/common/widgets/layout/grid_layout.dart';
import 'package:flutlab_projects_2024/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:flutlab_projects_2024/common/widgets/text/section_heading.dart';
import 'package:flutlab_projects_2024/util/constants/image_strings.dart';
import 'package:flutlab_projects_2024/util/constants/sizes.dart';
import 'package:flutter/material.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              const TBrandShowcase(
                images: [TImage.pants, TImage.shoes, TImage.pants],
              ),
              const TBrandShowcase(
                images: [TImage.shoes, TImage.pants, TImage.shoes],
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              TSectionHeading(title: 'You might like', onPressed: () {}),
              const SizedBox(height: TSizes.spaceBtwItems),
              TGridLayout(
                itemCount: 4,
                itemBuilder: (_, index) => const TProductCardVertical(),
              )
            ],
          ),
        ),
      ],
    );
  }
}
