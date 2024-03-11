import 'package:flutlab_projects_2024/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutlab_projects_2024/common/widgets/images/t_circle_image.dart';
import 'package:flutlab_projects_2024/common/widgets/text/brand_title_with_verified_icon.dart';
import 'package:flutlab_projects_2024/util/constants/colors.dart';
import 'package:flutlab_projects_2024/util/constants/enums.dart';
import 'package:flutlab_projects_2024/util/constants/image_strings.dart';
import 'package:flutlab_projects_2024/util/constants/sizes.dart';
import 'package:flutlab_projects_2024/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';


class TBrandCard extends StatelessWidget {
  const TBrandCard({
    super.key,
    this.onTap,
    required this.showBorder,
  });
  final void Function()? onTap;
  final bool showBorder;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: TRoundedContainer(
        padding: const EdgeInsets.all(TSizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(children: [
          ///-- Icon
          Flexible(
            child: TCircularImage  (
              isNetworkImage: false,
              image: TImage.shoes,
              backgroundColor: Colors.transparent,
              overlayColor: THelperFunctions.isDarkMode(context)
                  ? TColors.white
                  : TColors.black,
            ),
          ),
          const SizedBox(width: TSizes.spaceBtwItems / 2),

          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TBrandTitleWithVerifiedIcon(
                  title: "Nike",
                  brandTextSize: TextSizes.large,
                ),
                Text(
                  "256 products",
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
