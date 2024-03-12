import 'package:flutlab_projects_2024/common/widgets/icons/t_circular_icon.dart';
import 'package:flutlab_projects_2024/util/constants/colors.dart';
import 'package:flutlab_projects_2024/util/constants/sizes.dart';
import 'package:flutlab_projects_2024/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TBottomAddToCard extends StatelessWidget {
  const TBottomAddToCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var dark = THelperFunctions .isDarkMode(context);

    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: TSizes.defaultSpace, vertical: TSizes.defaultSpace / 2),
      decoration: BoxDecoration(
        color: dark ? TColors.darkerGrey : TColors.light,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(TSizes.cardRadiusLg),
          topRight: Radius.circular(TSizes.cardRadiusLg),
        ),
      ),
      child: Row(
        children: [
          const TCircularIcon(
            icon: Iconsax.minus,
            backgroundColor: TColors.darkGrey,
            width: 40,
            height: 40,
            color: TColors.white,
          ),
          const SizedBox(width: TSizes.spaceBtwItems),
          Text('2', style: Theme.of(context).textTheme.titleSmall),
          const SizedBox(width: TSizes.spaceBtwItems),
          const TCircularIcon(
            icon: Iconsax.add,
            backgroundColor: TColors.darkGrey,
            width: 40,
            height: 40,
            color: TColors.white,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(TSizes.sm),
              backgroundColor: TColors.black,
              side: const BorderSide(color: TColors.black),
            ),
            child: const Text('Add to Cart'),
          )
        ],
      ),
    );
  }
}
/*

// BorderRadius. only, BoxDecoration
child: Row(
children: [
Row(
children: [
],
 // TCircularIcon
 // TCircularIcon
) // Row
 */