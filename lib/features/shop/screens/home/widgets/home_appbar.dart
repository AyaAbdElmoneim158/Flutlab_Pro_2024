import 'package:flutlab_projects_2024/common/widgets/appbar/appbar.dart';
import 'package:flutlab_projects_2024/common/widgets/products_card/cart_menu_icon.dart';
import 'package:flutlab_projects_2024/util/constants/colors.dart';
import 'package:flutlab_projects_2024/util/constants/text_strings.dart';
import 'package:flutter/material.dart';

class THomeAppbar extends StatelessWidget {
  const THomeAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            TTexts.homeAppbarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .copyWith(color: TColors.grey),
          ),
          Text(
            TTexts.homeAppbarSubTitle,
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(color: TColors.white),
          ),
        ],
      ),
      actions: [
        TCardCounterIcon(onPress: () {}),
      ],
    );
  }
}
