import 'package:flutlab_projects_2024/common/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:flutlab_projects_2024/common/widgets/text/section_heading.dart';
import 'package:flutlab_projects_2024/util/constants/colors.dart';
import 'package:flutlab_projects_2024/util/constants/image_strings.dart';
import 'package:flutlab_projects_2024/util/constants/sizes.dart';
import 'package:flutter/material.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: TSizes.defaultSpace),
      child: Column(
        children: [
          const TSectionHeading(
            title: "Popular Categories",
            showActionButton: false,
            textColor: TColors.white,
          ),
          const SizedBox(height: TSizes.spaceBtwItems),
          SizedBox(
            height: 80,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 6,
              scrollDirection: Axis.horizontal,
              itemBuilder: (__, index) => TVerticalImageText(
                image: TImage.shoes,
                title: 'Shoes',
                onTap: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
