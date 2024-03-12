import 'package:flutlab_projects_2024/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutlab_projects_2024/common/widgets/images/t_circle_image.dart';
import 'package:flutlab_projects_2024/common/widgets/text/brand_title_with_verified_icon.dart';
import 'package:flutlab_projects_2024/common/widgets/text/product_price_text.dart';
import 'package:flutlab_projects_2024/common/widgets/text/product_title_text.dart';
import 'package:flutlab_projects_2024/util/constants/colors.dart';
import 'package:flutlab_projects_2024/util/constants/enums.dart';
import 'package:flutlab_projects_2024/util/constants/image_strings.dart';
import 'package:flutlab_projects_2024/util/constants/sizes.dart';
import 'package:flutlab_projects_2024/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    var dark = THelperFunctions.isDarkMode(context);

    return Column(
      children: [
        ///* Price & Sale - - - - - - - - - - - - - - - - -
        Row(
          children: [
            TRoundedContainer(
              radius: TSizes.sm,
              backgroundColor: TColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(
                horizontal: TSizes.sm,
                vertical: TSizes.xs,
              ),
              child: Text(
                "25%",
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: TColors.black),
              ),
            ),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text(
              "\$250",
              style: Theme.of(context).textTheme.titleSmall!.apply(
                    decoration: TextDecoration.lineThrough,
                  ),
            ),
            const SizedBox(width: TSizes.spaceBtwItems),
            const TProductPriceText(
              price: '175',
              isLarge: true,
            ),
          ],
        ),

        ///* Title - - - - - - - - - - - - - - - - -
        const TProductTitleText(title: "Green Nike Sports Shirt"),
        const SizedBox(width: TSizes.spaceBtwItems / 1.5),

        ///* Stock Status - - - - - - - - - - - - - - - - -
        Row(
          children: [
            const TProductTitleText(title: "Status"),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text("In Stock", style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
        const SizedBox(width: TSizes.spaceBtwItems / 1.5),

        ///* Brand - - - - - - - - - - - - - - - - -
        Row(
          children: [
            TCircularImage(
              image: TImage.shoes,
              width: 32,
              height: 32,
              overlayColor: dark ? TColors.white : TColors.black,
            ),
            const TBrandTitleWithVerifiedIcon(
              title: "Nike",
              brandTextSize: TextSizes.medium,
            )
          ],
        )
      ],
    );
  }
}
