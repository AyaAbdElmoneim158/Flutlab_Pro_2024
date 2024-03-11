import 'package:flutlab_projects_2024/common/widgets/text/brand_title_text.dart';
import 'package:flutlab_projects_2024/util/constants/colors.dart';
import 'package:flutlab_projects_2024/util/constants/enums.dart';
import 'package:flutlab_projects_2024/util/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TBrandTitleWithVerifiedIcon extends StatelessWidget {
  const TBrandTitleWithVerifiedIcon({
    super.key,
    this.textColor,
    this.maxLines = 1,
    required this.title,
    this.iconColor = TColors.primary,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
  });
  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisSize: MainAxisSize.min, children: [
      Flexible(
        child: TBrandTitleText(
          title: title,
          color: textColor,
          maxLines: maxLines,
          textAlign: textAlign,
          brandTextSize: brandTextSize,
        ), // TBrandTitleText
      ), // Flexible
      const SizedBox(width: TSizes.xs),
      Icon(Iconsax.verify5, color: iconColor, size: TSizes.iconXs),
    ]);
  }
}
