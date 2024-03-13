import 'package:flutlab_projects_2024/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutlab_projects_2024/common/widgets/icons/t_circular_icon.dart';
import 'package:flutlab_projects_2024/common/widgets/images/t_rounded_image.dart';
import 'package:flutlab_projects_2024/common/widgets/text/brand_title_with_verified_icon.dart';
import 'package:flutlab_projects_2024/common/widgets/text/product_price_text.dart';
import 'package:flutlab_projects_2024/common/widgets/text/product_title_text.dart';
import 'package:flutlab_projects_2024/util/constants/colors.dart';
import 'package:flutlab_projects_2024/util/constants/image_strings.dart';
import 'package:flutlab_projects_2024/util/constants/sizes.dart';
import 'package:flutlab_projects_2024/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';


class TProductCardHorizontal extends StatelessWidget {
  const TProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Container(
      width: 310,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(TSizes.productImageRadius),
        color: dark ? TColors.darkerGrey : TColors.softGrey,
      ),
      child: Row(children: [
        ///* Image - - - - - - - - - - - - - - - - - - - -
        TRoundedContainer(
          height: 120,
          padding: const EdgeInsets.all(TSizes.sm),
          backgroundColor: dark ? TColors.dark : TColors.light,
          child: Stack(children: [
            const SizedBox(
              width: 120,
              height: 120,
              child: TRoundedImage(
                imageUrl: TImage.pants,
                applyImageRadius: true,
              ),
            ),
            Positioned(
              top: 12,
              child: TRoundedContainer(
                radius: TSizes.sm,
                backgroundColor: TColors.secondary.withOpacity(0.8),
                padding: const EdgeInsets.symmetric(
                    horizontal: TSizes.sm, vertical: TSizes.xs),
                child: Text('25%',
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge!
                        .apply(color: TColors.black)),
              ), // TRoundedContainer
            ),
            const Positioned(
              top: 0,
              right: 0,
              child: TCircularIcon(icon: Iconsax.heart5, color: Colors.red),
            ),
          ]),
        ),

        ///* Details - - - - - - - - - - - - - - - - - - - -
        SizedBox(
          width: 172,
          child: Padding(
            padding: const EdgeInsets.only(top: TSizes.sm, left: TSizes.sm),
            child: Column(children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TProductTitleText(
                    title: 'Green Nike Half Sleeves Shirt',
                    smallSize: true,
                  ),
                  SizedBox(height: TSizes.spaceBtwItems / 2),
                  TBrandTitleWithVerifiedIcon(title: 'Nike'),
                ],
              ),
              const Spacer(),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                const Flexible(
                  child: TProductPriceText(price: '256.0'),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: TColors.dark,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(TSizes.cardRadiusMd),
                      bottomRight: Radius.circular(TSizes.productImageRadius),
                    ),
                  ),
                  child: const SizedBox(
                    width: TSizes.iconLg * 1.2,
                    height: TSizes.iconLg * 1.2,
                    child: Center(
                      child: Icon(
                        Iconsax.add,
                        color: TColors.white,
                      ),
                    ),
                  ),
                ),
              ]),
            ]),
          ),
        )
      ]),
    );
  }
}
