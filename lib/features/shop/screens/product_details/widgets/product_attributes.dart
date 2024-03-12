import 'package:flutlab_projects_2024/common/widgets/chips/choic_chip.dart';
import 'package:flutlab_projects_2024/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutlab_projects_2024/common/widgets/text/product_price_text.dart';
import 'package:flutlab_projects_2024/common/widgets/text/product_title_text.dart';
import 'package:flutlab_projects_2024/common/widgets/text/section_heading.dart';
import 'package:flutlab_projects_2024/util/constants/colors.dart';
import 'package:flutlab_projects_2024/util/constants/sizes.dart';
import 'package:flutlab_projects_2024/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TProductAttributes extends StatelessWidget {
  const TProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    var dark = THelperFunctions .isDarkMode(context);

    return Column(
      children: [
        ///* Selected attributes - - - - - - - - - - - -
        TRoundedContainer(
          padding: const EdgeInsets.all(TSizes.sm),
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Column(
            children: [
              Row(
                children: [
                  const TSectionHeading(
                    title: 'Variation',
                    showActionButton: false,
                  ),
                  const SizedBox(width: TSizes.spaceBtwItems),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const TProductTitleText(
                              title: 'Price',
                              smallSize: true,
                            ),
                            Text(
                              '\$25',
                              style:
                                  Theme.of(context).textTheme.titleSmall!.apply(
                                        decoration: TextDecoration.lineThrough,
                                      ),
                            ),
                            const SizedBox(width: TSizes.spaceBtwItems),
                            const TProductPriceText(price: '20'),
                          ],
                        ),
                        Row(
                          children: [
                            const TProductTitleText(
                              title: 'Stock',
                              smallSize: true,
                            ),
                            Text(
                              'In Stock',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ],
                        ),
                      ]),
                ],
              ),
              const TProductTitleText(
                title:
                    "This is the Description of the Product and it can be go up to max 4 lines.",
                smallSize: true,
                maxLines: 4,
              )
            ],
          ),
        ),
        const SizedBox(width: TSizes.spaceBtwItems),

        ///* Attributes - - - - - - - - - - - -
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: "Colors", showActionButton: false),
            const SizedBox(width: TSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip (
                  text: "Green",
                  selected: false,
                  onSelected: (val) {},
                ),
                TChoiceChip(
                  text: "Blue",
                  selected: false,
                  onSelected: (val) {},
                ),
                TChoiceChip(
                  text: "Yellow",
                  selected: false,
                  onSelected: (val) {},
                ),
              ],
            )
          ],
        ),
         Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: "Size", showActionButton: false),
            const SizedBox(width: TSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(
                  text: "EU 34",
                  selected: true,
                  onSelected: (val) {},
                ),
                TChoiceChip(
                  text: "EU 36",
                  selected: false,
                  onSelected: (val) {},
                ),
                TChoiceChip(
                  text: "EU 38",
                  selected: false,
                  onSelected: (val) {},
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
